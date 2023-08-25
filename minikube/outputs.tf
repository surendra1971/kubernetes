output "kube_config" {
  value = "Copy Kubernetes Configuration File From MiniKube\nExecute the following command\n\n\nsudo scp centos@${module.minikube.public_ip}:/home/centos/kubeconfig /tmp/kubeconfig\nsudo chmod ugo+r /tmp/kubeconfig\n\n\n"
}