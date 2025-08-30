#!/bin/bash

<< Task
Deploy a Python app and then locate for the errors and debugging criteria
Task

code_clone(){

	echo "Cloning the Python app"
       gt clone https://github.com/BasitSol/Silence_Python.git	
}

install_requirements(){

	echo "Installing Depencies"
	sudo apt-get install docker.io nginx -y
}

required_restarts(){

	sudo systemctl enable docker
	sudo systemctl enable nginx
}

deploy(){

docker build -t notes-app
docker run -d -p 8000:8000 notes-app:latest
}

echo "**************** DEPLOYMENT STARTED***************"
code_clone
install_requirements
required_restarts
deploy

echo "**************** DEPLOYMENT END ***************"

