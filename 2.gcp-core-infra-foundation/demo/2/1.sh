student_04_ec8196fd1168@cloudshell:~ (qwiklabs-gcp-04-16fd5df4beec)$ df -PH
Filesystem      Size  Used Avail Use% Mounted on
overlay          59G   47G   13G  79% /
tmpfs            68M     0   68M   0% /dev
tmpfs           1.1G     0  1.1G   0% /sys/fs/cgroup
/dev/sda1        59G   47G   13G  79% /root
/dev/sdb1       5.2G   11M  4.9G   1% /home
/dev/root       2.1G  989M  1.1G  49% /lib/modules
shm              68M     0   68M   0% /dev/shm
overlayfs       1.1G  160k  1.1G   1% /etc/ssh/ssh_host_rsa_key
tmpfs           1.1G  725k  1.1G   1% /run/metrics
overlayfs       1.1G  160k  1.1G   1% /etc/ssh/keys
tmpfs           1.1G     0  1.1G   0% /run/google/devshell
student_04_ec8196fd1168@cloudshell:~ (qwiklabs-gcp-04-16fd5df4beec)$


student_04_ec8196fd1168@cloudshell:~ (qwiklabs-gcp-04-16fd5df4beec)$ gsutil list
gs://qwiklabs-gcp-04-16fd5df4beec-bharath/
student_04_ec8196fd1168@cloudshell:~ (qwiklabs-gcp-04-16fd5df4beec)$ gsutil mb gs://qwiklabs-gcp-04-16fd5df4beec-srianjaneyam
Creating gs://qwiklabs-gcp-04-16fd5df4beec-srianjaneyam/...
student_04_ec8196fd1168@cloudshell:~ (qwiklabs-gcp-04-16fd5df4beec)$ gsutil list
gs://qwiklabs-gcp-04-16fd5df4beec-bharath/
gs://qwiklabs-gcp-04-16fd5df4beec-srianjaneyam/
student_04_ec8196fd1168@cloudshell:~ (qwiklabs-gcp-04-16fd5df4beec)$


student_04_ec8196fd1168@cloudshell:~ (qwiklabs-gcp-04-16fd5df4beec)$ gcloud compute regions list
NAME                     CPUS  DISKS_GB  ADDRESSES  RESERVED_ADDRESSES  STATUS  TURNDOWN_DATE
asia-east1               0/24  0/4096    0/8        0/8                 UP
asia-east2               0/24  0/4096    0/8        0/8                 UP
asia-northeast1          0/24  0/4096    0/8        0/8                 UP
asia-northeast2          0/24  0/4096    0/8        0/8                 UP
asia-northeast3          0/24  0/4096    0/8        0/8                 UP
asia-south1              0/0   0/4096    0/8        0/8                 UP
asia-southeast1          0/24  0/4096    0/8        0/8                 UP
asia-southeast2          0/24  0/4096    0/8        0/8                 UP
australia-southeast1     0/24  0/4096    0/8        0/8                 UP
europe-north1            0/24  0/4096    0/8        0/8                 UP
europe-west1             0/24  0/4096    0/8        0/8                 UP
europe-west2             0/24  0/4096    0/8        0/8                 UP
europe-west3             0/24  0/4096    0/8        0/8                 UP
europe-west4             0/24  0/4096    0/8        0/8                 UP
europe-west6             0/24  0/4096    0/8        0/8                 UP
northamerica-northeast1  0/24  0/4096    0/8        0/8                 UP
southamerica-east1       0/24  0/4096    0/8        0/8                 UP
us-central1              0/24  0/4096    0/8        0/8                 UP
us-east1                 0/24  0/4096    0/8        0/8                 UP
us-east4                 0/24  0/4096    0/8        0/8                 UP
us-west1                 0/24  0/4096    0/8        0/8                 UP
us-west2                 0/24  0/4096    0/8        0/8                 UP
us-west3                 0/24  0/4096    0/8        0/8                 UP
us-west4                 0/24  0/4096    0/8        0/8                 UP
student_04_ec8196fd1168@cloudshell:~ (qwiklabs-gcp-04-16fd5df4beec)$


