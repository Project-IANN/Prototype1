#This module will detect 1.

#load test.dat;
load Thetafor2Binary.dat;
load Test.dat
#Photo = loadMNISTImages('train-images.idx3-ubyte');
#Photo1 = Photo(:,10010);
#Photo1 = [1;Photo1];
#Photo1 = Photo1';


function per = h(O,X)
  z=O*X';
  per=1./(1+e.^-z);

end


ans=h(O2,Photo);
ans

