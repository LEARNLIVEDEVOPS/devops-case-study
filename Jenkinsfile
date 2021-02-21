pipeline {
    agent any
    stages {
        stage ('Clone Repo') {
            steps {
                /* Clone git Repository */
                checkout scm
            }
        }

        stage ('Test Package') {
            steps {
                /* test application using maven */
                sh 'mvn test'
            }
            post {
                always {
                    /* Perform JUnit testing
                    * sh './gradlew check' */
                    archiveArtifacts "target/**/*"
                    junit '**/target/*-reports/TEST-*.xml'
                }
            }
        }
  
        stage ('Compile & Package') {
            steps {
                /* Package Application using maven */
                sh 'mvn package'
            }
        }
        
}
