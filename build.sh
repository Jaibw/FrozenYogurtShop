#!/bin/bash
DOCKERID=training122021
PROJECT=website-jai
IMAGE=$DOCKERID/$PROJECT:$BUILD_NUMBER

docker build -t $IMAGE .
docker push $IMAGE

sed "s/jaibw/$DOCKERID/g" k8s-deploy.yaml > deploy1.yaml 
sed "s/frozenyogurtshop/$PROJECT/g" deploy1.yaml > deploy2.yaml 
sed "s/latest/$BUILD_NUMBER/g" deploy2.yaml > deploy.yaml 
kubectl apply -f deploy.yaml 
