pipeline{
  agent{
    docker{
      image "maven:3.6.1-jdk-14"
      args "-p 8080:8080"
    }
  }
  stages{
    stage("Build Stage"){
      steps{
        sh 'mvn package'
      }
    }
    stage("Test Stage"){
      steps{
        input message:"Click proceed after testing"
      }
    }
  }
}
