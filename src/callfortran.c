#include <stdio.h>

extern void fortransub();
extern int numbers[5];

int main(void)
{
   int i;
   printf("Hello from C!\n");
   fortransub();
   for (i=0; i<5; i=i+1)
      printf("%d ", numbers[i]);
   printf("\n");

return 0;
}