# concourse-playtime
This project started as a small project attempting to set up a concourse pipeline, and has now evolved into a deployment pipeline to minikube (kubernetes).

The concourse pipeline takes a shot at implementing a Praqma pipeline (http://www.praqma.com/), but only barely scraped the continuous integration, instead focussing on the deployment. 

Currently, as of moment of writing, the deployment is to compile a dotnet project (contained in the dotnet-testfolder) into a docker box, which is then put on kubernetes minikube.



## Choices made for the pipeline
The pipeline is kept as generic as was possible. It should work with very little changes from language to language, as long as git is used as the version control, since release notes and versioning runs off git commit messages.


### Versioning
The versioning runs based on wincrementor, written by Mads Nielsen for Praqma (https://github.com/Praqma/wincrementor).
It follows the semver standard, and +major or +minor will be a major or minor bump respectively. If none of those were appended to a commit message since the "last" point of versioning it is assumed patch. 

For example (commit history taken from commit 05cf3ff to 31b63d4 for this project): 
- 31b63d4 +major test
- a9b3019 Resource might overwrite number file
- 7df2c6d Cache is being used when file changes, trying to troubleshoot that
- a5fb571 meant to cat
- a911d1c Is this overwritten?
- ca71478 find version file to echo in wincrementor output
- f883f20 debug succesful
- 20f1e8a debug
- a1d81cb debug
- d359938 Wrong path
- 05cf3ff +minor test

Assuming the previous version was 0.0.0, this would bump to 1.0.0 because of the +major. If versioning happened at a9b3019 instead, it would just be 0.1.0

### Release notes
Release notes are extracted in a similar fashion, based on jira or github issues and commit messages referencing them. This is a project maintained by Praqma as well, found here: [Praqmatic-Automated-Changelog](https://github.com/Praqma/Praqmatic-Automated-Changelog)

