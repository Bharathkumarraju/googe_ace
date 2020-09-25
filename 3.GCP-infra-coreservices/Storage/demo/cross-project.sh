student-04-6d53eb005c4e@crossproject:~$ export BUCKET_NAME_2=qwiklabs-gcp-04-9fb949005c01
student-04-6d53eb005c4e@crossproject:~$ export FILE_NAME=sample.txt
student-04-6d53eb005c4e@crossproject:~$ echo $FILE_NAME
sample.txt
student-04-6d53eb005c4e@crossproject:~$ echo $BUCKET_NAME_2
qwiklabs-gcp-04-9fb949005c01
student-04-6d53eb005c4e@crossproject:~$ gsutil ls gs://$BUCKET_NAME_2
AccessDeniedException: 403 79904382496-compute@developer.gserviceaccount.com does not have storage.objects.list access to the Google Cloud Storage bucket.
student-04-6d53eb005c4e@crossproject:~$



student-04-6d53eb005c4e@crossproject:~$ ls -rtlh
total 4.0K
-rw-r--r-- 1 student-04-6d53eb005c4e google-sudoers 2.4K Sep 25 00:52 credentials.json
student-04-6d53eb005c4e@crossproject:~$ gcloud auth activate-service-account --key-file credentials.json
Activated service account credentials for: [cross-project-storage@qwiklabs-gcp-04-9fb949005c01.iam.gserviceaccount.com]
student-04-6d53eb005c4e@crossproject:~$ gsutil ls gs://$BUCKET_NAME_2
gs://qwiklabs-gcp-04-9fb949005c01/sample.txt
student-04-6d53eb005c4e@crossproject:~$



student-04-6d53eb005c4e@crossproject:~$ gsutil cp credentials.json gs://$BUCKET_NAME_2/
Copying file://credentials.json [Content-Type=application/json]...
AccessDeniedException: 403 cross-project-storage@qwiklabs-gcp-04-9fb949005c01.iam.gserviceaccount.com does not have storage.objects.create access to the Google Cloud Storage object.
student-04-6d53eb005c4e@crossproject:~$




student-04-6d53eb005c4e@crossproject:~$ gsutil cp credentials.json gs://$BUCKET_NAME_2/
Copying file://credentials.json [Content-Type=application/json]...
AccessDeniedException: 403 cross-project-storage@qwiklabs-gcp-04-9fb949005c01.iam.gserviceaccount.com does not have storage.objects.create access to the Google Cloud Storage object.
student-04-6d53eb005c4e@crossproject:~$ gsutil cp credentials.json gs://$BUCKET_NAME_2/
Copying file://credentials.json [Content-Type=application/json]...
/ [1 files][  2.3 KiB/  2.3 KiB]
Operation completed over 1 objects/2.3 KiB.
student-04-6d53eb005c4e@crossproject:~$


