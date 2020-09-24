Task 6: Set up the Service Account User
In this part of the lab, you assign narrow permissions to service accounts and
learn how to use the Service Account User role.

Create a service account
------------------------------------->
On the Navigation menu (7a91d354499ac9f1.png), click IAM & admin > Service accounts.

Click Create service account.

Specify the Service account name as read-bucket-objects .

Click Create.

Specify the Role as Cloud Storage > Storage Object Viewer .

Click Continue.

Click Done.

Add the user to the service account
Select the read-bucket-objects service account.

Click Add member in the Permissions panel. If you do not see the Permission panel, click on Show Info panel.
You will grant the user the role of Service Account User,
which allows that person to use a service account on a VM, if they have access to the VM.

You could perform this activity for a specific user, group, or domain(Altostrat.com).

For training purposes, you will grant the Service Account User role to everyone at a company called Altostrat.com.
Altostrat.com is a fake company used for demonstration and training.

Specify the following, and leave the remaining settings as their defaults:
Property	Value (type value or select option as specified)
New members	altostrat.com
Select a role	Service Accounts > Service Account User
Click Save.

Grant Compute Engine access:
--------------------------------->

You now give the entire organization at Altostrat the Compute Engine Admin role.

On the Navigation menu (7a91d354499ac9f1.png), click IAM & admin > IAM.
Click Add.
Specify the following, and leave the remaining settings as their defaults:
Property	Value (type value or select option as specified)
New members	altostrat.com
Select a role	Compute Engine > Compute Instance Admin (v1)
Click Save.
This step is a rehearsal of the activity you would perform for a specific user.

This action gives the user limited abilities with a VM instance.
The user will be able to connect via SSH to a VM and perform some administration tasks.

Create a VM with the Service Account User:
------------------------------------------------->
On the Navigation menu (7a91d354499ac9f1.png), click Compute Engine > VM instances.
Click Create.
Specify the following, and leave the remaining settings as their defaults:
Property	Value (type value or select option as specified)
Name	demoiam
Region	us-central1
Zone	us-centra1-c
Series	N1
Machine Type	f1-micro
Boot disk	Debian GNU/Linux 10 (buster)
Service account	read-bucket-objects
Click Create.
Click Check my progress to verify the objective.

Set up the Service Account User and create a VM:
------------------------------------------------------>

Task 7: Explore the Service Account User role
At this point, you might have the user test access by connecting via SSH to the VM and performing the next actions.
As the owner of the project, you already possess the Service Account User role.
So you can simulate what the user would experience by just using SSH to access the VM from the Cloud Console.

The actions you perform and results will be the same as if you were the target user.

Use the Service Account User
For demoiam, click SSH to launch a terminal and connect.

Run the following command:

gcloud compute instances list

Result (do not copy; this is example output):

ERROR: (gcloud.compute.instances.list) Some requests did not succeed:
 - Required 'compute.zones.list' permission for 'projects/qwiklabs-gcp'

What happened? Why?

Copy the sample.txt file from the bucket you created earlier. Note that the trailing period is part of the command below. It means copy to "this location":

gsutil cp gs://[YOUR_BUCKET_NAME]/sample.txt .

Result (do not copy; this is example output):

Copying gs://train-test-iam/sample.txt...
/ [1 files][   28.0 B/   28.0 B]
Operation completed over 1 objects/28.0 B.

To rename the file you copied, run the following command:

mv sample.txt sample2.txt

To copy the renamed file back to the bucket, run the following command:

gsutil cp sample2.txt gs://[YOUR_BUCKET_NAME]

Result (do not copy; this is example output):

AccessDeniedException: 403 Caller does not have storage.objects.create access to bucket train-test-iam.

What happened?

Because you connected via SSH to the instance, you can "act as the service account,"
essentially assuming the same permissions.
The service account the instance was started with had the Storage Viewer role,
which permits downloading objects from GCS buckets in the project.
To list instances in a project, you need to grant the compute.instance.list permission.
Because the service account did not have this permission,
you could not list instances running in the project.
Because the service account did have permission to download objects,
it could download an object from the bucket. It did not have permission to write objects,
so you got a "403 access denied" message.



Task 8: Review
In this lab you exercised granting and revoking Cloud IAM roles,
first to a user, Username 2, and then to a Service Account User.
You could allocate Service Account User credentials and "bake" them into a VM to
create specific-purpose authorized bastion hosts.

