pipeline {
    agent any
    stages {
        stage('Step one - > Update and install docker') {
            steps {
                sh 'sudo apt update -y'
                sh 'sudo apt install docker.io -y'
            }
        }

        stage('Step two - > Validate Dockerfile') {
            steps {
                dir ('docker') {
                    sh 'sudo docker pull hadolint/hadolint'
                    sh 'sudo docker run --rm -i hadolint/hadolint < Dockerfile'
                }
            }
        }
        stage('Step three - > Build and Run container') {
            steps {
                dir('docker') {
                    sh 'sudo docker build . -t ${VERSION}'
                    sh 'sudo docker run -d --name nginx-${VERSION} -p 9999:80 nginx:${VERSION}'
                }
            }
        }
    }
}