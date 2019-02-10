" Variablen
3→dim(⌊P1)
3→dim(⌊P2)
3→dim(⌊P3)
3→dim(⌊P4)
3→dim(⌊T)
3→dim(⌊TT)
{3,3}→dim([J])

"{⌊T(2)⌊TT(3)-⌊T(3)⌊TT(2),⌊T(3)⌊TT(1)-⌊T(1)⌊TT(3),⌊T(1)⌊TT(2)-⌊T(2)⌊TT(1)}"→Str9
"√(sum("+Str9+"²))"→Str8
Degree
Float

" Anfangsmenü
Lbl M
ClrHome
Menu("     KOERPER    ","Dreieck",D,"allg Viereck",V,"Spat",S,"Pyramide 4seit",X,"Pyramide 3seit",Y,"Var-Info",I,"Ende",E)

" ********** Var-Info ***********

Lbl I
Output(1,1,"Seiten   A,B,C,DWinkel   X,Y,Z,W       = α,β,γ,δVolumen        VOberfläche     OGrundfläche    GDiagonalen   E,FHöhe           H")
Pause 
Goto M


" ********** FUNKTIONEN *********
" Vektoreingabe
Lbl FP
ClrHome
Output(1,5,"Punkt "+Str0)
Disp ""
Input "X:",T
T→⌊T(1)
Input "Y:",T
T→⌊T(2)
Input "Z:",T
T→⌊T(3)

If θ=1:Goto D1
If θ=2:Goto D2
If θ=3:Goto D3

If θ=11:Goto V1
If θ=12:Goto V2
If θ=13:Goto V3
If θ=14:Goto V4

If θ=21:Goto S1
If θ=22:Goto S2
If θ=23:Goto S3
If θ=24:Goto S4

If θ=31:Goto X1
If θ=32:Goto X2
If θ=33:Goto X3
If θ=34:Goto X4

If θ=41:Goto Y1
If θ=42:Goto Y2
If θ=43:Goto Y3
If θ=44:Goto Y4

" ********** ERRORS ***********

Lbl EG
ClrHome
Output(3,4,"Die Punkte")
Output(4,4,"liegen in")
Output(5,2,"einer Geraden")
Goto EE

Lbl ER
ClrHome
Output(3,1,"Die Punkte sind")
Output(4,4,"nicht in")
Output(5,3,"einer Ebene")
Goto EE

Lbl EF
ClrHome
Output(3,3,"Alle Punkte")
Output(4,4,"liegen in")
Output(5,3,"einer Ebene")

Lbl EE
Pause 
Goto M


" ********** DREIECK **********
" Punkt-Dreickeingabe
Lbl D
"A"→Str0
1→θ
Goto FP
Lbl D1
⌊T→⌊P1

"B→Str0
2→θ
Goto FP
Lbl D2
⌊T→⌊P2

"C"→Str0
3→θ
Goto FP
Lbl D3
⌊T→⌊P3

" Punktecheck
Listmatr(⌊P2-⌊P1,{0,0,0},⌊P3-⌊P1,[J])
rref([J]→[J]
If [J](2,3)=0:Goto EG

" Seitenberechnung
√(sum((⌊P1-⌊P2)²)→C
√(sum((⌊P2-⌊P3)²)→A
√(sum((⌊P3-⌊P1)²)→B

" Dreiecksmenü
Lbl DM
ClrHome
Menu("     GESUCHT    ","Seitenlängen",DS,"Winkel",DW,"Fläche",DF,"Schnittpunkte",DM,"Zurück",M,"Ende",E)

" Seitenlängen
Lbl DS


Disp "","",A,B,C
Output(1,3,"Seitenlängen")
Output(3,1,"a=")
Output(4,1,"b=")
Output(5,1,"c=")

Pause 
Goto DM

" Dreieckswinkel

Lbl DW

sum((⌊P1-⌊P2)*(⌊P1-⌊P3))→X
sum((⌊P1-⌊P2)*(⌊P3-⌊P2))→Y
sum((⌊P3-⌊P1)*(⌊P3-⌊P2))→Z

cos(X/(C*B))→X
cos(Y/(C*A))→Y
cos(Z/(A*B))→Z

Disp "","",X,Y,Z
Output(1,6,"Winkel")
Output(3,1,"α=")
Output(4,1,"β=")
Output(5,1,"γ=")

Pause 
Goto DM


" Flaeche
Lbl DF
⌊P2-⌊P1→⌊T
⌊P3-⌊P1→⌊TT

.5expr(Str8→O

Output(2,1,"Flaecheninhalt")
Output(4,2,O)

Pause 
Goto DM

" ***************** allg Viereck ***************

" Dot-Thick
Lbl V
"A"→Str0
11→θ
Goto FP
Lbl V1
⌊T→⌊P1

"B"→Str0
12→θ
Goto FP
Lbl V2
⌊T→⌊P2

"C"→Str0
13→θ
Goto FP
Lbl V3
⌊T→⌊P3

"D"→Str0
14→θ
Goto FP
Lbl V4
⌊T→⌊P4

" Ebenencheck
Listmatr(⌊P2-⌊P1,⌊P3-⌊P1,⌊P4-⌊P1,[J])
rref([J]→[J]
If [J](3,3)=1:Goto ER
If [J](2,2)=0:Goto EG

" Seitenberechnung
√(sum((⌊P1-⌊P2)²)→A
√(sum((⌊P2-⌊P3)²)→B
√(sum((⌊P3-⌊P4)²)→C
√(sum((⌊P4-⌊P1)²)→D

" Vierecksmenü
Lbl VM
ClrHome
Menu("     GESUCHT    ","Seitenlängen",VS,"Diagonalen",VD,"Winkel",VW,"Fläche",VF,"Viereckstyp",VT,"Zurück",M,"Ende",E)

Lbl VS
" Seitenlängen

Disp "","",A,B,C,D
Output(1,3,"Seitenlängen")
Output(3,1,"a=")
Output(4,1,"b=")
Output(5,1,"c=")
Output(6,1,"d=")

Pause 
Goto VM

Lbl VD
" Diagonalen

√(sum((⌊P3-⌊P1)²)→E
√(sum((⌊P4-⌊P2)²)→F

Disp "","","",E,"","",F
Output(1,4,"Diagonalen")
Output(3,1,"A - C:")
Output(4,2,"e=")
Output(6,1,"B - D:")
Output(7,2,"f=")


Pause 
Goto VM


Lbl VW
" Winkel


sum((⌊P2-⌊P1)*(⌊P4-⌊P1))→X
sum((⌊P3-⌊P2)*(⌊P1-⌊P2))→Y
sum((⌊P2-⌊P3)*(⌊P4-⌊P3))→Z
sum((⌊P3-⌊P4)*(⌊P1-⌊P4))→W

cos(X/(A*D))→X
cos(Y/(B*A))→Y
cos(Z/(C*B))→Z
cos(W/(D*C))→W

Disp "","",X,Y,Z,W
Output(1,6,"Winkel")
Output(3,1,"α=")
Output(4,1,"β=")
Output(5,1,"γ=")
Output(6,1,"δ=")

Pause 
Goto VM


Lbl VF
" Flaeche

⌊P2-⌊P1→⌊T
⌊P4-⌊P1→⌊TT
expr(Str8→O

⌊P2-⌊P3→⌊T
⌊P4-⌊P3→⌊TT
.5(O+expr(Str8→O

Output(2,1,"Flächeninhalt:")
Output(4,2,O)

Pause 
Goto VM

" Viereckstyp
Lbl VT

sum((⌊P1-⌊P2)*(⌊P1-⌊P4))→S

" A und C parallel? bei T=0
Listmatr(⌊P2-⌊P1,{0,0,0},⌊P3-⌊P4,[J])
rref([J]→[J]
[J](2,3)→T

" B und D parallel? bei R=0
Listmatr(⌊P3-⌊P2,{0,0,0},⌊P4-⌊P1,[J])
rref([J]→[J]
[J](2,3)→R

If T=0:Then
If B=D:Then:
If R=0:Then
If A=B:Then
If S=0:Then
"Quadrat→Str0
Else
"Raute→Str0
End
Else
If S=0:Then
"Rechteck→Str0
Else
"Parallelogramm→Str0
End
End
Else
"gerades Trapez→Str0
End
Else
"Trapez→Str0
End
Else
If R=0:Then
If A=C:Then
"gerades Trapez→Str0
Else
"Trapez→Str0
End
Else
If (A=D and C=B) or (B=A and C=D):Then
"Drachenviereck→Str0
Else
"allg. Viereck→Str0
End
End
End

Output(2,1,"Es ist ein")
Output(4,2,Str0)
Pause 
Goto VM

" ***************** SPAT ************************

Lbl S

"A"→Str0
21→θ
Goto FP
Lbl S1
⌊T→⌊P1

"B"→Str0
22→θ
Goto FP
Lbl S2
⌊T→⌊P2

"C"→Str0
23→θ
Goto FP
Lbl S3
⌊T→⌊P3

"D"→Str0
24→θ
Goto FP
Lbl S4
⌊T→⌊P4

Listmatr(⌊P2-⌊P1,⌊P3-⌊P1,⌊P4-⌊P1,[J])
abs(det([J]→V
rref([J]→[J]
If [J](3,3)=0:Goto EF
If [J](2,2)=0:Goto EG

" Oberflaechenberechnung
⌊P2-⌊P1→⌊T
⌊P3-⌊P1→⌊TT
expr(Str8→O

⌊P4-⌊P1→⌊TT
O+expr(Str8→O

⌊P3-⌊P1→⌊T
2(O+expr(Str8→O

" Ausgabe
ClrHome
Disp "","","",V,"","",O
Output(1,6,"Spat")
Output(3,1,"Volumen:")
Output(4,2,"V=")
Output(6,1,"Oberfläche:")
Output(7,2,"O=")

Pause 
Goto M



" ***************** 4seitige Pyramide ******************

Lbl X

"A"→Str0
31→θ
Goto FP
Lbl X1
⌊T→⌊P1

"B"→Str0
32→θ
Goto FP
Lbl X2
⌊T→⌊P2

"C"→Str0
33→θ
Goto FP
Lbl X3
⌊T→⌊P3

"S"→Str0
34→θ
Goto FP
Lbl X4
⌊T→⌊P4

Listmatr(⌊P2-⌊P1,⌊P3-⌊P1,⌊P4-⌊P1,[J])
abs(det([J]))/3→V
rref([J]→[J]
If [J](3,3)=0:Goto EF
If [J](2,2)=0:Goto EG

" Berechnungen
⌊P2-⌊P1→⌊T
⌊P3-⌊P1→⌊TT
expr(Str8→G

⌊P4-⌊P1→⌊TT
G+expr(Str8→O

⌊P3-⌊P1→⌊T
O+expr(Str8→O

" Höhe
⌊P2-⌊P1→⌊TT
" Normalenvektor LT
expr(Str9→⌊T
" Hessische Normalenform
abs(sum(⌊T⌊P4)-sum(⌊T⌊P1))/√(sum(⌊T²))→H


ClrHome
Disp "",V,"",G,"",O
Output(1,1,"Volumen:")
Output(2,2,"V=")
Output(3,1,"Grundfläche:")
Output(4,2,"G=")
Output(5,1,"Oberfläche:")
Output(6,2,"O="
Output(7,1,"Höhe:")
Output(8,2,"h=")
Output(8,4,H)

Pause 
Goto M

" ***************** 3seitige Pyramide ******************

Lbl Y

"A"→Str0
41→θ
Goto FP
Lbl Y1
⌊T→⌊P1

"B"→Str0
42→θ
Goto FP
Lbl Y2
⌊T→⌊P2

"C"→Str0
43→θ
Goto FP
Lbl Y3
⌊T→⌊P3

"S"→Str0
44→θ
Goto FP
Lbl Y4
⌊T→⌊P4

Listmatr(⌊P2-⌊P1,⌊P3-⌊P1,⌊P4-⌊P1,[J])
abs(det([J]))/6→V
rref([J]→[J]
If [J](3,3)=0:Goto EF
If [J](2,2)=0:Goto EG

" Berechnungen
⌊P2-⌊P1→⌊T
⌊P3-⌊P1→⌊TT
expr(Str8→O

⌊P4-⌊P1→⌊TT
O+expr(Str8→O

⌊P3-⌊P1→⌊T
O+expr(Str8→O

⌊P3-⌊P2→⌊T
⌊P4-⌊P2→⌊TT
.5(O+expr(Str8→O

ClrHome
Disp "","","",V,"","",O
Output(1,2,"Pyramide 3seit")
Output(3,1,"Volumen:")
Output(4,2,"V=")
Output(6,1,"Oberfläche:")
Output(7,2,"O=")

Pause 
Goto M

Lbl E
DelVar ⌊P1
DelVar ⌊P2
DelVar ⌊P3
DelVar ⌊P4
DelVar ⌊PT
DelVar ⌊PTT
DelVar [J]DelVar Str8DelVar Str9DelVar Str0
ClrHome
