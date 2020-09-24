student-02-e36339ed5364@demoiam:~$ gcloud compute instances list
ERROR: (gcloud.compute.instances.list) Some requests did not succeed:
 - Required 'compute.zones.list' permission for 'projects/qwiklabs-gcp-02-1b9859e2bc06'

student-02-e36339ed5364@demoiam:~$ gsutil  cp gs://qwiklabs-gcp-02-1b9859e2bc06/sample.txt .
Copying gs://qwiklabs-gcp-02-1b9859e2bc06/sample.txt...
/ [1 files][  791.0 B/  791.0 B]
Operation completed over 1 objects/791.0 B.
student-02-e36339ed5364@demoiam:~$ mv sample.txt sample2.txt
student-02-e36339ed5364@demoiam:~$ gsutil  cp sample2.txt gs://qwiklabs-gcp-02-1b9859e2bc06/
Copying file://sample2.txt [Content-Type=text/plain]...
AccessDeniedException: 403 read-bucket-objects@qwiklabs-gcp-02-1b9859e2bc06.iam.gserviceaccount.com does not have storage.objects.create access to the Google Cloud Storage object.
student-02-e36339ed5364@demoiam:~$







What happened?

Because you connected via SSH to the instance, you can "act as the service account,"
essentially assuming the same permissions.The service account the instance was started with had the Storage Viewer role,
which permits downloading objects from GCS buckets in the project.

To list instances in a project, you need to grant the compute.instance.list permission.
Because the service account did not have this permission,
you could not list instances running in the project.
Because the service account did have permission to download objects,
it could download an object from the bucket.
It did not have permission to write objects, so you got a "403 access denied" message



------------------------------------------:

Task 8: Review
In this lab you exercised granting and revoking Cloud IAM roles, first to a user, Username 2, and then

to a Service Account User. You could allocate Service Account User credentials and "bake" them into a VM
to create specific-purpose authorized bastion hosts.