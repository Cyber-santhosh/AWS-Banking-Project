pipeline {
    agent {label "jenkins-slave"}
    environment{
        JAVA_HOME='/usr/lib/jvm/java-17-openjdk-amd64'
        PATH="${env.JAVA_HOME}/bin:${env.PATH}"
        dockerusr="santhosh5895"
        dockerhub=credentials('dockerpass')
    }

    stages {
        stage('Git Checkout') {
            steps {
                git 'https://github.com/Cyber-santhosh/AWS-Banking-Project.git'
            }
        }
        stage('Building a Application') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('docker build') {
            steps {
                sh 'docker build -t ${dockerusr}/capestone:latest .'
            }
        }
        stage('docker login') {
            steps {
                sh 'echo $dockerhub_PSW | docker login -u $dockerhub_USR --password-stdin'
            }
        }
        stage('docker Push') {
            steps {
                sh 'docker push ${dockerusr}/capestone:latest'
            }
        }
        stage('Deploy in to k8s') {
            steps {
                script {
                    sshPublisher(publishers: [sshPublisherDesc(configName: 'k8s_master', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: 'kubectl apply -f bankingdeploy.yaml', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '.', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '*.yaml')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
                }
            }
        }
    }
}
