pipeline{
   agent{label 'linux'}
   environment{
     DOCKERHUB_CREDENTIALS=credentials('Dockerhub')
   }
    stages{
        stage('gitclone'){
            steps{
                sh 'https://github.com/MadarapuMounika/jenkins.git'
               echo "cloned"
            }
          }
        stage('build'){
            steps{
               sh 'docker build -t mounika0719/jenkinsex1 .'
               echo "builded"
            }
        }
        stage('login'){
             steps{
                 sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
                echo "loged in"
            }
        }
        stage('push'){
             steps{
                 sh 'docker push mounika0719/jenkinsex1:latest'
                echo "pushed image"
                 }
        }
     }
     post{
        always{
            sh 'docker logout'
           echo "logged out"
        }
     }
}

