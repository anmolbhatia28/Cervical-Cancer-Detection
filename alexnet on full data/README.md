
# Model
Alexnet

# Dataset
Full data 1 : https://drive.google.com/file/d/1Jgi8D2-_kRN898f9RyPBaX1MQzbiPXqJ/view?usp=sharing


# Command on floydhub
floyd run --env torch --data anmolbhatia28/projects/full-data/1/output:images --data anmolbhatia28/projects/test/14/output:model --gpu "th main.lua -data /images/Parent/d1 -retrain /model/model_.t7 -epochNumber 51"

## All the hyper-parameters are mentioned in opts.lua

