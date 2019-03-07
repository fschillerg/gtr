Lbl θ
ClrHome
Menu("WAEHLEN SIE","KOMBINATORIK",A,"BINOMIALVERT.",B,"NORMALVERT.",C,"HYPGEOM. VTG.",Z,"SIG.-TEST",ST,"ENDE",E)
Lbl A
Menu("KOMBINATORIK","PERMUTATION",F,"KOMB.O.WD.",G,"KOMB.M.WD.",H,"VAR.O.WD.",I,"VAR.M.WD.",J,"ZURUECK",θ)
Lbl F
ClrHome
Disp "ANZAHL"
Input "N=",N
N!→N
Disp "PERMUTATIONEN:",N
Return
19
Lbl G
ClrHome
Disp "GESAMT"
Input "N=",N
Disp "AUSWAHL"
Input "K=",K
N nCr K→N
Disp "KOMB.O.WD.:",N
Return
Goto θ
Lbl H
ClrHome
Disp "GESAMT"
Input "N=",N
Disp "AUSWAHL"
Input "K=",K
(N+K-1)→N
N nCr K→N
Disp "KOMB.M.WD.:",N
Return
Goto θ
Lbl I
ClrHome
Disp "GESAMT"
Input "N=",N
Disp "AUSWAHL"
Input "K=",K
N nPr K→N
Disp "VAR.O.WD.:",N
Return
Goto θ
Lbl J
ClrHome
Disp "GESAMT"
Input "N=",N
Disp "AUSWAHL"
Input "K=",K
N^K→N
Disp "VAR.M.WD.:",N
Return
Goto θ
Lbl B
Menu("BINOMIALVERT.","GENAU K",K,"HOECHTENS K",L,"MEHR ALS K",M,"MINDESTENS K=1",N,"VON K BIS L",O,"KENNGROESSEN",P,"VERSUCHSANZAHL",D)
Lbl K
ClrHome
Input "N=",N
Input "P=",P
Input "K=",K
binompdf(N,P,K)→B
Disp "WKTT",B
Return
Goto θ
Lbl L
ClrHome
Input "N=",N
Input "P=",P
Input "K=",K
binomcdf(N,P,K)→B
Disp "WKT:",B
Return
Goto θ
Lbl M
ClrHome
Input "N=",N
Input "P=",P
Input "K=",K
1-binomcdf(N,P,K)→B
Disp "WKT:",B
Return
Goto θ
Lbl N
ClrHome
Input "N=",N
Input "P=",P
1-binompdf(N,P,0)→B
Disp "WKT:",B
Return
Goto θ
Lbl O
ClrHome
Input "N=",N
Input "P=",P
Input "UNTERER WERT K=",K
Input "OBERER WERT L=",L
binomcdf(N,P,L)-binomcdf(N,P,K-1)→B
Disp "WKT:",B
Return
Goto θ
Lbl P
ClrHome
Input "N=",N
Input "P=",P
N*P→E
N*P*(1-P)→V
√(V)→S
Disp "ERWARTUNGSWERT:",E
Disp "VARIANZ:",V
Disp "S-ABWEICHUNG",S
Return
Goto θ
Lbl D
ClrHome
Input "SICHERHEIT B:",B
Input "EINZELWKT. P:",P
log(1-B)/log(1-P)→N
Disp "VERSUCHSZAHL:",N
Return
Goto θ
Lbl C
Menu("NORMALVERT.","MOIVRE-LA PL.",Q,"STETIGE N-VTLG",R,"ZURUECK",θ)
Lbl Q
Menu("FALLAUSWAHL","GENAU K",S,"HOECHSTENS K",T,"MEHR ALS K",U,"ZWISCHEN K+L",V)
Lbl S
ClrHome
Input "N=",N
Input "P=",P
Input "K=",K
normalpdf(K,N*P,√(N*P*(1-P)))→B
Disp "WKT:",B
Return
Goto θ
Lbl T
ClrHome
Input "N=",N
Input "P=",P
Input "K=",K
normalcdf(0,K+.5,N*P,√(N*P*(1-P)))→B
Disp "WKT:",B
Return
Goto θ
Lbl U
ClrHome
Input "N=",N
Input "P=",P
Input "K=",K
normalcdf(K-.5,N+.5,N*P,√(N*P*(1-P→B
Disp "WKT:",B
Return
Goto θ
Lbl V
ClrHome
Input "N=",N
Input "P=",P
Input "UNTERER WERT K=",K
Input "OBERER WERT L=",L
normalcdf(K-.5,L+.5,N*P,√(N*P*(1-P→B
Disp "WKT:",B
Return
Goto θ
Lbl R
ClrHome
Input "UNTERER WERT:",K
Input "OBERER WERT:",L
Input "ERWARTUNG:",M
Input "S-ABWEICHUNG:",N
normalcdf(K,L,M,N)→B
ClrHome
Disp "WKT:",B
Return
Goto θ
Lbl Z
Input "N= ",A
Input "n= ",B
Input "M= ",C
Input "k= ",D
A-C→E
B-D→F
(C!)/(D!*((C-D)!→G
(E!)/(F!*((E-F)!→H
(A!)/(B!*((A-B)!→I
(G*H)/I→J
Disp ""
Disp "ERGEBNIS=",JDec
Return
Goto Z
Lbl ST
Input "n=",N
Input "p=",P
Input "a=",A
NP→E
(√(E(1-P→S
Lbl S1
Menu("SIGNIFIKANZTEST ","LINKS",SL,"RECHTS",SR,"ZWEISEITIG",SZ,"ENDE",E)
Lbl SZ
ClrHome
Disp "Wait…
2+iPart(invNorm(A/2,E,S→U
While binomcdf(N,P,U-1)>(A/2
U-1→U
End
2+iPart(invNorm(1-A/2,E,S→O
While binomcdf(N,P,O-1)>(1-A/2
O-1→O
End
Output(1,1,"A= [
Output(1,5,U
Output(1,10,";
Output(1,11,O
Output(1,16,"]
Output(3,1,"AB=[0
Output(3,10,";
Output(3,11,U-1
Output(3,16,"]
Output(4,4,"[
Output(4,5,O+1
Output(4,10,";
Output(4,11,N
Output(4,16,"]
Output(6,1,"P(AB)=
Output(6,7,"…
Output(6,7,round(1-(binomcdf(N,P,O)-binomcdf(N,P,U-1)),4
Pause 
Goto S1
Lbl SL
iPart(invNorm(A,E,S))+3→U
While binomcdf(N,P,U-1)>A
U-1→U
End
ClrHome
Output(1,1,"A= [
Output(1,5,U
Output(1,10,";
Output(1,11,N)
Output(1,16,"]
Output(3,1,"AB=[0
Output(3,10,";
Output(3,11,U-1)
Output(3,16,"]
Output(5,1,"P(AB)=
Output(5,7,"…
Output(5,7,round(binomcdf(N,P,U-1),4))
Pause 
Goto S1
Lbl SR
iPart(invNorm(1-A,E,S))-2→O
While (1-binomcdf(N,P,O))>(A)
O+1→O
End
ClrHome
Output(1,1,"A=[  0  ;")
Output(1,10,O)
Output(1,14,"]")
Output(3,1,"AB=[")
Output(3,5,O+1)
Output(3,9,";")
Output(3,10,N)
Output(3,14,"]")
Output(5,1,"P(AB)=")
Output(5,7,round(1-binomcdf(N,P,O),4))
Pause 
Goto 1

Lbl X
DelVar A
DelVar P
DelVar N
DelVar E
DelVar S
DelVar U
DelVar O
ClrHome
Lbl E
ClrHome
