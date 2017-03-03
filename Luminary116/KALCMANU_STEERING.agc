### FILE="Main.annotation"
## Copyright:   Public domain.
## Filename:    KALCMANU_STEERING.agc
## Purpose:     A section of Luminary revision 116.
##              It is part of the source code for the Lunar Module's (LM) 
##              Apollo Guidance Computer (AGC) for Apollo 12.
##              This file is intended to be a faithful transcription, except
##              that the code format has been changed to conform to the
##              requirements of the yaYUL assembler rather than the
##              original YUL assembler.
## Reference:   pp. 366-370
## Assembler:   yaYUL
## Contact:     Ron Burkey <info@sandroid.org>.
## Website:     www.ibiblio.org/apollo/index.html
## Mod history: 2017-01-22 MAS  Created from Luminary 99.

## NOTE: Page numbers below have not yet been updated to reflect Luminary 116.

## Page 365
# GENERATION OF STEERING COMMANDS FOR DIGITAL AUTOPILOT FREE FALL MANEUVERS

# NEW COMMANDS WILL BE GENERATED EVERY ONE SECOND DURING THE MANEUVER

                EBANK=          TTEMP                           

NEWDELHI        TC              BANKCALL                        # CHECK FOR AUTO STABILIZATION
                CADR            ISITAUTO                        # ONLY
                CCS             A                               
                TCF             NOGO            -2              
NEWANGL         TC              INTPRET                         
                AXC,1           AXC,2                           
                                MIS                             # COMPUTE THE NEW MATRIX FROM S/C TO
                                KEL                             # STABLE MEMBER AXES
                CALL                                            
                                MXM3                            
                VLOAD           STADR                           
                STOVL           MIS             +12D            # CALCULATE NEW DESIRED CDU ANGLES
                STADR                                           
                STOVL           MIS             +6D             
                STADR                                           
                STORE           MIS                             
                AXC,1           CALL                            
                                MIS                             
                                DCMTOCDU                        # PICK UP THE NEW CDU ANGLES FROM MATRIX
                RTB                                             
                                V1STO2S                         
                STORE           NCDU                            # NEW CDU ANGLES
                BONCLR          EXIT                            
                                CALCMAN2                        
                                MANUSTAT                        # TO START MANEUVER
                CAF             TWO                             #       +0 OTHERWISE
INCRDCDU        TS              SPNDX                           
                INDEX           SPNDX                           
                CA              BCDU                            # INITIAL CDU ANGLES
                EXTEND                                          # OR PREVIOUS DESIRED CDU ANGLES
                INDEX           SPNDX                           
                MSU             NCDU                            
                EXTEND                                          

## The following 2 lines seem to have no purpose at all.
## I am removing them because they only serve to confuse
## the assembler by getting in between EXTEND and MP.<br>&mdash;RSB 2009
## <pre>
##		SETLOC	KALCMON1
##		BANK
## </pre>		

                MP              DT/TAU                          
                CCS             A                               # CONVERT TO 2S COMPLEMENT
                AD              ONE                             
                TCF             +2                              
                COM                                             
                INDEX           SPNDX                           
                TS              DELDCDU                         # ANGLE INCREMENTS TO BE ADDED TO
                INDEX           SPNDX                           # CDUXD, CDUYD, CDUZD EVERY TENTH SECOND
## Page 366
                CA              NCDU                            # BY LEM DAP
                INDEX           SPNDX                           
                XCH             BCDU                            
                INDEX           SPNDX                           
                TS              CDUXD                           
                CCS             SPNDX                           
                TCF             INCRDCDU                        # LOOP FOR THREE AXES

                RELINT                                          

# COMPARE PRESENT TIME WITH TIME TO TERMINATE MANEUVER

TMANUCHK        TC              TIMECHK                         
                TCF             CONTMANU                        
                CAF             ONE                             
MANUSTAL        INHINT                                          # END MAJOR PART OF MANEUVER WITHIN 1 SEC
                TC              WAITLIST                        # UNDER WAITLIST CALL TO MANUSTOP
                EBANK=          TTEMP                           
                2CADR           MANUSTOP                        

                RELINT                                          
                TCF             ENDOFJOB                        

TIMECHK         EXTEND                                          
                DCS             TIME2                           
                DXCH            TTEMP                           
                EXTEND                                          
                DCA             TM                              
                DAS             TTEMP                           
                CCS             TTEMP                           
                TC              Q                               
                TCF             +2                              
                TCF             2NDRETRN                        
                CCS             TTEMP           +1              
                TC              Q                               
                TCF             MANUOFF                         
                COM                                             
MANUOFF         AD              ONESEK          +1              
                EXTEND                                          
                BZMF            2NDRETRN                        
                INCR            Q                               
2NDRETRN        INCR            Q                               
                TC              Q                               

DT/TAU          DEC             .1                              

MANUSTAT        EXIT                                            # INITIALIZATION ROUTINE
                EXTEND                                          # FOR AUTOMATIC MANEUVERS
                DCA             TIME2                           
## Page 367
                DAS             TM                              # TM+TO         MANEUVER COMPLETION TIME
                EXTEND                                          
                DCS             ONESEK                          
                DAS             TM                              # (TM+TO)-1
                INHINT                                          
                CAF             TWO                             
RATEBIAS        TS              KSPNDX                          
                DOUBLE                                          
                TS              KDPNDX                          
                INDEX           A                               
                CA              BRATE                           
                INDEX           KSPNDX                          # STORE MANEUVER RATE IN
                TS              OMEGAPD                         # OMEGAPD, OMEGAQD, OMEGARD
                EXTEND                                          
                BZMF            +2                              # COMPUTE ATTITUDE ERROR
                COM                                             # OFFSET = (WX)ABS(WX)/2AJX
                EXTEND                                          # WHERE AJX= 2-JET ACCELERATION
                MP              BIASCALE                        # = -1/16
                EXTEND                                          
                INDEX           KDPNDX                          
                MP              BRATE                           
                EXTEND                                          
                INDEX           KSPNDX                          
                DV              1JACC                           # = AJX         $ 90 DEG/SEC-SEC
                INDEX           KSPNDX                          
                TS              DELPEROR                        #               $ 180 DEG
                CCS             KSPNDX                          
                TCF             RATEBIAS                        

                CA              TIME1                           
                AD              ONESEK          +1              
                XCH             NEXTIME                         
                TCF             INCRDCDU        -1              

ONESEK          DEC             0                               
                DEC             100                             

BIASCALE        OCT             75777                           # = -1/16

CONTMANU        CS              TIME1                           # RESET FOR NEXT DCDU UPDATE
                AD              NEXTIME                         
                CCS             A                               
                AD              ONE                             
                TCF             MANUCALL                        
                AD              NEGMAX                          
                COM                                             
MANUCALL        INHINT                                          # CALL FOR NEXT UPDATE VIA WAITLIST
                TC              WAITLIST                        
                EBANK=          TTEMP                           
                2CADR           UPDTCALL                        
## Page 368
                CAF             ONESEK          +1              # INCREMENT TIME FOR NEXT UPDATE
                ADS             NEXTIME                         
                TCF             ENDOFJOB                        

UPDTCALL        CAF             PRIO26                          # SATELLITE PROGRAM TO CALL FOR UPDATE
                TC              FINDVAC                         # OF STEERING COMMANDS
                EBANK=          TTEMP                           
                2CADR           NEWDELHI                        

                TC              TASKOVER                        

## Page 369
# ROUTINE FOR TERMINATING AUTOMATIC MANEUVERS

MANUSTOP        CAF             ZERO                            # ZERO MANEUVER RATES
                TS              DELDCDU2                        
                TS              OMEGARD                         
                TS              DELREROR                        
                TS              DELDCDU1                        
                TS              OMEGAQD                         
                TS              DELQEROR                        
                CA              CPSI                            # SET DESIRED GIMBAL ANGLES TO
                TS              CDUZD                           # DESIRED FINAL GIMBAL ANGLES
                CA              CTHETA                          
                TS              CDUYD                           
ENDROLL         CA              CPHI                            # NO FINAL YAW
                TS              CDUXD                           
                CAF             ZERO                            
                TS              OMEGAPD                         # I.E. MANEUVER DID NOT GO THRU
                TS              DELDCDU                         # GIMBAL LOCK ORIGINALLY
                TS              DELPEROR                        
GOODMANU        CA              ATTPRIO                         # RESTORE USERS PRIO
                TS              NEWPRIO                         

                CA              ZERO                            # ZERO ATTCADR
                DXCH            ATTCADR                         

                TC              SPVAC                           # RETURN TO USER

                TC              TASKOVER                        

