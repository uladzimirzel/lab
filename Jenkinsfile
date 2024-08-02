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
                sh 'sudo docker pull hadolint/hadolint'
                 sh 'sudo docker run --rm -i hadolint/hadolint < Dockerfile'
            }
        }
        stage('Step three - > Build and Run container') {
            steps {
                sh 'sudo docker build . -t nginx:${VERSION}'
                sh 'sudo docker run -d --name nginx -p 9999:80 nginx:${VERSION}'
            }
        }
        stage('Step four - > Push docker hub') {
            steps {
                withDockerRegistry(credentialsId: '7339fbef-c30a-4797-b512-ea236e237b36', url: 'https://hub.docker.com/repository/docker/uladzimirzel/lab/general') {
                    
                }
            }
        }
    }
}