resource "helm_release" "argo-cd" {
  chart      = "argo-cd"
  name       = "argo-cd"
  repository = "https://argoproj.github.io/argo-helm"
  namespace  = "argo-cd"
}

resource "kubernetes_namespace" "argo-cd" {
  metadata {
    annotations = {
      name = "argo-cd"
    }

    labels = {
      mylabel = "argo-cd"
    }

    name = "argo-cd"
  }
}


