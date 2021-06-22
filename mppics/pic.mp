input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[oneside]{book}
\begin{document}
etex

filenametemplate "%j-%1c.mps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";

beginfig(1) 
save a,u,n,vetka;
u:=1cm;
n:=4;
a:=10;

z.a=origin;
z.b=(0,1)*u;


picture vetka;

vetka= image(
draw z.a--z.b;
for i=0 upto n:
draw z.b--z.b+z.b rotated (a*n/2-a*i);
dOt z.b+z.b rotated (a*n/2-a*i);
endfor
dOt z.b;);

draw (z.b rotated -15)..z.b..(z.b rotated 100)..(z.b rotated 150)..(z.b rotated 190)..(z.b rotated 220)..(z.b rotated 235) dashed evenly; 

draw 
z.b+z.b rotated (-a*n/2-a*3)
for i=0  upto n:
..z.b+z.b rotated (-a*n/2+a*i)
endfor
for i=0  upto n:
..(z.b+z.b rotated (-a*n/2+a*i)) rotated 100
endfor
for i=0  upto n:
..(z.b+z.b rotated (-a*n/2+a*i)) rotated 150
endfor
for i=0  upto n:
..(z.b+z.b rotated (-a*n/2+a*i)) rotated 190
endfor
for i=0  upto n+3:
..(z.b+z.b rotated (-a*n/2+a*i)) rotated 220
endfor
 dashed evenly;

draw vetka;
draw vetka rotated 100;
draw vetka rotated 150;
draw vetka rotated 190;
draw vetka rotated 220;
dOt z.a;




label(btex $\dots$ etex rotated 255, z.b rotated 255);
label.urt(btex $p$ etex, z.a);
label.ulft(btex $B$ etex, .95*z.b rotated 50);
label.ulft(btex $E$ etex, 1.9*z.b rotated 50);
endfig;



end
