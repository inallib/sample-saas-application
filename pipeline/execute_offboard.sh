cd "PATH_TO_YOUR_WORKSPACE_JENKINS_SERVER_WHERE_THIS_HELM_CHART_IS_GOT_CLONED"

cd pre-deploy
helm uninstall your-application-name --namespace=$1

kubectl delete namespace $1
