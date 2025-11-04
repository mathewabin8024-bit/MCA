 #include <stdio.h>
 #include<stdlib.h>
 struct node{
 int data;
 struct node*next;
 };
 
 int main()
{
struct node*head=NULL;
struct node*temp=NULL;
struct node*newnode=NULL;
int n,i,value;
printf("enter number of nodes:");
scanf("%d",&n);

for (i=0;i<n;i++){

newnode=(struct node*)malloc(sizeof(struct node));
printf("enter data for node %d:",i+1);
scanf("%d", &value);
newnode->data=value;
newnode->next=NULL;

if (head==NULL)
{
head=newnode;
temp=head;
}
else{
temp->next=newnode;
temp=temp->next;
}
}
printf("singlylinkedlist:");
temp=head;

while (temp!=NULL)
{
printf("%d->",temp->data);
temp=temp->next;
}
printf("NULL\n");
return 0;
}


