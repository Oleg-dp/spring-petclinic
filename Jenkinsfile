pipeline {
    agent any
    stages {
        stage('Build Petclinic') {
            steps {
                echo 'Running build automation'
                sh './mvnw package'
                archiveArtifacts artifacts: 'target/*.jar'
            }
        }
    
        stage('Build Docker Image') {
            steps {
                script {
                    app = docker.build("Oleg-dp/my-test-petclinic")
                    app.inside {
                        sh 'echo $(curl localhost:8081)'
                    }
                }
            }
        }
    }
}
