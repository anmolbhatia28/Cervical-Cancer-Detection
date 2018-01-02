
#Model
Alexnet

#Dataset
Box-data 2 : https://drive.google.com/file/d/1JnKTN71-ZaNC5LvkloiVYe9NPeEH-l14/view?usp=sharing 

#Command on floydhub
floyd run --env torch --data anmolbhatia28/projects/box-data/2/output:images --gpu "th main.lua -data /images/Parent/d1"

##All the hyper-parameters are mentioned in opts.lua

