node {
    def project = "frozenyogurtshop"
    def image = "jaibw/${project}:dev-${env.BUILD_NUMBER}"
    stage('Preparation') { 
       
        git 'https://github.com/Jaibw/FrozenYogurtShop.git'
       
    }
    stage('Build Image') {
        sh("docker build -t ${image} .")
    }
    stage('Push Image') {
        sh("docker push ${image}")
    }
    stage('Deployment') {
        sh("sed 's/latest/dev-${env.BUILD_NUMBER}/g' k8s-deploy.yaml > k8s-deploy-jenkins.yaml")
        sh("kubectl apply -f k8s-deploy-jenkins.yaml")
    }
    
}
