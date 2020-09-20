export MY_ZONE=us-central1-a

gsutil cp gs://cloud-training/gcpfcoreinfra/mydeploy.yaml mydeploy.yaml

sed -i -e "s/PROJECT_ID/$DEVSHELL_PROJECT_ID/" mydeploy.yaml

sed -i -e "s/ZONE/$MY_ZONE/" mydeploy.yaml

student_04_ac06ffbb8ff8@cloudshell:~ (qwiklabs-gcp-04-a86c592c7853)$ gcloud deployment-manager deployments create my-first-depl --config bkdeploy.yaml
The fingerprint of the deployment is b'Nu-S05Lj-MrqN1K1QqKbHw=='
Waiting for create [operation-1600515727204-5afa91b609fd9-3730924c-1e9d06ef]...done.
WARNING: Create operation operation-1600515727204-5afa91b609fd9-3730924c-1e9d06ef completed with warnings:
---
code: EXTERNAL_API_WARNING
data:
- key: resource_name
  value: projects/debian-cloud/global/images/debian-9-stretch-v20180806
- key: replacement_suggestion
  value: A suggested replacement is 'projects/debian-cloud/global/images/debian-9-stretch-v20180814'.
message: The resource 'projects/debian-cloud/global/images/debian-9-stretch-v20180806'
  is deprecated. A suggested replacement is 'projects/debian-cloud/global/images/debian-9-stretch-v20180814'.

NAME   TYPE                 STATE      ERRORS  INTENT
my-vm  compute.v1.instance  COMPLETED  []
student_04_ac06ffbb8ff8@cloudshell:~ (qwiklabs-gcp-04-a86c592c7853)$

student_04_ac06ffbb8ff8@cloudshell:~ (qwiklabs-gcp-04-a86c592c7853)$ gcloud deployment-manager deployments update my-first-depl --config bkdeploy.yaml



https://cloud.google.com/monitoring/agent/installation?_ga=2.99431582.-1816846012.1600515184#agent-install-debian-ubuntu


dd if=/dev/urandom | gzip -9 >> /dev/null &


gcloud beta compute ssh my-vm --project=qwiklabs-gcp-04-a86c592c7853 --zone=us-central1-a \
--command="curl -sSO https://dl.google.com/cloudagents/add-monitoring-agent-repo.sh && sudo bash add-monitoring-agent-repo.sh && sudo apt-get update && sudo apt-get install stackdriver-agent && sudo service stackdriver-agent start"
