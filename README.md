# devops-case-study

This document provides an overview on DevOps CI CD pipeline.
‘DevOps Case Study’ job is created in Jenkins which will do the following -

1.	Pull the source from github (git clone)
2.	Package application using Maven
3.	Perform testing using Maven
4.	Code coverage and quality testing using SonarQube
5.	Build Docker image
6.	Push docker image on Docker hub
7.	Create Kubernetes service
8.	Create Kubernetes deployment
9.	Run application in Kubernetes cluster
10.	Email Notification on success and failure.

