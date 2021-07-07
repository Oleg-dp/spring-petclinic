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
    }
}
