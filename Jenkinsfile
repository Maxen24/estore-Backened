pipeline{
    agent any 
    tools{
        maven 'Maven'
    }
    stages{
        stage('Build maven'){
            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Maxen24/estore-Backened']])
                bat 'mvn clean package'
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    bat 'docker build -t estorepj .'
                }
            }
        }
    }
}