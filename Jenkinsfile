pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Running build automation'
                sh './mvnw package'
                sh 'nohup /usr/bin/java -Dserver.port=5555 -Dhudson.util.ProcessTree.disable=true -jar ./target/*.jar > /dev/null 2>&1 &'                
            }
        }
    }
}
