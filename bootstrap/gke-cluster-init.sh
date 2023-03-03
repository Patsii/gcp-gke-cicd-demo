# Creates 3 GKE autopilot clusters
# ACTION REQUIRED! Change "project-id-here" value to the project you'll be using
export PROJECT_ID="tf-managed-project"
# Test cluster
echo "creating testcluster..."
gcloud beta container --project "tf-managed-project" clusters create-auto "testcluster" \
--region "us-central1" --release-channel "regular" --network "projects/tf-managed-project/global/networks/k8s-vpc" \
--subnetwork "projects/tf-managed-project/regions/us-central1/subnetworks/k8s-subnet" \
--cluster-ipv4-cidr "/17" --services-ipv4-cidr "/22" --async 
# Staging cluster
echo "creating stagingcluster..."
gcloud beta container --project "tf-managed-project" clusters create-auto "stagingcluster" \
--region "us-central1" --release-channel "regular" --network "projects/tf-managed-project/global/networks/k8s-vpc" \
--subnetwork "projects/tf-managed-project/regions/us-central1/subnetworks/k8s-subnet" \
--cluster-ipv4-cidr "/17" --services-ipv4-cidr "/22" --async 
# Prod cluster
echo "creating prodcluster..."
gcloud beta container --project "tf-managed-project" clusters create-auto "prodcluster" \
--region "us-central1" --release-channel "regular" --network "projects/tf-managed-project/global/networks/k8s-vpc" \
--subnetwork "projects/tf-managed-project/regions/us-central1/subnetworks/k8s-subnet" \
--cluster-ipv4-cidr "/17" --services-ipv4-cidr "/22" --async 
echo "Creating clusters! Check the UI for progress"
