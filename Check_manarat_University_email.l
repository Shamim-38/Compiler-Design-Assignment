/*
check an email whether miu email or not....
Example:
       miu email: abc@manarat.ac.bd
               Accepted 
       otherwise will be rejected...
*/
%{
#include<stdio.h>
#include<stdlib.h>
int flag=0;
%}
%%
[a-z.0-9]+"@manarat.ac.bd" {flag=1;} 
%%
int main()
{
printf("\n\tEnter an Eamail:\n\t");
yylex();
if(flag==1)
printf("\tIt is an Manarat Email.\n");
else
printf("\tIt isn't an Manarat Email.\n");
}
 

