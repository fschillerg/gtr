3→dim(⌊ATMP
3→dim(⌊ATMP1
3→dim(⌊ATMP2
3→dim(⌊ATMP3
3→dim(⌊ATMPO
Float
Degree
ClrHome
Lbl 0
Menu(" ANALYT V 3.2.2 ","LAGEBEZIEHUNG",L,"UMRECHNUNG",U,"VEKTOROP.",V,"VIERECK",4E,"ENDE",E
Lbl L
Menu("LAGEBEZIEHUNGEN","2 PUNKTE",PP,"PUNKT+GERADE",PG,"2 GERADEN",GG,"PUNKT+EBENE",PE,"GERADE+EBENE",GE,"2 EBENEN",EE,"ZURÜCK",0
Lbl U
Menu(" EBENE UMRECHNEN","3 PUNKTE",3P,"P.+2 VEKTOREN",PT,"ZURÜCK",0
Lbl V
Menu("VEKTOROPERATIONEN","ADDITION",VA,"WINKEL",VW,"BETRAG",VB,"SKALARPROD.",VV,"KREUZPROD.",VK,"SPATPRODUKT",VS,"ZURÜCK",0
" Funktion Input Vektor
Lbl IV
Input "X=",A
Input "Y=",B
Input "Z=",C
{A,B,C→⌊ATMP
ClrHome
If θ=1:Goto P1
If θ=2:Goto P2
If θ=3:Goto P6
If θ=4:Goto P7
If θ=5:Goto P8
If θ=6:Goto G1
If θ=7:Goto G2
If θ=8:Goto G3
If θ=9:Goto G4
If θ=10:Goto E1
If θ=11:Goto G5
If θ=12:Goto G6
If θ=13:Goto U1
If θ=14:Goto U2
If θ=15:Goto U3
If θ=16:Goto U4
If θ=17:Goto U5
If θ=18:Goto U6
If θ=33:Goto A1
If θ=34:Goto A2
If θ=19:Goto V1
If θ=20:Goto V2
If θ=21:Goto V3
If θ=22:Goto V4
If θ=23:Goto V5
If θ=24:Goto V6
If θ=25:Goto V7
If θ=30:Goto V8
If θ=31:Goto V9
If θ=32:Goto V0
If θ=26:Goto H1
If θ=27:Goto H2
If θ=28:Goto H3
If θ=29:Goto 41
Goto E
Lbl IE
Disp "E: aX+bY+cZ=d
Input "a= ",A
Input "b= ",B
Input "c= ",C
Input "d= ",D
{A,B,C,D→⌊ATMP
If θ=1:Goto E4
If θ=2:Goto E5
If θ=10:Goto E2
If θ=12:Goto G7
Goto E
Lbl OP
Disp ⌊ATMPO(1)Frac
Disp ⌊ATMPO(2)Frac
Disp ⌊ATMPO(3)Frac
Output(2,1,"X=
Output(3,1,"Y=
Output(4,1,"Z=
Pause 
ClrHome
If θ=2:Goto P3
If θ=1:Goto P4
If θ=3:Goto P5
If θ=5:Goto P9
If θ=8:Goto G8
If θ=9:Goto G9
If θ=10:Goto E3
If θ=11:Goto E7
If θ=28:Goto H4
Goto E
Lbl PP
1→θ
ClrHome
Disp "PUNKT A
Goto IV
Lbl P1
⌊ATMP→⌊ATMP1
2→θ
Disp "PUNKT B
Goto IV
Lbl P2
ClrHome
√(sum((⌊ATMP-⌊ATMP1)²→T
(⌊ATMP+⌊ATMP1)/2→⌊ATMPO
Disp "ABSTAND",TFrac,T²Frac
Output(3,1,"=√(
Pause :ClrHome
Disp "MITTELPUNKT"
Goto OP:Lbl P3
2⌊ATMP-⌊ATMP1→⌊ATMPO
Disp "SPIEGELPUNKT A'
1→θ
Goto OP:Lbl P4
2⌊ATMP1-⌊ATMP→⌊ATMPO
Disp "SPIEGELPUNKT B'
0→θ
Goto OP
Lbl PG
ClrHome
Disp "PUNKT P
3→θ
Goto IV:Lbl P6
⌊ATMP→⌊ATMP1
Disp "GERADE : STÜTZV.
4→θ:Goto IV:Lbl P7
⌊ATMP→⌊ATMP2
Disp "RICHTV.
5→θ:Goto IV:Lbl P8
ClrHome
sum(­⌊ATMP*(⌊ATMP1-⌊ATMP2))/sum(­⌊ATMP²→S
⌊ATMP2+S⌊ATMP→⌊ATMPO
√(sum((⌊ATMP1-⌊ATMPO)²→L
If prod(⌊ATMPO=⌊ATMP1
Then
Disp "PUNKT LIEGT AUF
Disp "GERADE
Goto E
Else
Disp "ABSTAND P ZU L
Disp LFrac,L²Frac
Output(3,1,"=√(
Pause :ClrHome
Disp "LOTFUSSPUNKT L
5→θ
Goto OP:Lbl P9
⌊ATMPO-(⌊ATMP1-⌊ATMP2)+S⌊ATMP→⌊ATMPO
Disp "SPIEGELPUNKT P'
0→θ
Goto OP
Lbl GG
ClrHome
Disp "GER. 1 : STÜTZV.
6→θ:Goto IV:Lbl G1
⌊ATMP→⌊ATMP1
Disp "GER. 1 : RICHTV.
7→θ:Goto IV:Lbl G2
⌊ATMP→⌊ATMP2
Disp "GER. 2 : STÜTZV.
8→θ:Goto IV:Lbl G3
⌊ATMP→⌊ATMP3
Disp "GER. 2 : RICHTV.
9→θ:Goto IV:Lbl G4
{3,3→dim([J]
Listmatr(­⌊ATMP,⌊ATMP2,⌊ATMP3-⌊ATMP1,[J]
rref([J]→[J]
ClrHome
If [J](2,2)=0 and [J](2,3)=0 and 0=[J](3,3
Goto 1
If [J](2,2)=0 and 0≠[J](2,3
Goto 2
If [J](2,2)=1 and 0=[J](3,3
Goto 3
If 0≠[J](3,3
Goto 4
Lbl 1
Disp "IDENTISCH
Goto E
Lbl 2
sum(⌊ATMP2*(⌊ATMP3+⌊ATMP2*))-sum(⌊ATMP1⌊ATMP2→S
­real(S)/imag(S)→S
S⌊ATMP+⌊ATMP3→⌊ATMPO
√(sum((⌊ATMP1-⌊ATMPO)²→L
Disp "PARALLEL
Disp "
Disp "ABSTAND",LFrac,L²Frac
Output(5,1,"=√(
Goto E
Lbl 3
⌊ATMP3+[J](1,3)⌊ATMP→⌊ATMPO
cos(abs(sum(⌊ATMP2⌊ATMP)/√(sum(⌊ATMP2²))/√(sum(⌊ATMP²→W
Disp "SCHNITTWINKEL",WFrac
Disp "SCHNITTPUNKT",⌊ATMPO(1)Frac
Disp ⌊ATMPO(2)Frac
Disp ⌊ATMPO(3)Frac
Output(4,1,"X=
Output(5,1,"Y=
Output(6,1,"Z=
Goto E
Lbl 4
"{⌊ATMP2(2)⌊ATMP(3)-⌊ATMP2(3)⌊ATMP(2),⌊ATMP2(3)⌊ATMP(1)-⌊ATMP2(1)⌊ATMP(3),⌊ATMP2(1)⌊ATMP(2)-⌊ATMP2(2)⌊ATMP(1?⌊ATMPO
"abs((sum((⌊ATMP1-⌊ATMP3)⌊ATMPO)/√(sum(⌊ATMPO²)))²?W
[[sum(⌊ATMP2²),sum(­⌊ATMP2⌊ATMP),sum((⌊ATMP3-⌊ATMP1)⌊ATMP2)][sum(⌊ATMP⌊ATMP2),sum(­⌊ATMP²),sum((⌊ATMP3-⌊ATMP1)⌊ATMP→[J]
rref([J]→[J]
Disp "WINDSCHIEF
Disp "
⌊ATMP1+⌊ATMP2[J](1,3→⌊ATMPO
sum((⌊ATMPO-⌊ATMP3-[J](2,3)⌊ATMP)²→W
Disp "ABSTAND",√(W)Frac,WFrac
Output(5,1,"=√(
Pause :ClrHome
Disp "LOTFUSSPUNKT L₁
8→θ
Goto OP:Lbl G8
⌊ATMP3+⌊ATMP[J](2,3→⌊ATMPO
Disp "LOTFUSSPUNKT L₂
0→θ
Goto OP
Lbl PE
ClrHome
10→θ
Disp "PUNKT P
Goto IV:Lbl E1
⌊ATMP→⌊ATMP1
ClrHome
Goto IE:Lbl E2
3→dim(⌊ATMP
ClrHome
(D-sum(⌊ATMP⌊ATMP1))/sum(⌊ATMP²→S
⌊ATMP1+S⌊ATMP→⌊ATMPO
√(sum((⌊ATMP1-⌊ATMPO)²→L
If prod(⌊ATMP1=⌊ATMPO
Then
Disp "PUNKT LIEGT IN
Disp "EBENE
Goto E
Else
Disp "ABSTAND P ZU L
Disp LFrac,L²Frac
Output(3,1,"=√(
Pause 
ClrHome
Disp "LOTFUSSPUNKT L
Goto OP:Lbl E3
2⌊ATMPO-⌊ATMP1→⌊ATMPO
Disp "SPIEGELPUNKT P'
0→θ
Goto OP
Lbl GE
ClrHome
Disp "GERADE : STÜTZV.
11→θ
Goto IV:Lbl G5
⌊ATMP→⌊ATMP1
Disp "GERADE : RICHTV.
12→θ
Goto IV:Lbl G6
⌊ATMP→⌊ATMP2
ClrHome
Goto IE:Lbl G7
3→dim(⌊ATMP
ClrHome
sum(⌊ATMP2⌊ATMP→T
If T=0
Then
Goto 11
End
(D-sum(⌊ATMP1⌊ATMP))/T→L
⌊ATMP1+L⌊ATMP2→⌊ATMPO
sin(abs(sum(⌊ATMP⌊ATMP2)/√(sum(⌊ATMP²))/√(sum(⌊ATMP2²→W
Disp "SCHNITTWINKEL",WFrac
Disp "SCHNITTPUNKT",⌊ATMPO(1)Frac
Disp ⌊ATMPO(2)Frac
Disp ⌊ATMPO(3)Frac
" Stützvektor ⌊ATMP2
Goto E
Lbl 11
ClrHome
If D=sum(⌊ATMP1⌊ATMP
Then
Disp "GERADE LIEGT IN
Disp "EBENE
Goto E
Else
abs(sum(⌊ATMP1⌊ATMP)-D)/√(sum(⌊ATMP²→T
Disp "PARALLEL
Disp "
Disp "ABSTAND",TFrac,T²Frac
Output(5,1,"=√(
Goto E
Lbl EE
ClrHome
Disp "EBENE 1
1→θ
Goto IE:Lbl E4
A→E:B→F:C→G:D→H
3→dim(⌊ATMP:⌊ATMP→⌊ATMP1
ClrHome
Disp "EBENE 2
2→θ
Goto IE:Lbl E5
3→dim(⌊ATMP
ClrHome
If BE=AF and BG=CF and CE=AG
Then
If (E≠0 and AH=ED) or (F≠0 and HB=FD) or (G≠0 and HC=GD
Then
Goto 22
Else
Goto 33
End
Else
Goto 44
Lbl 22
Disp "E1 IST GLEICH E2
Goto E
Lbl 33
Disp "E1 PARALLEL E2
If E≠0
Then
{(H-G-F)/E,1,1→⌊ATMP2
Else
If F≠0
Then
{1,(H-G-E)/F,1→⌊ATMP2
Else
{1,1,(H-E-F)/G→⌊ATMP2
End
End
If A≠0
Then
{(D-C-B)/A,1,1→⌊ATMP3
Else
If B≠0
Then
{1,(D-A-C)/B,1→⌊ATMP3
Else
{1,1,(D-B-A)/C→⌊ATMP3
End
End
abs(sum(⌊ATMP1⌊ATMP2-⌊ATMP1⌊ATMP3→Q
sum(⌊ATMP1²→P
Q/√(P→L
Disp "
Disp "ABSTAND",LFrac,L²Frac
Output(5,1,"=√(
Goto E
Lbl 44
FC-GB→I
GA-EC→J
EB-FA→K
If A≠0
Then
If J≠0
Then
(AH+EB-AF-ED)/J→Z
(D-B-CZ)/A→X
1→Y
Else
(AH+EC-AG-ED)/K→Y
(D-C-BY)/A→X
1→Z
End
Else
If B≠0
Then
If K≠0
Then
(BH+CF-GB-FD)/K→X
(D-C-AX)/B→Y
1→Z
Else
(BH+AF-EB-FD)/­I→Z
(D-A-CZ)/B→Y
1→X
End
Else
If I≠0
Then
(CH+GA-CE-GD)/I→Y
(D-A-BY)/C→Z
1→X
Else
(CH+GB-FC-GD)/J→X
(D-B-AX)/C→Z
1→Y
End
End
End
cos(abs(sum(⌊ATMP1⌊ATMP)/√(sum(⌊ATMP1²)sum(⌊ATMP²→W
Disp "E1 SCHNEIDET E2
Disp "SCHNITTWINKEL
Disp W
Disp "WEITER ZU","SCHNITTGERADE
Pause :ClrHome
Disp "STÜTZV.
{X,Y,Z→⌊ATMPO
11→θ:Goto OP:Lbl E7
{I,J,K→⌊ATMPO
Disp "RICHTV.
0→θ:Goto OP
Lbl 3P
Disp "PUNKT 1
13→θ:Goto IV:Lbl U1:⌊ATMP→⌊ATMP1
ClrHome
Disp "PUNKT 2
14→θ:Goto IV:Lbl U2:⌊ATMP→⌊ATMP2
ClrHome
Disp "PUNKT 3
15→θ:Goto IV:Lbl U3
ClrHome
⌊ATMP2-⌊ATMP1→⌊ATMP2
⌊ATMP-⌊ATMP1→⌊ATMP
Goto 55
Lbl PT
ClrHome
Disp "PUNKT
16→θ:Goto IV:Lbl U4:⌊ATMP→⌊ATMP1
ClrHome
Disp "VEKTOR 1
17→θ:Goto IV:Lbl U5:⌊ATMP→⌊ATMP2
ClrHome
Disp "VEKTOR 2
18→θ:Goto IV:Lbl U6
Lbl 55
ClrHome
{⌊ATMP2(2)⌊ATMP(3)-⌊ATMP2(3)⌊ATMP(2),⌊ATMP2(3)⌊ATMP(1)-⌊ATMP2(1)⌊ATMP(3),⌊ATMP2(1)⌊ATMP(2)-⌊ATMP2(2)⌊ATMP(1→⌊ATMP3
sum(⌊ATMP3⌊ATMP1→D
If prod(⌊ATMP3=int(⌊ATMP3:Then
gcd(gcd(abs(D),abs(⌊ATMP3(1))),gcd(abs(⌊ATMP3(2)),abs(⌊ATMP3(3→Q
If not(Q:1→Q
⌊ATMP3/Q→⌊ATMP3:D/Q→D:End
Disp "E: aX+bY+cZ=d
Disp ⌊ATMP3(1)Frac
Disp ⌊ATMP3(2)Frac
Disp ⌊ATMP3(3)Frac
Disp DFrac
Output(2,1,"a=
Output(3,1,"b=
Output(4,1,"c=
Output(5,1,"d=
Goto E
Lbl VA
Disp "VEKTOR 1
33→θ:Goto IV:Lbl A1:⌊ATMP→⌊ATMP1
Disp "VEKTOR 2
34→θ:Goto IV:Lbl A2
⌊ATMP1+⌊ATMP→⌊ATMPO
0→θ
Disp "SUMME
Goto OP
Lbl VW
Disp "VEKTOR 1
19→θ:Goto IV:Lbl V1:⌊ATMP→⌊ATMP1
Disp "VEKTOR 2
20→θ:Goto IV:Lbl V2
cos(sum(⌊ATMP1⌊ATMP)/(√(sum(⌊ATMP1²))√(sum(⌊ATMP²→W
Disp "WINKEL",W
Goto E
Lbl VB
Disp "VEKTOR
21→θ:Goto IV:Lbl V3
√(sum(⌊ATMP²→W
Disp "BETRAG",WFrac,W²Frac
Output(3,1,"√(
Goto E
Lbl VV
ClrHome
Disp "VEKTOR 1
22→θ:Goto IV:Lbl V4:⌊ATMP→⌊ATMP1
Disp "VEKTOR 2
23→θ:Goto IV:Lbl V5
sum(⌊ATMP⌊ATMP1→W
Disp "SKALARPRODUKT",WFrac
Goto E
Lbl VK
ClrHome
Disp "VEKTOR 1
24→θ:Goto IV:Lbl V6:A→D:B→E:C→F
Disp "VEKTOR 2
25→θ:Goto IV:Lbl V7
{EC-FB,FA-DC,DB-AE→⌊ATMPO
Disp "NEUER VEKTOR
0→θ:Goto OP
Lbl VS
Disp "VEKTOR 1
30→θ:Goto IV:Lbl V8
⌊ATMP→⌊ATMP1
Disp "VEKTOR 2
31→θ:Goto IV:Lbl V9
⌊ATMP→⌊ATMP2
Disp "VEKTOR 3
32→θ:Goto IV:Lbl V0
{3,3→dim([J]
Listmatr(⌊ATMP1,⌊ATMP2,⌊ATMP,[J]
Disp "SPATPRODUKT:
Disp det([J]
Pause :ClrHome
Goto E
Lbl 4E
29→θ
{3,4→dim([J]
For(J,1,4
ClrHome
Disp "PUNKT
Output(1,7,J
Goto IV:Lbl 41
⌊ATMP(1→[J](1,J
⌊ATMP(2→[J](2,J
⌊ATMP(3→[J](3,J
End
Matrlist([J],⌊ATMP,⌊ATMP1,⌊ATMP2,⌊ATMP3
Listmatr(⌊ATMP1-⌊ATMP,⌊ATMP2-⌊ATMP,⌊ATMP3-⌊ATMP,[J]
ref([J]→[J]
If [J](3,3
Then
Disp "NICHT EBEN
Goto E
End
0→P:{3,3→dim([J]
Listmatr(⌊ATMP1-⌊ATMP,⌊ATMP2-⌊ATMP3,{0,0,0},[J]
ref([J]→[J]
If 0=[J](2,2
1→P
Listmatr(⌊ATMP2-⌊ATMP1,⌊ATMP3-⌊ATMP,{0,0,0},[J]
ref([J]→[J]
If 0=[J](2,2
P+1→P
If P=1:Then
Disp "TRAPEZ
Goto E
End
If not(P
Then
If (sum((⌊ATMP-⌊ATMP1)²)=sum((⌊ATMP1-⌊ATMP2)²) and sum((⌊ATMP2-⌊ATMP3)²)=sum((⌊ATMP3-⌊ATMP)²)) or (sum((⌊ATMP1-⌊ATMP2)²)=sum((⌊ATMP2-⌊ATMP3)²) and sum((⌊ATMP3-⌊ATMP)²)=sum((⌊ATMP-⌊ATMP1)²
Then
Disp "DRACHENVIERECK
Else
Disp "UNREGELMÄSSIG
End
Else
If 0≠sum((⌊ATMP-⌊ATMP1)(⌊ATMP1-⌊ATMP2
Then
If sum((⌊ATMP-⌊ATMP1)²)=sum((⌊ATMP1-⌊ATMP2)²) and sum((⌊ATMP1-⌊ATMP2)²)=sum((⌊ATMP2-⌊ATMP3)²
Then
Disp "RAUTE
Else
Disp "PARALLELOGRAMM
End
Else
If sum((⌊ATMP-⌊ATMP1)²)=sum((⌊ATMP1-⌊ATMP2)²
Then
Disp "QUADRAT
Else
Disp "RECHTECK
End
End
End
Pause 
Lbl E
DelVar ⌊ATMPDelVar ⌊ATMP1DelVar ⌊ATMP2DelVar ⌊ATMP3DelVar ⌊ATMPODelVar ADelVar BDelVar CDelVar DDelVar θDelVar TDelVar SDelVar LDelVar WDelVar EDelVar FDelVar GDelVar HDelVar QDelVar JDelVar IDelVar KDelVar XDelVar YDelVar Z
