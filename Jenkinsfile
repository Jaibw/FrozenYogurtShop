node {
   
    stage('Preparation') { 
       
        git 'https://github.com/Jaibw/FrozenYogurtShop.git'
       
    }
    stage('Setting Env') {
        sh("export KUBECONFIG=~/auth/k8s-devconfig")
    }
    stage('Apply Changes') {
        sh("sed -i 's/username/${env.JOB_BASE_NAME}/g' k8s-deploy.yaml")
    }
    stage('Deployment') {
        sh("kubectl apply -f k8s-deploy.yaml")
        sh("kubectl get pods | grep ${env.JOB_BASE_NAME}")
        sh("kubectl get svc | grep ${env.JOB_BASE_NAME}")
    }
    
}
