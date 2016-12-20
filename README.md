# concourse-playtime
This project started as a small project attempting to set up a concourse pipeline, and has now evolved into a deployment pipeline to minikube (kubernetes).

The concourse pipeline takes a shot at implementing a Praqma pipeline (http://www.praqma.com/), but only barely scraped the continuous integration, instead focussing on the deployment. 

Currently, as of moment of writing, the deployment is to compile a dotnet project (contained in the dotnet-testfolder) into a docker box, which is then put on kubernetes minikube.

