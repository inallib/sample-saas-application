cd "PATH_TO_YOUR_WORKSPACE_JENKINS_SERVER_WHERE_THIS_HELM_CHART_IS_GOT_CLONED"

kubectl apply -f nginx-ingress-controller-deploy/ns-and-sa.yaml
kubectl apply -f nginx-ingress-controller-deploy/default-server-secret.yaml
kubectl apply -f nginx-ingress-controller-deploy/nginx-config.yaml
kubectl apply -f nginx-ingress-controller-deploy/rbac.yaml
kubectl apply -f nginx-ingress-controller-deploy/ingress-class.yaml
kubectl apply -f nginx-ingress-controller-deploy/nginx-ingress.yaml
kubectl apply -f nginx-ingress-controller-deploy/loadbalancer-aws-elb.yaml

kubectl apply -f nginx-ingress-controller-deploy/nginx-config-upgrade.yaml
kubectl apply -f nginx-ingress-controller-deploy/default-server-secret-upgrade.yaml

