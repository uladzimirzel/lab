pipeline {
    agent { dockerfile true}
    stages {
        stage('Step one') {
            steps {
                sh 'nginx --version'
            }
        }
    }
}