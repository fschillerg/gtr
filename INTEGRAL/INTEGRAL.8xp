" Anfang
ClrHome

Lbl A
" Startmenü
Menu("Integral","Rotvolumen",1,"Rotoberfläche",2,"Bogenlänge",3,"Ende",θ)

"""""""""""
" Volumen "
"""""""""""

Lbl 1
" Menü Rotationsvolumen
Menu("Rotvolumen","f(x)",5,"g(x) bis f(x)",6,"Zurück",A)

Lbl 5
" Rotationsvolumen von f(x)
" Eingabe: f(x): Funktion
"          a: untere Grenze
"          b: obere Grenze
" Ausgabe: V: Rotationsvolumen
Disp "f(x)="
Input "",Str1
Input "a=",A
Input "b=",B
Str1→Y₀
π*FnInt(Y₀²,X,A,B)→V
Goto V

Lbl 6
" Rotationsvolumen von g(x) bis f(x)
" Eingabe: f(x): erste Funktion
"          g(x): zweite Funktion
"          a: untere Grenze
"          b: obere Grenze
" Ausgabe: V: Rotationsvolumen
Disp "f(x)="
Input "",Str1
Disp "g(x)="
Input "",Str2
Input "a=",A
Input "b=",B
Str1→Y₉
Str2→Y₀
abs(πFnInt(Y₉²,X,A,B)-πFnInt(Y₀²,X,A,B))→V
Goto V

Lbl V
" Ausgabe Volumen
ClrHome
Disp "V="
Output(1,3,V)
Goto θ

""""""""""""""""
" Mantelfläche "
""""""""""""""""

Lbl 2
" Mantelfläche
Menu("Mantelfläche","f(x)",7,"f'(x)",8,"g(x) bis f(x)",9,"Zurück",A)

Lbl 7
" Mantelfläche f(x)
" Eingabe: f(x): Funktion
"          a: untere Grenze
"          b: obere Grenze
" Ausgabe: M: Mantelfläche
Disp "f(x)="
Input "",Str1
Input "a=",A
Input "b=",B
Str1→Y₀
2π*FnInt(Y₀*√(1+nDeriv(Y₀,X,X)²),X,A,B)→M
Goto M

Lbl 8
" Mantelfläche mit Ableitung
" Eingabe: f(x): Funktion
"          f'(x): Ableitung
"          a: untere Grenze
"          b: obere Grenze
" Ausgabe: M: Mantelfläche
Disp "f(x)="
Input "",Str1
Disp "f"
Output(3,2,"'(x)=")
Input "",Str2
Input "a=",A
Input "b=",B
Str1→Y₉
Str2→Y₀
2π*FnInt(Y₉*√(1+(Y₀)²),X,A,B)→M
Goto M

Lbl 9
" Mantelfläche von g(x) bis f(x)
" Eingabe: f(x): Funktion
"          f'(x): Ableitung
"          a: untere Grenze
"          b: obere Grenze
" Ausgabe: M: Mantelfläche
Disp "f(x)="
Input "",Str1
Disp "g"
Output(3,2,"(x)=")
Input "",Str2
Input "a=",A
Input "b=",B
Str1→Y₀
Str2→Y₉
FnInt(abs(Y₀-Y₉),X,A,B)→M
Goto M

Lbl M
" Ausgabe Mantelfläche
ClrHome
Disp "M="
Output(1,3,M)
Goto θ

Lbl 3
" Bogenlänge
" Eingabe: f(x): Funktion
"          a: untere Grenze
"          b: obere Grenze
" Ausgabe: L: Bogenlänge
Disp "f(x)="
Input "",Str1
Str1→Y₀
Input "a=",A
Input "b=",B
FnInt(√(1+(nDeriv(Y₀,X,X))²),X,A,B)→L
ClrHome
Disp "L="
Output(1,3,L)
Pause 
Goto θ

Lbl θ
" Ende
DelVar Y₀
DelVar Y₉
DelVar Str1
DelVar Str2
