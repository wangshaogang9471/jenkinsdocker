pipeline {
    agent any

    stages {
        stage('拉取代码') {
            steps {
                echo '开始拉取代码'
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'github', url: 'https://github.com/wangshaogang9471/jenkinsdocker.git']]])
                echo '代码拉取完成'
            }
        }
        stage('构建项目') {
            steps {
                echo '开始构建项目'
                sh 'sudo mvn clean package dockerfile:build'
                echo '项目构建结束'
            }
        }
        stage('publish project') {
            steps {
                echo 'publish project'
            }
        }
    }
}
