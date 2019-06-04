pipeline {
  agent {
    docker {
      args '--label date=$(date %Y%m%d)'
    }
  }
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
          dockerImage = docker.build registry + ":7"
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
        sh "docker rmi $registry:7"
      }
    }
  }
}
