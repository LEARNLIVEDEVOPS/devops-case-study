# devops-case-study

This document provides an overview on DevOps CI CD pipeline.
‘DevOps Case Study’ job is created in Jenkins which will do the following -

1.	Pull the source from github (git clone)
2.	Package application using Maven
3.	Perform maven test
4.  Perform JUnit testing
5.	Code coverage and quality testing using SonarQube
6.	Build Docker image
7.	Push docker image on Docker hub
8.	Create Kubernetes service
9.	Create Kubernetes deployment
10.	Run application in Kubernetes cluster
11.	Email Notification on success and failure.
