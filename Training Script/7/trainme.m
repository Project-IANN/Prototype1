# X will be generated in the program named LoadMNISTImages function.

X=loadMNISTImages('train-images.idx3-ubyte');


# We use 1000 datasets for our training. i.e m=1000.
#X=X(:,1:10000);
A = ones(1,60000);
#Adding x0=1 as for constant.
X=[A;X];


Y=loadMNISTLabels('train-labels.idx1-ubyte');
Y=Y';

# We are considering the result as a binary thingy.
for buga=1:60000,
  if Y(buga)==7,
    Y(buga)=1;
   else 
    Y(buga)=0;
  end;
end;


# This function calculates the hypothesis fucntion.
# O-A horizontal vector of the parameters that the gradient descent will find out.
# X- A 2d array that contains all the Training set column wise. i.e each column represents a particular picture.
# Returns a horizontal vector containing the result of hypothesis(b). 

function b = h(O,X)

z=O*X;
b=1./(1+e.^-z);

end


#New set of thetas or O's.
# Y - this is a horizonal vector containing the actual result.
# This function calculates theta for gradient descent.
# m is the number of elements in the training set.
# aplha is the learning rate.
function boo = newTheta(O,b,Y,X,m,alpha)

boo= O-((alpha*(1./m))*((b-Y)*X'));

end

# Now we write the gradient descent loop.
function Z = gradientDescent(O,Y,X)
odash=ones(1,785);
truthvalue=true;
count=0;
  while truthvalue,
    k=newTheta(O,h(O,X),Y,X,60000,0.01);
    odash=O;
    O=k;
	if size(O(odash-O>0.00001),2)<200,
		truthvalue=false;
	end;
	count=count+1;
	display(count);
  end;
    Z=O;
end

O7=rand(1,785);

O7=gradientDescent(O7,Y,X);

O7

save Thetafor7.txt O7 -ascii;
save Thetafor7Binary.dat O7; 


