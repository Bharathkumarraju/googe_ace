student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ gsutil lifecycle get gs://$BUCKET_NAME_1
gs://qwiklabs-gcp-04-3331761d6e73/ has no lifecycle configuration.
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$


student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ gsutil lifecycle set life.json gs://$BUCKET_NAME_1
Setting lifecycle configuration on gs://qwiklabs-gcp-04-3331761d6e73/...
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ gsutil lifecycle get gs://$BUCKET_NAME_1
{"rule": [{"action": {"type": "Delete"}, "condition": {"age": 31}}]}
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$


student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ gsutil versioning get gs://$BUCKET_NAME_1
gs://qwiklabs-gcp-04-3331761d6e73: Suspended
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$


student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ gsutil versioning set on  gs://$BUCKET_NAME_1
Enabling versioning for gs://qwiklabs-gcp-04-3331761d6e73/...
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ gsutil versioning get gs://$BUCKET_NAME_1
gs://qwiklabs-gcp-04-3331761d6e73: Enabled
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$




student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ gsutil cp -v setup.html gs://$BUCKET_NAME_1
Copying file://setup.html [Content-Type=text/html]...
Created: gs://qwiklabs-gcp-04-3331761d6e73/setup.html#1600994121944263

Operation completed over 1 objects/55.9 KiB.
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ vim setup.html
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ gsutil cp -v setup.html gs://$BUCKET_NAME_1
Copying file://setup.html [Content-Type=text/html]...
Created: gs://qwiklabs-gcp-04-3331761d6e73/setup.html#1600994144127691

Operation completed over 1 objects/55.8 KiB.
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$

student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ vim setup.html
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ gsutil cp -v setup.html gs://$BUCKET_NAME_1
Copying file://setup.html [Content-Type=text/html]...
Created: gs://qwiklabs-gcp-04-3331761d6e73/setup.html#1600994182298971

Operation completed over 1 objects/55.7 KiB.
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$





student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ gsutil ls -a gs://$BUCKET_NAME_1/setup.html
gs://qwiklabs-gcp-04-3331761d6e73/setup.html#1600992254635190 (oldest)
gs://qwiklabs-gcp-04-3331761d6e73/setup.html#1600994121944263
gs://qwiklabs-gcp-04-3331761d6e73/setup.html#1600994144127691
gs://qwiklabs-gcp-04-3331761d6e73/setup.html#1600994182298971 (newest)
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$



student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ export VERSION_NAME=gs://qwiklabs-gcp-04-3331761d6e73/setup.html#1600994182298971
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ echo $VERSION_NAME
gs://qwiklabs-gcp-04-3331761d6e73/setup.html#1600994182298971
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$


student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ export VERSION_NAME=gs://qwiklabs-gcp-04-3331761d6e73/setup.html#1600992254635190
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ gsutil cp $VERSION_NAME recovered.txt
Copying gs://qwiklabs-gcp-04-3331761d6e73/setup.html#1600992254635190...
/ [1 files][ 56.6 KiB/ 56.6 KiB]
Operation completed over 1 objects/56.6 KiB.
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ ls -al setup.html recovered.txt
-rw-r--r-- 1 student_04_6d53eb005c4e student_04_6d53eb005c4e 58007 Sep 25 08:40 recovered.txt
-rw-r--r-- 1 student_04_6d53eb005c4e student_04_6d53eb005c4e 57023 Sep 25 08:36 setup.html
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$



student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ mkdir -p ./firstlevel/secondlevel
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ cp setup.html firstlevel/
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ cp setup.html firstlevel/secondlevel/
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$


student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ gsutil rsync -r ./firstlevel  gs://$BUCKET_NAME_1/firstlevel
Building synchronization state...
Starting synchronization...
Copying file://./firstlevel/secondlevel/setup.html [Content-Type=text/html]...
Copying file://./firstlevel/setup.html [Content-Type=text/html]...
- [2 files][111.4 KiB/111.4 KiB]
Operation completed over 2 objects/111.4 KiB.
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$



