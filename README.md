# Prototype1
The code for the first prototype 

This is a command line utiltiy which accepts a single image containing a single number with resolution 28*28 and
converts the given number into a text. The text can be copied and used by the computer as if it was typed.
 


To run on Windows.

1.Install Octave from official octave website.

2. Add octave to windows envirnment variable.


		C:\Octave\Octave-4.2.0\bin.
		
		Add to system path variable.
				
		

3. GO the ICRPrototype folder.


4. Open Command prompt and type.



octave NumberModule.m image


eg: if Image name is 5c.jpeg


then


octave NumberModule.m 5c.jpeg


#############################################################
If you want to train the program 
#############################################################

1. Copy train-image.idx3-ubyte and train-labels.idx3-ubyte from training script folder to respective number folder 

2. Run trainme.m from command line inside the respective number folder.


