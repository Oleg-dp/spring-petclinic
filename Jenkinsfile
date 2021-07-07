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
                    app = docker.build("olegdp/my-test-petclinic")
//                    app.inside {
//                        sh 'echo $(curl localhost:8081)'
//                    }
                }
            }
        }
        stage('Push Docker Image') {

            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'jenkins-dockerhub-olegdp') {
                        app.push("${env.BUILD_NUMBER}")
                        app.push("latest")
                    }
                }
            }
        }
    }
}
