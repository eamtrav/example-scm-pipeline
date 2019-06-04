pipeline {
  agent any
  environment {
    registry = "centos"
    dockerImage = ''
  }
  stages {
    stage('Build Image') {
      steps {
        sh 'date'
        echo 'Building Image...'
        script {
          dockerImage = docker.build("mybuild", "--label date=$(date +%Y%m%d)")
        }
      }
    }
    stage('Deploy Image') {
      steps {
        echo 'Deploying Image...'
        script {
          docker.withRegistry('http://localhost:5000', '') { 
            dockerImage.push()
          }
        }
      }
    }
    stage('Delete Image') {
      steps {
        echo 'Deleting Image...'
        sh "docker rmi mybuild"
      }
    }
  }
}
