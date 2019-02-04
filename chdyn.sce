x=imread('Unknown.jpg');
a=x(:,:,1);
b=x(:,:,2);
c=x(:,:,3);
d=size(a);
e=d(1);
f=d(2);

function extensionDynamicRange (x,f)
a=x(:,:,f);
size_image=size(a);
matix_columns = size_image(1);
matix_arrows = size_image(2);
    
for i=1:matix_columns
    for j=1:matix_arrows
        aa(i,j)=(255/(max(a)-min(a)))*(a(i,j)-min(a));
    end
end
endfunction

extensionDynamicRange (x,1);

for i=1:256
    va(i)=i-1;
end
[aaa,aaaind]=histplot(va,double(aa));
bar(imhist(a))

figure(0);
subplot(1,2,1)
imshow(a);
subplot(1,2,2)
histplot(va,double(a));

