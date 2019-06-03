pipeline {
  agent any
  environment {
    registry = "centos"
  }
  stages {
    stage('Build') {
      steps {
        echo 'Building...'
        script {
          docker Image = docker.build registry + ":7"
        }
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying...'
        script {
          docker.withRegistry('localhost') { 
            dockerImage.push()
          }
        }
      }
    }
  }
}
