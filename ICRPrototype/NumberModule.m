pkg load image;
n=argv(){1};
Photo= imread(n);
if size(Photo,3)==3,
    Photo=rgb2gray(Photo);
else 
  display("If Photo not in rgb or grayScale then program wil crash. Was busy eating laydh so did not write code to control the error");
end;

level = graythresh(Photo);
j2 = im2bw(Photo,level);

for i=1:28,
  for j=1:28,
    if j2(i,j)==1,
      j2(i,j)=0;
    else
      j2(i,j)=1;
    end;
  end;
end;


grayj2=uint8(j2);

for i=1:28,
  for j=1:28,
    if j2(i,j)==1,
        grayj2(i,j)=Photo(i,j)+50;
      end;
    end;
  end;

Photo=grayj2;

Photo = double(Photo); 
#for i=1:28,
#  for j=1:28,
#    if Photo(i,j)<40.0,
#      Photo(i,j)=0.0;
#    end;
#  end;
#end;

save boo.dat Photo;
Photo=Photo/255;

Photo=reshape(Photo,1,784);
Photo=Photo';
Photo = [1;Photo];
Photo = Photo';

save Test.dat Photo;

load Thetafor0Binary.dat
load Thetafor1Binary.dat 
load Thetafor2Binary.dat
load Thetafor3Binary.dat
load Thetafor4Binary.dat
load Thetafor5Binary.dat
load Thetafor6Binary.dat
load Thetafor7Binary.dat
load Thetafor8Binary.dat
load Thetafor9Binary.dat

function per = h1(O,X)
  z=O*X';
  per=1./(1+e.^-z);

end

k0=h1(O0,Photo);
k0
k=h1(O,Photo);
k
k2=h1(O2,Photo);
k2
k3=h1(O3,Photo);
k3
k4=h1(O4,Photo);
k4
k5=h1(O5,Photo);
k5
k6=h1(O6,Photo);
k6
k7=h1(O7,Photo);
k7
k8=h1(O8,Photo);
k8
k9=h1(O9,Photo);
k9

max=0;
ans=-1;

if k0>max,
     max=k0;
     ans=1;
end;
if k>max,
      max=k;
      ans=1;
end;
if k2>max,
      max=k2;
      ans=2;
end;
if k3>max,
      max=k3;
      ans=3;
end;
if k4>max,
      max=k4;
      ans=4;
end;
if k5>max,
      max=k5;
      ans=5;
end;
if k6>max,
      max=k6;
      ans=6;
end;
if k7>max,
      max=k7;
      ans=7;
end;
if k8>max,
      max=k8;
      ans=8;
end;
if k9>max,
      max=k9;
      ans=9;
end;

display(ans);
