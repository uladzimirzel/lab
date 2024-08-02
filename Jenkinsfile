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
                withCredentials([usernamePassword(credentialsId: '7339fbef-c30a-4797-b512-ea236e237b36', passwordVariable: 'PASSWORD', usernameVariable: 'LOGIN')]) {
                    sh 'sudo docker login --username ${LOGIN} --password ${PASSWORD} docker.io'
                    sh 'sudo docker tag nginx:${VERSION} uladzimirzel/lab:nginx'
                    sh 'sudo docker push uladzimirzel/lab:nginx:${VERSION}'
                }          
            }
        }
    }
}