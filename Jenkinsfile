node {
    stage('Preparation') { 
        git 'https://github.com/Jaibw/FrozenYogurtShop.git'   
        
    }   
    stage('Deploy - Test Server') {     
        sh 'scp -r -i ~/devops.pem * ubuntu@15.228.74.56:/var/www/html/'   
        
    }   
    stage('Test') {      
        sh '/usr/local/bin/linkchecker http://15.228.74.56'   
        
    }   
    stage('Deploy - Staging Server') {     
        sh 'scp -r -i ~/devops.pem * ubuntu@15.228.74.56:/var/www/html/'   
        
    }      
    stage('Deploy - Production Server') {     
        sh 'scp -r -i ~/devops.pem * ubuntu@15.228.74.56:/var/www/html/'   
        
    }
}
