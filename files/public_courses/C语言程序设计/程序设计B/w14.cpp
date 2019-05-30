#include <stdio.h>
void sort(int *p)
{
  int temp;
  for (int i = 0; i < 5-1; i++)
  {
    for (int j =0 ; j < 5-1-i; j++)
    {
      if (*(p+j)>*(p+j+1))
      {
        temp=*(p+j);
        *(p+j)=*(p+j+1);
        *(p+j+1)=temp;
      }
      
    }
    
  }
  
}

int main()
{
  int num[5];
  for (int i = 0; i < 5; i++)
  {
    scanf("%d",&num[i]);
  }
  
  int *p=0;
  p=num;
  sort(p);
  for (int i = 0; i < 5; i++)
  {
    printf("%d ",num[i]);
  }
  
  return 0;

}