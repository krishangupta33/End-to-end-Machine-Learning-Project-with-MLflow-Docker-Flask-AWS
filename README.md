# End-to-end-Machine-Learning-Project-with-MLflow


## Workflows

1. Update config.yaml
2. Update schema.yaml
3. Update params.yaml
4. Update the entity
5. Update the configuration manager in src config
6. Update the components
7. Update the pipeline 
8. Update the main.py
9. Update the app.py


# How to run?
### STEPS:

Clone the repository

```bash
https://github.com/krishangupta33/End-to-end-Machine-Learning-Project-with-MLflow-Docker-Flask-AWS
```
### STEP 01- Create a conda environment after opening the repository

```bash
conda create -n mlproj python=3.8 -y
```

```bash
conda activate mlproj
```


### STEP 02- install the requirements
```bash
pip install -r requirements.txt
```


```bash
# Finally run the following command
python app.py
```

Now,
```bash
open up you local host and port
```



## MLflow

[Documentation](https://mlflow.org/docs/latest/index.html)


##### cmd
- mlflow ui

### dagshub
[dagshub](https://dagshub.com/)

MLFLOW_TRACKING_URI=https://dagshub.com/krishangupta33/End-to-end-Machine-Learning-Project-with-MLflow-Docker-Flask-AWS.mlflow \
MLFLOW_TRACKING_USERNAME=krishangupta33 \
MLFLOW_TRACKING_PASSWORD=b2afd9e768088515f8bec09ae9c28b80efbc0dd9 \
python script.py

Run this to export as env variables:

```bash

export MLFLOW_TRACKING_URI=https://dagshub.com/krishangupta33/End-to-end-Machine-Learning-Project-with-MLflow-Docker-Flask-AWS.mlflow

export MLFLOW_TRACKING_USERNAME=krishangupta33 

export MLFLOW_TRACKING_PASSWORD=b2afd9e768088515f8bec09ae9c28b80efbc0dd9

```



# AWS-CICD-Deployment-with-Github-Actions

## 1. Login to AWS console.

## 2. Create IAM user for deployment

	#with specific access

	1. EC2 access : It is virtual machine

	2. ECR: Elastic Container registry to save your docker image in aws


	#Description: About the deployment

	1. Build docker image of the source code

	2. Push your docker image to ECR

	3. Launch Your EC2 

	4. Pull Your image from ECR in EC2

	5. Lauch your docker image in EC2

	#Policy:

	1. AmazonEC2ContainerRegistryFullAccess

	2. AmazonEC2FullAccess

	
## 3. Create ECR repo to store/save docker image
    - Save the URI: 566373416292.dkr.ecr.ap-south-1.amazonaws.com/mlproj

	
## 4. Create EC2 machine (Ubuntu) 

## 5. Open EC2 and Install docker in EC2 Machine:
	
	
	#optinal

	sudo apt-get update -y

	sudo apt-get upgrade
	
	#required

	curl -fsSL https://get.docker.com -o get-docker.sh

	sudo sh get-docker.sh

	sudo usermod -aG docker ubuntu

	newgrp docker
	
# 6. Configure EC2 as self-hosted runner:
    setting>actions>runner>new self hosted runner> choose os> then run command one by one


# 7. Setup github secrets:

    AWS_ACCESS_KEY_ID=

    AWS_SECRET_ACCESS_KEY=

    AWS_REGION = us-east-1

    AWS_ECR_LOGIN_URI = demo>>  566373416292.dkr.ecr.ap-south-1.amazonaws.com

    ECR_REPOSITORY_NAME = simple-app




## About MLflow 
MLflow

 - Its Production Grade
 - Trace all of your expriements
 - Logging & tagging your model


## Folder Structure and Files Explanation

`.github/workflows`: Created for CI/CD pipeline using GitHub Actions for deployment.

`.github/workflows/.gitkeep`: This file ensures the .github/workflows folder is kept in the Git repo. Git requires this as it doesn't allow empty folders.

`template.py`: Template file for creating the folder and file structure for any Machine Learning project.

`research`: Folder containing all research work for the project in Jupyter notebook files.


`artifact`: This folder contains all the artifacts of the project like model files, data validation output, tranformed data etc.

`config/config.yaml`: This file contains all the configuration for the project

`src/mlProject/components`: This folder contains all the components of the project like data validation, data transformation, model training, model evaluation etc.

`__init__.py in each folder`: This is a constructor file created to use python files in that directory as a package


`static and templates`: These folders contains html and css files for the frontend and used for flask app deployment

`app.py`: This is the main file for flask app deployment

`main.py`: This is the main file for the project

`params.yaml`: This file contains all the parameters for the ML Model

`schema.yaml`: This file contains the schema of the data

`requirements.txt`: This file contains all the required libraries for the project

`Dockerfile`: This file contains all the commands to create a docker image

`.gitignore`: This file contains all the files and folders to be ignored by git

`setup.py`:to install all the files mentioned in setup.py as a local package


## Packages and libraries used

- `pandas`: To read and manipulate data
- `numpy`: To perform mathematical operations
- `scikit-learn`: To perform machine learning operations
- `mlflow`: To track all the experiments and model parameters
- `pyyaml`: To read yaml files
- `pytest`: To perform unit testing
- `dagshub`: To track all the experiments and model parameters
- `flask`: To deploy the model as a web app
- `-e .`: this will look for the setup.py  and install all the files mentioned in setup.py as a local package
- `from ensure import ensure_annotations`: to use @ensure_annotations decorator to ensure the type of the input parameters in a function(refer research/trial.py for more details)
- `from box import ConfigBox`: used to call dictionary values using . operator instead of ['key']. This makes the code developement easy and fast (refer research/trial.py for more details)
- `joblib`: alternative to pickle to save the model
- `docker`: to create docker image of the project to host in cloud platforms like AWS, GCP, Azure etc.


