helm install stable/nginx-ingress --namespace kube-system --set rbac.create=true,controller.image.repository="quay.io/kubernetes-ingress-controller/nginx-ingress-controller-arm",defaultBackend.enabled="false",controller.service.enableHttps="false",controller.service.type="NodePort",controller.service.nodePorts.http="30100"

kubectl apply -f k8s/monitoring/prometheus-operator/
kubectl apply -f k8s/monitoring/node-exporter/
kubectl apply -f k8s/monitoring/kube-state-metrics/
kubectl apply -f k8s/monitoring/k8s/
kubectl apply -f k8s/monitoring/prometheus/
kubectl apply -f k8s/monitoring/prometheus-adapter/
kubectl apply -f k8s/monitoring/grafana/