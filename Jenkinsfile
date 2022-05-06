pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                sh "export KUBECONFIG=~/auth/k8s-devconfig
                    sed -i 's/username/$JOB_BASE_NAME/g' k8s-deploy.yaml
                    kubectl apply -f k8s-deploy.yaml
                    kubectl get pods | grep jai
                    kubectl get svc | grep jai"
            }
        }
    }
}
