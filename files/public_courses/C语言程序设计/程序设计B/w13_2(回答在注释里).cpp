#include <stdio.h>
int main()
{	char  s[6],  *p=s;
		int 	n=0;
		printf("Input a string made up of characters with '0'~'7':");
		scanf("%s",p);
		while(*p!='\0')
		{	n=n*8+*p-'0';
			p++;
		}
		printf("%d\n",n);
      return 0;
}
//实现功能：输入由'0'-'7'组成的字符串(八进制数)，当字符串不为空时，将该串数字转换成十进制数；
   //若输入321，则结果为209;