student_02_69798a6daef7@cloudshell:~ (qwiklabs-gcp-02-df785a3c372e)$ gcloud deployment-manager types list | grep network
compute.beta.subnetwork
compute.alpha.subnetwork
compute.v1.subnetwork
compute.beta.network
compute.v1.network
compute.alpha.network
student_02_69798a6daef7@cloudshell:~ (qwiklabs-gcp-02-df785a3c372e)$


student_02_69798a6daef7@cloudshell:~ (qwiklabs-gcp-02-df785a3c372e)$ gcloud deployment-manager types list | grep firewall
compute.v1.firewall
compute.alpha.firewall
compute.beta.firewall
student_02_69798a6daef7@cloudshell:~ (qwiklabs-gcp-02-df785a3c372e)$


student_02_69798a6daef7@cloudshell:~/dminfra (qwiklabs-gcp-02-df785a3c372e)$ gcloud deployment-manager deployments create dminfra --config=config.yaml --preview
The fingerprint of the deployment is b'UWcS9m6uxdv1NCiaIRMPxQ=='
Waiting for create [operation-1601138140211-5b03a06156a0f-4f550e97-ad9b3a20]...done.
Create operation operation-1601138140211-5b03a06156a0f-4f550e97-ad9b3a20 completed successfully.
NAME                               TYPE                 STATE       ERRORS  INTENT
mynet-eu-vm                        compute.v1.instance  IN_PREVIEW  []      CREATE_OR_ACQUIRE
mynet-us-vm                        compute.v1.instance  IN_PREVIEW  []      CREATE_OR_ACQUIRE
mynetwork                          compute.v1.network   IN_PREVIEW  []      CREATE_OR_ACQUIRE
mynetwork-allow-http-ssh-rdp-icmp  compute.v1.firewall  IN_PREVIEW  []      CREATE_OR_ACQUIRE
student_02_69798a6daef7@cloudshell:~/dminfra (qwiklabs-gcp-02-df785a3c372e)$

student_02_69798a6daef7@cloudshell:~/dminfra (qwiklabs-gcp-02-df785a3c372e)$ gcloud deployment-manager deployments update dminfra
The fingerprint of the deployment is b'badGZU42vMw6QAbzPF33jg=='
Waiting for update [operation-1601138329768-5b03a1161d260-7ebc98f0-531a2bb2]...done.
Update operation operation-1601138329768-5b03a1161d260-7ebc98f0-531a2bb2 completed successfully.
NAME                               TYPE                 STATE      ERRORS  INTENT
mynet-eu-vm                        compute.v1.instance  COMPLETED  []
mynet-us-vm                        compute.v1.instance  COMPLETED  []
mynetwork                          compute.v1.network   COMPLETED  []
mynetwork-allow-http-ssh-rdp-icmp  compute.v1.firewall  COMPLETED  []
student_02_69798a6daef7@cloudshell:~/dminfra (qwiklabs-gcp-02-df785a3c372e)$

If we do not preview we can directly run like below
$ gcloud deployment-manager deployments create dminfra --config=config.yaml


student-02-69798a6daef7@mynet-us-vm:~$ ping -c 9 10.132.0.2
PING 10.132.0.2 (10.132.0.2) 56(84) bytes of data.
64 bytes from 10.132.0.2: icmp_seq=1 ttl=64 time=100 ms
64 bytes from 10.132.0.2: icmp_seq=2 ttl=64 time=98.8 ms
64 bytes from 10.132.0.2: icmp_seq=3 ttl=64 time=98.8 ms
64 bytes from 10.132.0.2: icmp_seq=4 ttl=64 time=98.8 ms
64 bytes from 10.132.0.2: icmp_seq=5 ttl=64 time=98.8 ms
64 bytes from 10.132.0.2: icmp_seq=6 ttl=64 time=98.8 ms
^C
--- 10.132.0.2 ping statistics ---
6 packets transmitted, 6 received, 0% packet loss, time 5005ms
rtt min/avg/max/mdev = 98.835/99.067/100.124/0.538 ms
student-02-69798a6daef7@mynet-us-vm:~$




