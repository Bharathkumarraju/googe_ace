--source-ranges=35.235.240.0/20

Identity Aware Proxy

In order to connect to your private instance using SSH, you need to open an appropriate port on the firewall.
IAP connections come from a specific set of IP addresses (35.235.240.0/20). Therefore, you can limit the rule to this CIDR range.


gcloud compute --project=qwiklabs-gcp-00-f48ee5319af5 firewall-rules create privatenet-allow-ssh --direction=INGRESS --priority=1000 --network=privatenet --action=ALLOW --rules=all --source-ranges=35.235.240.0/20


gcloud compute ssh vm-internal --zone us-central1-c --tunnel-through-iap


student_00_6e3239fd869a@cloudshell:~ (qwiklabs-gcp-00-f48ee5319af5)$ gcloud compute ssh vm-internal --zone us-central1-c --tunnel-through-iap
WARNING: The private SSH key file for gcloud does not exist.
WARNING: The public SSH key file for gcloud does not exist.
WARNING: You do not have an SSH key for gcloud.
WARNING: SSH keygen will be executed to generate a key.
This tool needs to create the directory
[/home/student_00_6e3239fd869a/.ssh] before being able to generate SSH
 keys.

Do you want to continue (Y/n)?  Y

Generating public/private rsa key pair.
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /home/student_00_6e3239fd869a/.ssh/google_compute_engine.
Your public key has been saved in /home/student_00_6e3239fd869a/.ssh/google_compute_engine.pub.
The key fingerprint is:
SHA256:L5UuiHwGGgac6Q6ZCHTWymWPcGb0GlaKLMhJY/rYEKY student_00_6e3239fd869a@cs-390000830114-default-default-t5xt6
The key's randomart image is:
+---[RSA 2048]----+
|.* oo. .         |
|@.O..B+          |
|EB.oO+o.         |
|+O.o..o.   .     |
|*.= ..  S o      |
|o. + o . +       |
| .. o + o o      |
|     o   o       |
|                 |
+----[SHA256]-----+
Warning: Permanently added 'compute.8610898016016487253' (ECDSA) to the list of known hosts.
Linux vm-internal 4.19.0-10-cloud-amd64 #1 SMP Debian 4.19.132-1 (2020-07-24) x86_64

The programs included with the Debian GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
Creating directory '/home/student-00-6e3239fd869a'.
student-00-6e3239fd869a@vm-internal:~$ ping -c 2 www.google.com
PING www.google.com (173.194.197.104) 56(84) bytes of data.
^C
--- www.google.com ping statistics ---
2 packets transmitted, 0 received, 100% packet loss, time 25ms

student-00-6e3239fd869a@vm-internal:~$


student_00_6e3239fd869a@cloudshell:~ (qwiklabs-gcp-00-f48ee5319af5)$ gsutil cp gs://cloud-training/gcpnet/private/access.svg gs://qwiklabs-gcp-00-f48ee5319af5
Copying gs://cloud-training/gcpnet/private/access.svg [Content-Type=image/svg+xml]...
- [1 files][ 24.8 KiB/ 24.8 KiB]
Operation completed over 1 objects/24.8 KiB.
student_00_6e3239fd869a@cloudshell:~ (qwiklabs-gcp-00-f48ee5319af5)$



student_00_6e3239fd869a@cloudshell:~ (qwiklabs-gcp-00-f48ee5319af5)$ gsutil cp gs://qwiklabs-gcp-00-f48ee5319af5/*.svg .
Copying gs://qwiklabs-gcp-00-f48ee5319af5/access.svg...
/ [1 files][ 24.8 KiB/ 24.8 KiB]
Operation completed over 1 objects/24.8 KiB.
student_00_6e3239fd869a@cloudshell:~ (qwiklabs-gcp-00-f48ee5319af5)$

after enabling google private access:

student-00-6e3239fd869a@vm-internal:~$ gsutil cp gs://qwiklabs-gcp-00-f48ee5319af5/*.svg .
^CCaught CTRL-C (signal 2) - exiting

student-00-6e3239fd869a@vm-internal:~$ gsutil cp gs://qwiklabs-gcp-00-f48ee5319af5/*.svg .
Copying gs://qwiklabs-gcp-00-f48ee5319af5/access.svg...
/ [1 files][ 24.8 KiB/ 24.8 KiB]
Operation completed over 1 objects/24.8 KiB.
student-00-6e3239fd869a@vm-internal:~$