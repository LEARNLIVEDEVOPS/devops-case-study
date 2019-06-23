node{

   def dockerImg

   stage('Clone Repository'){
        /* Clone git Repository */
        /* git 'https://github.com/juned/DevOpsClassCodes' */
        checkout scm
   }
   stage('Compile-Package'){
        /* Get maven home path */
        def mvnHome =  tool name: 'maven', type: 'maven'
        sh "${mvnHome}/bin/mvn package"
   }

   stage('Test-Package'){
        /* Get maven home path */
        def mvnHome =  tool name: 'maven', type: 'maven'
        sh "${mvnHome}/bin/mvn test"
   }

   stage('JUnit Test'){
        /* Perform JUnit testing 
	 * sh './gradlew check' */
        archive "target/**/*"
	junit '**/target/*-reports/TEST-*.xml'
   }

   stage('SonarQube Analysis') {
        def mvnHome =  tool name: 'maven', type: 'maven'
        withSonarQubeEnv('sonar') {
          sh "${mvnHome}/bin/mvn sonar:sonar"
        }
   }

   stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */
        /* sh 'cp ${JENKINS_HOME}/workspace/${JOB_NAME}/target/addressbook.war .' */
        dockerImg = docker.build("juned/myapp")
   }

   stage('Push image') {
        /* Finally, we'll push the image with two tags:
         * First, the incremental build number from Jenkins
         * Second, the 'latest' tag. */

        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            dockerImg.push("${env.BUILD_NUMBER}")
            dockerImg.push("latest")
        }
   }

   stage('Email Notification'){
        mail bcc: '', body: " Build Result : Success <br>Project: ${env.JOB_NAME} <br>Build Number: ${env.BUILD_NUMBER} <br>Build URL: ${env.BUILD_URL} <br>App URL: http://34.93.78.26/addressbook", cc: '', charset: 'UTF-8',  mimeType: 'text/html', replyTo: '', subject: "Jenkins Build Status -> ${env.JOB_NAME}", to: "jkhan6722@gmail.com";  
   }

}
