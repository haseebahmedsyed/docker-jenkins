pipeline {
    agent any
	tools{
		maven 'maven'
	}
    stages {
        stage('Build Application') {
            steps {
                sh 'mvn -f pom.xml clean package'
            }
            post {
                success {
                    echo "Now Archiving the Artifacts...."
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
        }
        stage('Build Docker App'){
            steps{
                sh 'docker build -t haseeb38/dockerapp:0.0.2.RELEASE .'
            }
        }
    }
}
