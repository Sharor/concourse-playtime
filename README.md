# concourse-playtime
This project started as a small project attempting to set up a concourse pipeline, and has now evolved into a deployment pipeline to minikube (kubernetes).

The concourse pipeline takes a shot at implementing a Praqma pipeline (http://www.praqma.com/), but only barely scraped the continuous integration, instead focussing on the deployment. 

Currently, as of moment of writing, the deployment is to compile a dotnet project (contained in the dotnet-testfolder) into a docker box, which is then put on kubernetes minikube.



## Choices made for the pipeline
The pipeline is kept as generic as was possible. It should work with very little changes from language to language, as long as git is used as the version control, since release notes and versioning runs off git commit messages.

The versioning runs based on wincrementor, written by Mads Nielsen for Praqma (https://github.com/Praqma/wincrementor).

Release notes are extracted in a similar fashion, based on jira or github issues and commit messages referencing them. This is a project maintained by Praqma as well, found here: [Praqmatic-Automated-Changelog](https://github.com/Praqma/Praqmatic-Automated-Changelog)

