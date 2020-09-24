student_02_1af683f90062@cloudshell:~ (qwiklabs-gcp-02-cb6521dfa652)$ gcloud compute networks create privatenet --subnet-mode=custom

Created [https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-02-cb6521dfa652/global/networks/privatenet].
NAME        SUBNET_MODE  BGP_ROUTING_MODE  IPV4_RANGE  GATEWAY_IPV4
privatenet  CUSTOM       REGIONAL

Instances on this network will not be reachable until firewall rules
are created. As an example, you can allow all internal traffic between
instances as well as SSH, RDP, and ICMP by running:

$ gcloud compute firewall-rules create <FIREWALL_NAME> --network privatenet --allow tcp,udp,icmp --source-ranges <IP_RANGE>
$ gcloud compute firewall-rules create <FIREWALL_NAME> --network privatenet --allow tcp:22,tcp:3389,icmp

student_02_1af683f90062@cloudshell:~ (qwiklabs-gcp-02-cb6521dfa652)$


student_02_1af683f90062@cloudshell:~ (qwiklabs-gcp-02-cb6521dfa652)$ gcloud compute networks subnets create privatesubnet-us --network=privatenet --region=us-central1 --range=172.16.0.0/24
Created [https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-02-cb6521dfa652/regions/us-central1/subnetworks/privatesubnet-us].
NAME              REGION       NETWORK     RANGE
privatesubnet-us  us-central1  privatenet  172.16.0.0/24
student_02_1af683f90062@cloudshell:~ (qwiklabs-gcp-02-cb6521dfa652)$

Created [https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-02-cb6521dfa652/regions/europe-west1/subnetworks/privatesubnet-eu].
NAME              REGION        NETWORK     RANGE
privatesubnet-eu  europe-west1  privatenet  172.20.0.0/20
student_02_1af683f90062@cloudshell:~ (qwiklabs-gcp-02-cb6521dfa652)$

student_02_1af683f90062@cloudshell:~ (qwiklabs-gcp-02-cb6521dfa652)$ gcloud compute networks list
NAME           SUBNET_MODE  BGP_ROUTING_MODE  IPV4_RANGE  GATEWAY_IPV4
managementnet  CUSTOM       REGIONAL
mynetwork      CUSTOM       REGIONAL
privatenet     CUSTOM       REGIONAL
student_02_1af683f90062@cloudshell:~ (qwiklabs-gcp-02-cb6521dfa652)$


student_02_1af683f90062@cloudshell:~ (qwiklabs-gcp-02-cb6521dfa652)$ gcloud compute networks subnets list --sort-by=NETWORK
NAME                 REGION                   NETWORK        RANGE
managementsubnet-us  us-central1              managementnet  10.130.0.0/20
mynetwork            us-central1              mynetwork      10.128.0.0/20
mynetwork            europe-west1             mynetwork      10.132.0.0/20
mynetwork            us-west1                 mynetwork      10.138.0.0/20
mynetwork            asia-east1               mynetwork      10.140.0.0/20
mynetwork            us-east1                 mynetwork      10.142.0.0/20
mynetwork            asia-northeast1          mynetwork      10.146.0.0/20
mynetwork            asia-southeast1          mynetwork      10.148.0.0/20
mynetwork            us-east4                 mynetwork      10.150.0.0/20
mynetwork            australia-southeast1     mynetwork      10.152.0.0/20
mynetwork            europe-west2             mynetwork      10.154.0.0/20
mynetwork            europe-west3             mynetwork      10.156.0.0/20
mynetwork            southamerica-east1       mynetwork      10.158.0.0/20
mynetwork            asia-south1              mynetwork      10.160.0.0/20
mynetwork            northamerica-northeast1  mynetwork      10.162.0.0/20
mynetwork            europe-west4             mynetwork      10.164.0.0/20
mynetwork            europe-north1            mynetwork      10.166.0.0/20
mynetwork            us-west2                 mynetwork      10.168.0.0/20
mynetwork            asia-east2               mynetwork      10.170.0.0/20
mynetwork            europe-west6             mynetwork      10.172.0.0/20
mynetwork            asia-northeast2          mynetwork      10.174.0.0/20
mynetwork            asia-northeast3          mynetwork      10.178.0.0/20
mynetwork            us-west3                 mynetwork      10.180.0.0/20
mynetwork            us-west4                 mynetwork      10.182.0.0/20
mynetwork            asia-southeast2          mynetwork      10.184.0.0/20
privatesubnet-us     us-central1              privatenet     172.16.0.0/24
privatesubnet-eu     europe-west1             privatenet     172.20.0.0/20
student_02_1af683f90062@cloudshell:~ (qwiklabs-gcp-02-cb6521dfa652)$

gcloud compute --project=qwiklabs-gcp-02-cb6521dfa652 firewall-rules create managementnet-allow-icmp-ssh-rdp \
--direction=INGRESS --priority=1000 --network=managementnet \
--action=ALLOW --rules=tcp:22,tcp:3389,icmp --source-ranges=0.0.0.0/0



student_02_1af683f90062@cloudshell:~ (qwiklabs-gcp-02-cb6521dfa652)$ gcloud compute firewall-rules create privatenet-allow-icmp-ssh-rdp --direction=INGRESS --priority=1000 --network=privatenet --action=ALLOW --rules=icmp,tcp:22,tcp:3389 --source-ranges=0.0.0.0/0
Creating firewall...⠹Created [https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-02-cb6521dfa652/global/firewalls/privatenet-allow-icmp-ssh-rdp].
Creating firewall...done.
NAME                           NETWORK     DIRECTION  PRIORITY  ALLOW                 DENY  DISABLED
privatenet-allow-icmp-ssh-rdp  privatenet  INGRESS    1000      icmp,tcp:22,tcp:3389        False
student_02_1af683f90062@cloudshell:~ (qwiklabs-gcp-02-cb6521dfa652)$

gcloud compute firewall-rules list --sort-by=NETWORK

student_02_1af683f90062@cloudshell:~ (qwiklabs-gcp-02-cb6521dfa652)$ gcloud compute firewall-rules list --sort-by=NETWORK
NAME                              NETWORK        DIRECTION  PRIORITY  ALLOW                 DENY  DISABLED
managementnet-allow-icmp-ssh-rdp  managementnet  INGRESS    1000      tcp:22,tcp:3389,icmp        False
mynetwork-allow-icmp              mynetwork      INGRESS    65534     icmp                        False
mynetwork-allow-internal          mynetwork      INGRESS    65534     all                         False
mynetwork-allow-rdp               mynetwork      INGRESS    65534     tcp:3389                    False
mynetwork-allow-ssh               mynetwork      INGRESS    65534     tcp:22                      False
privatenet-allow-icmp-ssh-rdp     privatenet     INGRESS    1000      icmp,tcp:22,tcp:3389        False

To show all fields of the firewall, please show in JSON format: --format=json
To show all fields in table format, please see the examples in --help.

student_02_1af683f90062@cloudshell:~ (qwiklabs-gcp-02-cb6521dfa652)$











