pipeline {
    agent {
        kubernetes {
            label 'nodejs-kaniko'        // The pod template label you set
            defaultContainer 'jnlp'      // Container name in pod template
        }
    }

    stages {
        stage('Test Environment') {
            steps {
                container('jnlp') {      // Container in pod
                    echo 'Running on Kubernetes agent!'
                    sh 'echo "Hello from Kubernetes Agent!"'
                    sh 'uname -a'
                    sh 'whoami'
                }
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished.'
        }
    }
}