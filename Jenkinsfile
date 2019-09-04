pipeline{
  agent any
  stages{
    stage("Create Docker Image"){
      steps{
        sh 'docker build -t bmdivakar/demo-java:1.0 .'
      }
    }
    stage("Build and Test"){
      agent{
        docker{
          image "bmdivakar/demo-java:1.0"
          args "-p 8080:8080 --name bmd"
        }
      }
      steps{
        sh 'mvn clean package'
        sh 'cp ./target/demo.war /usr/local/tomcat/webapps/demo.war'
        input message:"Click proceed after testing"
      }
    }
  }
}
