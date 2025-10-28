#include<stdio.h>
struct employee
{
int emp_id;
char name[50];
float salary;
};
int main()
{
struct employee e[3];
int i;
printf("entern details of 3 employees:\n");
for(i=0;i<3;i++)
{
printf("\n employee%d:\n",i+1);
printf("enter employee ID:");
scanf("%d",&e[i].emp_id);
printf("enter name:");
scanf("%s",e[i].name);
printf("enter salary:");
scanf("%f",&e[i].salary);
}
printf("\n---Employee Details---\n");
for(i=0;i<3;i++)
{
printf("\nEmployee%d\n",i+1);
printf("employee id:%d\n",e[i].emp_id);
printf("name  :%s\n",e[i].name);
printf("salary :%2f\n",e[i].salary);
}
return 0;
}


