student_01_94776f99647d@cloudshell:~/appengine-hello (qwiklabs-gcp-01-f023666a348b)$ gsutil cp gs://cloud-training/archinfra/gae-hello/* .
Copying gs://cloud-training/archinfra/gae-hello/app.yaml...
Copying gs://cloud-training/archinfra/gae-hello/main.py...
Copying gs://cloud-training/archinfra/gae-hello/main.pyc...
Copying gs://cloud-training/archinfra/gae-hello/main_test.py...
- [4 files][  2.5 KiB/  2.5 KiB]
Operation completed over 4 objects/2.5 KiB.
student_01_94776f99647d@cloudshell:~/appengine-hello (qwiklabs-gcp-01-f023666a348b)$


student_01_94776f99647d@cloudshell:~/appengine-hello (qwiklabs-gcp-01-f023666a348b)$ gcloud app deploy app.yaml
You are creating an app for project [qwiklabs-gcp-01-f023666a348b].
WARNING: Creating an App Engine application for a project is irreversible and the region
cannot be changed. More information about regions is at
<https://cloud.google.com/appengine/docs/locations>.

Please choose the region where you want your App Engine application
located:

 [1] asia-east2
 [2] asia-northeast1
 [3] asia-northeast2
 [4] asia-northeast3
 [5] asia-south1
 [6] asia-southeast2
 [7] australia-southeast1
 [8] europe-west
 [9] europe-west2
 [10] europe-west3
 [11] europe-west6
 [12] northamerica-northeast1
 [13] southamerica-east1
 [14] us-central
 [15] us-east1
 [16] us-east4
 [17] us-west2
 [18] us-west3
 [19] us-west4
 [20] cancel
Please enter your numeric choice:  6

Creating App Engine application in project [qwiklabs-gcp-01-f023666a348b] and region [asia-southeast2]....done.
Services to deploy:

descriptor:      [/home/student_01_94776f99647d/appengine-hello/app.yaml]
source:          [/home/student_01_94776f99647d/appengine-hello]
target project:  [qwiklabs-gcp-01-f023666a348b]
target service:  [default]
target version:  [20200926t083937]
target url:      [https://qwiklabs-gcp-01-f023666a348b.et.r.appspot.com]


Do you want to continue (Y/n)?  Y

Beginning deployment of service [default]...
╔════════════════════════════════════════════════════════════╗
╠═ Uploading 3 files to Google Cloud Storage                ═╣
╚════════════════════════════════════════════════════════════╝
File upload done.
Updating service [default]...done.
Setting traffic split for service [default]...done.
Deployed service [default] to [https://qwiklabs-gcp-01-f023666a348b.et.r.appspot.com]

You can stream logs from the command line by running:
  $ gcloud app logs tail -s default

To view your application in the web browser run:
  $ gcloud app browse
student_01_94776f99647d@cloudshell:~/appengine-hello (qwiklabs-gcp-01-f023666a348b)$




