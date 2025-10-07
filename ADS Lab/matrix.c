#include <stdio.h>
int main()
{
int m,n,i,j,k;
printf("enter the number of rows and columns of the matrices:");
scanf("%d %d",&m,&n);
int A[m][n],B[m][n],sum[m][n],sub[m][n],mul[m][n];
printf("enter elements of matrix A:\n");
for(i=0;i<m;i++)
 for(j=0;j<n;j++)
  scanf("%d",&A[i][j]);
  
  printf("enter elements of matrix B:\n");
  for(i=0;i<m;i++)

   for(j=0;j<n;j++)
   
    scanf("%d",&B[i][j]);
for(i=0;i<n;i++)

for(j=0;j<n;j++)

sum[i][j]=A[i][j]+B[i][j];

for(i=0;i<m;i++)
for(j=0;j<n;j++)

sub[i][j]=A[i][j]-B[i][j];
 if(m==n)
 {
for(i=0;i<m;i++)
{
for(j=0;j<n;j++)
{
mul[i][j]=0;
for(k=0;k<n;k++)
{
mul[i][j]+=A[i][j]*B[i][j];
}
}
}
}

printf("\nmatrix addition:\n");
for(i=0;i<m;i++){
for(j=0;j<n;j++)
printf("%d",sum[i][j]);
printf("\n");
}

printf("\nmatrix substraction:\n");
for(i=0;i<m;i++){
for(j=0;j<n;j++)
printf("%d",sub[i][j]);
printf("\n");
}
if(m==n)
{
printf("\nmatrix maultiplication:\n");
for(i=0;i<m;i++)
{
for(j=0;j<n;j++)
printf("%d",mul[i][j]);
printf("\n");
}
printf("\nmatrix multiplaction not posssible (not sqaure matrices).\n");
}
return 0;
}

