pipeline {
  agent any
  environment {
    protocol = 'http://'
    registry = "localhost:5000"
    buildName = 'centos'
    buildTag = ':7'
    buildLabel = '--label org.label-schema.build-date=`date +%Y%m%d` .'
  }
  triggers {
    cron('H/15 * * * *')
  }
  stages {
    stage('Build Image') {
      steps {
        timestamps {
          script {
            docker.withRegistry("${protocol}${registry}", '') { 
              def dockerImage = docker.build("${buildName}${buildTag}", "${buildLabel}")
              dockerImage.push()
            }
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
