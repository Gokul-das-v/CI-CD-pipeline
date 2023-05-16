pipeline {
    agent any
    stages {
        stage('Building') {
            steps {
		sh '''
		   ./jenkins/build/mvn_build.sh mvn -B -DskipTests clean package
		   ./jenkins/build/build.sh
 		  
		   '''
                 }
                 }

        stage('Tesing') {
            steps {
                sh './jenkins/test/mvn_test.sh mvn test'
                 }
                 }

        stage('Pushing') {
            steps {
                 sh './jenkins/push/push.sh'
                  }
                  }

        stage('Deplpoying') {
            steps {
                 sh './jenkins/deploy/deploy.sh'
                  }
            	 }
              }
          }
