provider "vault" {
  alias = "root_namespace"
}

provider "vault" {
  namespace = "education"
  alias     = "education_namespace"
}

provider "vault" {
  namespace = "education/training"
  alias     = "training_namespace"
}

provider "vault" {
  namespace = "enablement"
  alias     = "enablement_namespace"
}
