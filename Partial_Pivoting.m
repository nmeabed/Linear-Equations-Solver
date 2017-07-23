function [ a,b,L_Matrix,Pivot ] = Partial_Pivoting( a,b,input,L_Matrix,Pivot )
Max=a(input,input);
Max_index=input;
index=input;
length=size(a);
while(index<=length(1,1))
    if(abs(a(index,input))>abs(Max))
    Max_index=index;
    Max=a(index,input);
    end
    index=index+1;
end
if(Max_index~=input)
    temp1=a(input,:);
    a(input,:)=a(Max_index,:);
    a(Max_index,:)=temp1;
    temp2=b(input,1);
    b(input,1)=b(Max_index,1);
    b(Max_index,:)=temp2;
    temp3=Pivot(input,:);
    Pivot(input,:)=Pivot(Max_index,:);
    Pivot(Max_index,:)=temp3;
end
if(input~=1&&input~=Max_index)
  temp3=L_Matrix(input,1:input-1);
 L_Matrix(input,1:input-1)=L_Matrix(Max_index,1:input-1);
  L_Matrix(Max_index,1:input-1)=temp3;
end
end

