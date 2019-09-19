import java.io.*;

%%
%char
%unicode
%standalone
%class Bin2HRF

%{
public Bin2HRF(){}
String str = "";
int i;
%}

F0=(0)*
F1=(1)
F2=(1(1)+)
F3=(101(01)+)

%%
<YYINITIAL> {
 {F0} {}
 {F1} {i=yychar+1; str+=(str.isEmpty()?"":",")+i;}
 {F2} {i=yychar+1; str+=(str.isEmpty()?"":",")+i+"-"+(yychar+yylength());}
 {F3} {i=yychar+1; str+=(str.isEmpty()?"":",")+i+"~"+(yychar+yylength())+(i%2==0?"双":"单");}
}
