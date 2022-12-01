#include<iostream>
using namespace std;

class student
{
    public:
    int roll_no;
    string name;
    float per;
    int max;
    int m1,m2,m3,m4,m5;
    
    student(int roll_no,string name,int m1,int m2,int m3,int m4,int m5,int max=100)
    {
        this->roll_no=roll_no;
        this->name=name;
        this->m1=m1;
        this->m2=m2;
        this->m3=m3;
        this->m4=m4;
        this->m5=m5;
        this->max=max;
    }
    
    void show(int r)
    {
      if(r==roll_no)  
    {
        int tot,m;
        tot=m1+m2+m3+m4+m5;
        m=tot*100;
        per=m/500;
        cout<<"roll_no of student is"<<endl;
        
        cout<<roll_no<<endl;
        
        cout<<"name of student"<<endl;
        cout<<name<<endl;
        
        cout<<"Grade sheet"<<endl;
        
        cout<<endl;
        
        cout<<"math:          "<<"\n mark "<<m1<<" "<<"Max"<<max<<endl;
        cout<<"science:       "<<"\n mark "<<m2<<" "<<"Max"<<max<<endl;
        cout<<"social-science:"<<"\n mark "<<m3<<" "<<"Max"<<max<<endl;
        cout<<"hindi:         "<<"\n mark "<<m4<<" "<<"Max"<<max<<endl;
        cout<<"english:"      <<"\n mark "<<m5<<" "<<"Max"<<max<<endl;
        
        cout<<endl;
        
        cout<<"total mark of student:"<<endl;
        cout<<tot<<endl;
        
        cout<<"percentage of student:"<<endl;
        cout<<per<<endl;
    }
    }
    
};
int main()
{
   int i;
   int r;
   student s[]={student(100,"shahnshah",78,60,82,67,60),student(200,"tamanna",80,50,60,90,75),student(300,"akbar",85,95,60,50,45)};
   
   cout<<"enter roll_no of student after all data record:"<<endl;
   
   cin>>r;
   for(i=0;i<3;i++)
{
    s[i].show(r);
}
return 0;
}
