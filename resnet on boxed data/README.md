
# Model
ResNet

# Dataset
Box-data 2 : https://drive.google.com/file/d/1JnKTN71-ZaNC5LvkloiVYe9NPeEH-l14/view?usp=sharing 
resnet-34-pretrained: https://d2j0dndfm35trm.cloudfront.net/resnet-34.t7

# Command on floydhub
floyd run --env torch --data anmolbhatia28/datasets/resnet-34-pre-trained/1:model --data anmolbhatia28/projects/box-data/2/output:images --gpu "th main.lua -nEpochs 65 -retrain /model/resnet-34.t7 -data /images/Parent/d1/ -resetClassifier true -nClasses 3 -LR 0.001"

# Saved Model
https://drive.google.com/open?id=0B1rOkxxEIqaxTERrd1NaNmJXdzg

## All the hyper-parameters are mentioned in opts.lua

