kubectl create namespace cert-manager
helm install \
  cert-manager jetstack/cert-manager \
  --namespace cert-manager \
  --version v1.6.1 \
  --set installCRDs=true
kubectl apply -f certs-manager/letsencrypt-cert.yaml