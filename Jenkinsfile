pipeline{
   agent{label 'linux'}
   environment{
     DOCKERHUB_CREDENTIALS=credentials('Dockerhub')
   }
    stages{
        stage('gitclone'){
            steps{
                https://github.com/MadarapuMounika/jenkins.git
            }
          }
        stage('build'){
            steps{
               sh 'docker build -t mounika0719/jenkinsex1 .'
            }
        }
        stage('login'){
             steps{
                 sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage('push'){
             steps{
                 sh 'docker push mounika0719/jenkinsex1:latest'
                 }
        }
     }
     post{
        always{
            sh 'docker logout'
        }
     }
}

