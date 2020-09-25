student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ export BUCKET_NAME_1=qwiklabs-gcp-04-3331761d6e73
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ echo $BUCKET_NAME_1
qwiklabs-gcp-04-3331761d6e73
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$



student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ curl \
> http://hadoop.apache.org/docs/current/\
> hadoop-project-dist/hadoop-common/\
> ClusterSetup.html > setup.html
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 58007  100 58007    0     0  44862      0  0:00:01  0:00:01 --:--:-- 44862
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$



student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ cp setup.html setup2.html
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ cp setup.html setup3.html
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ ls -rtlh
total 184K
-rw-r--r-- 1 student_04_6d53eb005c4e student_04_6d53eb005c4e 913 Sep 25 08:01 README-cloudshell.txt
-rw-r--r-- 1 student_04_6d53eb005c4e student_04_6d53eb005c4e 57K Sep 25 08:02 setup.html
-rw-r--r-- 1 student_04_6d53eb005c4e student_04_6d53eb005c4e 57K Sep 25 08:03 setup2.html
-rw-r--r-- 1 student_04_6d53eb005c4e student_04_6d53eb005c4e 57K Sep 25 08:03 setup3.html
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ gsutil cp setup.html gs://$BUCKET_NAME_1
Copying file://setup.html [Content-Type=text/html]...
- [1 files][ 56.6 KiB/ 56.6 KiB]
Operation completed over 1 objects/56.6 KiB.
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ gsutil cp setup.html gs://$BUCKET_NAME_1/
Copying file://setup.html [Content-Type=text/html]...
- [1 files][ 56.6 KiB/ 56.6 KiB]
Operation completed over 1 objects/56.6 KiB.
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$

