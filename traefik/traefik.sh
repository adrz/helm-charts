# activate microk8s enable dns
# microk8s.enable metallb:$(curl ipinfo.io/ip)-$(curl ipinfo.io/ip)
helm repo add traefik https://helm.traefik.io/traefik
helm repo update
kubectl create namespace traefik
helm install traefik traefik/traefik -n traefik --values=charts/traefik/values.yaml