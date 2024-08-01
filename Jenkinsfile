pipeline {
    agent any
    stages {
        stage('Step one') {
            steps {
                sh 'sudo apt update -y'
                sh 'sudo apt install docker.io -y'
            }
        }
    }
}