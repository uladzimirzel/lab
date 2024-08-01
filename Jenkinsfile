pipeline {
    agent any
    
    stages {
        stage('Stage 1 -> install apt && ansible') {
            steps {
                sh 'apt update -y'
                sh 'apt install wget -y'
                sh 'apt install unzip -y'
                sh 'apt install ansible -y'
                sh 'apt install docker.io -y'
                sh 'apt install python3 -y'
                sh 'apt install nano -y'
            }
        }
        
    }
}