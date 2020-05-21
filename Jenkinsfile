node {
    stage('Preparation') { 
        git 'https://github.com/Jaibw/FrozenYogurtShop.git'   
        
    }   
    stage('Deploy - Test Server') {     
        sh 'scp -r -i ~/devops.pem * ubuntu@172.31.23.185:/var/www/html/'   
        
    }   
    stage('Test') {      
        sh '/usr/local/bin/linkchecker http://13.126.245.141'   
        
    }   
    stage('Deploy - Staging Server') {     
        sh 'scp -r -i ~/devops.pem * ubuntu@172.31.17.43:/var/www/html/'   
        
    }      
    stage('Deploy - Production Server') {     
        sh 'scp -r -i ~/devops.pem * ubuntu@172.31.22.102:/var/www/html/'   
        
    }
}
