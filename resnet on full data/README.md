
#Model
Resnet

#Dataset
Full-data 1 : 
resnet-101-pretrained: https://d2j0dndfm35trm.cloudfront.net/resnet-101.t7


#Command on floydhub
floyd run --env torch --data anmolbhatia28/datasets/resnet-101-pretrained/1:model --data anmolbhatia28/projects/full-data/1/output:images --gpu "th main.lua -nEpochs 65 -batchSize 16 -retrain /model/resnet-101.t7 -data /images/Parent/d1 -resetClassifier true -nClasses 3 -LR 0.001"

#Saved Model
https://drive.google.com/open?id=0B1rOkxxEIqaxdTNjdkdhaEQtN1E

##All the hyper-parameters are mentioned in opts.lua

