pipeline{
  agent any
  stages{
    stage("Create Docker Image"){
      steps{
        sh 'docker build -t bmdivakar/demo-java:1.0 .'
      }
    }
    stage("Build App"){
      agent{
        docker{
          image "bmdivakar/demo-java:1.0"
          args "-p 8080:8080 --name bmd"
        }
      }
      steps{
        sh 'mvn package'
        input message:"Click proceed after testing"
      }
    }
  }
}
