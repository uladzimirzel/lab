pipeline {
    agent any
    
    stages {
        stage('Stage 1 -> install apt && ansible') {
            steps {
                sh 'sudo apt update -y'
                sh 'sudo apt install wget -y'
                sh 'sudo apt install unzip -y'
                sh 'sudo apt install ansible -y'
                sh 'sudo apt install docker.io -y'
                sh 'sudo apt install python3 -y'
                sh 'sudo apt install nano -y'
            }
        }
        
    }
}