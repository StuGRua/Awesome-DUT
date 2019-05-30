#include <stdio.h>

int main()
{
   char *p=0;
   char str[99]={0};
   char ch;
   int flag=0;
   int i = 0;
   p=str;
   printf("Str:");
   gets(str);
   fflush(stdin);
   printf("ch:");
   ch=getchar();
   for (; *(p+i)!=0; i++)
   {
      if (*(p+i)==ch)
      {
         flag=1;
         break;
      }
      
   }
   if (flag==0)
   {
      printf("-1\n");
   }
   else if (i!=0)
   {
      printf("%d\n",i+1);
   }
   return 0;
}