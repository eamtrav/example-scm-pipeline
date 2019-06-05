pipeline {
  agent any
  environment {
    protocol = 'http://'
    registry = "localhost:5000"
    buildName = 'centos'
    builddTag = ':7'
    buildLabel = '--label org.label-schema.build-date=\$(date +%Y%m%d) .'
    dockerImage = ''
  }
  stages {
    stage('Build Image') {
      steps {
        script {
          docker.withRegistry(${protocol}${registry}, '') { 
            dockerImage = docker.build(${buildName}${buildTag}, ${buildLabel})
            dockerImage.push()
          }
        }
      }
    }
    stage('Cleanup') {
      steps {
        echo 'cleaning up...'
        sh 'docker rmi ${registry}/${buildName}${buildTag}'
      }
    }
  }
}
