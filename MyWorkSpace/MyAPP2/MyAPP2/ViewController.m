//
//  ViewController.m
//  MyAPP2
//
//  Created by LiuGen on 2018/8/14.
//  Copyright © 2018年 Test. All rights reserved.
//
typedef struct Node
{
    int value;
    struct Node *next;
    
}NODE,*PNODE;
typedef struct Stack{
    int data[100];
    int top;
}STACK,*PSTACK;
typedef struct LinkStack{
    int data;
    struct LinkStack *next;
}LINKSTACK,*PLINKSTACK;
typedef struct Tree{
    int data;
    struct Tree *lTree;
    struct Tree *rTree;
}TREE,*PTREE;


#import "MYAPP2Header.h"
#import "ViewController.h"

@interface ViewController ()
{
    PNODE phead;
    PNODE pTap;
    int pubValue;
}
@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
   

    
    
}
void creatTree(struct Tree *tre,int value){
    if (tre==nil) {
        tre = malloc(sizeof(TREE));
        tre->lTree = nil;
        tre->rTree = nil;
        tre->data = value;
    }else{
        if (tre->data > value) {
            creatTree(tre->rTree,value);
        }else{
            creatTree(tre->lTree, value);
        }
    }
}
void creatLinkStack(struct LinkStack *st)
{
    if (st==nil) {
        st = malloc(sizeof(LINKSTACK));
        st->next = nil;
    }
}
void creatStack(struct Stack *st)
{
    if (st == nil) {
        st = malloc(sizeof(STACK));
        st->top = -1;
    }
}
-(void)actionForButton
{
    printf("tap=p\n");
   
    
    printf("q=p\n w=p\n");
    printf("d\n");
    
}
-(void)actionForButton1
{
    int len = 0;
    PNODE p = phead->next;
    while (nil!=p) {
        len ++;
        p = p->next;
        
    }
    printf("len=%d\n",len);
    PNODE p2 = phead->next;
    for (int i=0; i<len; i++) {
        printf("value=%d\n",p2->value);
        p2 = p2->next;
    }
}
-(void)actionForButton2
{
    PNODE p = phead->next;
    PNODE q = malloc(sizeof(NODE));
    q->value = 222;
    q->next = p->next;
    p->next = q;
    printf("插入=%d\n",q->value);
}
-(void)actionForButton3
{
    PNODE p = phead->next;
   PNODE q = (p->next)->next;
    free(p->next);
    p->next = q;
    
    printf("删除");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*
 int minSubArrayLen(int s, int* nums, int numsSize) {
 static int stag=0;
 static int svalue = 0;
 
 
 if(numsSize<=0){
 return 0;
 }
 for(int i=0;i<numsSize;i++){
 if(s == nums[i]){
 return 1;
 }
 }
 if(numsSize == 3){
 if ((nums[0] + nums[1])==s || (nums[0] + nums[2])==s || (nums[1] + nums[2])==s) {
 return 2;
 }else if ((nums[0] + nums[1] + nums[2])==s) {
 return 3;
 }else{
 return 0;
 }
 }else if (numsSize==2){
 if ((nums[0] + nums[1])==s) {
 return 2;
 }else{
 return 0;
 }
 }else if (numsSize==1){
 if (nums[0]==s) {
 return 1;
 }else{
 return 0;
 }
 }
 for(int i=0;i<numsSize;i++){
 if (i<numsSize-3) {
 int a = nums[i];
 int b = s-a;
 int w = numsSize-i-1;
 printf("s=%d a=%d b=%d w=%d i=%d numsSize=%d\n",s,a,b,w,i,numsSize);
 int c[w];
 for(int j = i+1 ;j<numsSize;j++){
 c[j-(i+1)] = nums[j];
 }
 stag = stag+1;
 int x = minSubArrayLen(b,c,w);
 printf("x=%d stag=%d \n",x,stag);
 
 if (x>=1) {
 
 stag = stag+x;
 printf("svalue=%d  stag=%d \n",svalue,stag);
 if (svalue==0) {
 svalue = stag;
 }else{
 if (svalue>stag) {
 printf("***svalue=%d  stag=%d \n",svalue,stag);
 svalue = stag;
 
 }
 }
 printf("+++svalue=%d  stag=%d \n",svalue,stag);
 stag=stag-x-1;
 if (stag<0) {
 stag = 0;
 }
 }else{
 stag -= 1;
 }
 }else{
 break;
 }
 }
 printf("*********svalue=%d stag=%d\n",svalue,stag);
 return svalue;
 
 }
 
 */

@end
