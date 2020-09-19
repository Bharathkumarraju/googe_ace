sudo sh -c 'echo "<?php phpinfo(); ?>" > apache2/htdocs/phpinfo.php'

student_00_a384c2742ae4@cloudshell:~$ gcloud config set project qwiklabs-gcp-00-638a8e87540d
Updated property [core/project].
student_00_a384c2742ae4@cloudshell:~ (qwiklabs-gcp-00-638a8e87540d)$ gcloud compute zones list | grep us-central1
us-central1-c              us-central1              UP
us-central1-a              us-central1              UP
us-central1-f              us-central1              UP
us-central1-b              us-central1              UP
student_00_a384c2742ae4@cloudshell:~ (qwiklabs-gcp-00-638a8e87540d)$


student_00_a384c2742ae4@cloudshell:~ (qwiklabs-gcp-00-638a8e87540d)$ gcloud config set compute/zone us-central1-c
Updated property [compute/zone].
student_00_a384c2742ae4@cloudshell:~ (qwiklabs-gcp-00-638a8e87540d)$ gcloud config list
[component_manager]
disable_update_check = True
[compute]
gce_metadata_read_timeout_sec = 30
zone = us-central1-c
[core]
account = student-00-a384c2742ae4@qwiklabs.net
disable_usage_reporting = True
project = qwiklabs-gcp-00-638a8e87540d
[metrics]
environment = devshell

Your active configuration is: [cloudshell-25701]
student_00_a384c2742ae4@cloudshell:~ (qwiklabs-gcp-00-638a8e87540d)$

student_00_a384c2742ae4@cloudshell:~ (qwiklabs-gcp-00-638a8e87540d)$ gcloud compute instances create "my-vm-2" \
> --machine-type "n1-standard-1" \
> --image-project "debian-cloud" \
> --image "debian-9-stretch-v20190213" \
> --subnet "default"
Created [https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-00-638a8e87540d/zones/us-central1-c/instances/my-vm-2].
WARNING: Some requests generated warnings:
 - The resource 'projects/debian-cloud/global/images/debian-9-stretch-v20190213' is deprecated. A suggested replacement is 'projects/debian-cloud/global/images/debian-9-stretch-v20190312'.

NAME     ZONE           MACHINE_TYPE   PREEMPTIBLE  INTERNAL_IP  EXTERNAL_IP      STATUS
my-vm-2  us-central1-c  n1-standard-1               10.128.0.3   104.197.135.175  RUNNING
student_00_a384c2742ae4@cloudshell:~ (qwiklabs-gcp-00-638a8e87540d)$



student-00-a384c2742ae4@my-vm-2:~$ ping my-vm-1
PING my-vm-1.c.qwiklabs-gcp-00-638a8e87540d.internal (10.128.0.2) 56(84) bytes of data.
64 bytes from my-vm-1.c.qwiklabs-gcp-00-638a8e87540d.internal (10.128.0.2): icmp_seq=1 ttl=64 time=1.99 ms
64 bytes from my-vm-1.c.qwiklabs-gcp-00-638a8e87540d.internal (10.128.0.2): icmp_seq=2 ttl=64 time=0.282 ms
64 bytes from my-vm-1.c.qwiklabs-gcp-00-638a8e87540d.internal (10.128.0.2): icmp_seq=3 ttl=64 time=0.246 ms
64 bytes from my-vm-1.c.qwiklabs-gcp-00-638a8e87540d.internal (10.128.0.2): icmp_seq=4 ttl=64 time=0.251 ms
64 bytes from my-vm-1.c.qwiklabs-gcp-00-638a8e87540d.internal (10.128.0.2): icmp_seq=5 ttl=64 time=0.297 ms
64 bytes from my-vm-1.c.qwiklabs-gcp-00-638a8e87540d.internal (10.128.0.2): icmp_seq=6 ttl=64 time=0.282 ms
64 bytes from my-vm-1.c.qwiklabs-gcp-00-638a8e87540d.internal (10.128.0.2): icmp_seq=7 ttl=64 time=0.260 ms
64 bytes from my-vm-1.c.qwiklabs-gcp-00-638a8e87540d.internal (10.128.0.2): icmp_seq=8 ttl=64 time=0.347 ms
64 b


