cd "PATH_TO_YOUR_WORKSPACE_JENKINS_SERVER_WHERE_THIS_HELM_CHART_IS_GOT_CLONED"

kubectl create namespace $1


cd pre-deploy
helm install your-application-name . --namespace=$1


cd ..
cd ingress-rules-deploy
kubectl apply -f ingress-rules-master.yaml
kubectl apply -f ingress-rules-minion.yaml --namespace=$1
