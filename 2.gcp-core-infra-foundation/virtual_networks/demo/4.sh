gcloud beta compute --project=qwiklabs-gcp-02-cb6521dfa652 instances create managementnet-us-vm --zone=us-central1-c \
--machine-type=n2-standard-2 --subnet=managementsubnet-us --network-tier=PREMIUM --maintenance-policy=MIGRATE \
--service-account=371015851836-compute@developer.gserviceaccount.com
--scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append \
--image=debian-10-buster-v20200910 --image-project=debian-cloud --boot-disk-size=10GB --boot-disk-type=pd-standard \
--boot-disk-device-name=managementnet-us-vm --no-shielded-secure-boot --shielded-vtpm \
--shielded-integrity-monitoring --reservation-affinity=any




gcloud compute instances create privatenet-us-vm --zone=us-central1-c --machine-type=f1-micro --subnet=privatesubnet-us --image-family=debian-10 --image-project=debian-cloud --boot-disk-size=10GB --boot-disk-type=pd-standard --boot-disk-device-name=privatenet-us-vm

student_02_1af683f90062@cloudshell:~ (qwiklabs-gcp-02-cb6521dfa652)$ gcloud compute instances create privatenet-us-vm --zone=us-central1-c --machine-type=f1-micro --subnet=privatesubnet-us --image-family=debian-10 --image-project=debian-cloud --boot-disk-size=10GB --boot-disk-type=pd-standard --boot-disk-device-name=privatenet-us-vm
WARNING: You have selected a disk size of under [200GB]. This may result in poor I/O performance. For more information, see: https://developers.google.com/compute/docs/disks#performance.
Created [https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-02-cb6521dfa652/zones/us-central1-c/instances/privatenet-us-vm].
NAME              ZONE           MACHINE_TYPE  PREEMPTIBLE  INTERNAL_IP  EXTERNAL_IP   STATUS
privatenet-us-vm  us-central1-c  f1-micro                   172.16.0.2   34.71.179.26  RUNNING
student_02_1af683f90062@cloudshell:~ (qwiklabs-gcp-02-cb6521dfa652)$ gcloud compute instances list --sort-by=ZONE
NAME                 ZONE            MACHINE_TYPE   PREEMPTIBLE  INTERNAL_IP  EXTERNAL_IP    STATUS
mynet-eu-vm          europe-west1-c  e2-medium                   10.132.0.2   34.76.89.6     RUNNING
managementnet-us-vm  us-central1-c   n2-standard-2               10.130.0.2   35.202.244.39  RUNNING
mynet-us-vm          us-central1-c   e2-medium                   10.128.0.2   34.69.248.251  RUNNING
privatenet-us-vm     us-central1-c   f1-micro                    172.16.0.2   34.71.179.26   RUNNING
student_02_1af683f90062@cloudshell:~ (qwiklabs-gcp-02-cb6521dfa652)$



