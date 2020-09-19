startupscript

apt-get update
apt-get install apache2 php php-mysql -y
service apache2 restart

student_02_a51a2303ec10@cloudshell:~ (qwiklabs-gcp-02-77fbbb80605b)$ gcloud config list
[component_manager]
disable_update_check = True
[compute]
gce_metadata_read_timeout_sec = 30
[core]
account = student-02-a51a2303ec10@qwiklabs.net
disable_usage_reporting = True
project = qwiklabs-gcp-02-77fbbb80605b
[metrics]
environment = devshell

Your active configuration is: [cloudshell-8241]
student_02_a51a2303ec10@cloudshell:~ (qwiklabs-gcp-02-77fbbb80605b)$ echo $DEVSHELL_PROJECT_ID
qwiklabs-gcp-02-77fbbb80605b
student_02_a51a2303ec10@cloudshell:~ (qwiklabs-gcp-02-77fbbb80605b)$


student_02_a51a2303ec10@cloudshell:~ (qwiklabs-gcp-02-77fbbb80605b)$ gsutil mb -l US gs://$DEVSHELL_PROJECT_ID
Creating gs://qwiklabs-gcp-02-77fbbb80605b/...
student_02_a51a2303ec10@cloudshell:~ (qwiklabs-gcp-02-77fbbb80605b)$ gsutil cp gs://cloud-training/gcpfci/my-excellent-blog.png my-excellent-blog.png
Copying gs://cloud-training/gcpfci/my-excellent-blog.png...
/ [1 files][  8.2 KiB/  8.2 KiB]
Operation completed over 1 objects/8.2 KiB.
student_02_a51a2303ec10@cloudshell:~ (qwiklabs-gcp-02-77fbbb80605b)$ gsutil cp my-excellent-blog.png gs://$DEVSHELL_PROJECT_ID/my-excellent-blog.png
Copying file://my-excellent-blog.png [Content-Type=image/png]...
/ [1 files][  8.2 KiB/  8.2 KiB]
Operation completed over 1 objects/8.2 KiB.
student_02_a51a2303ec10@cloudshell:~ (qwiklabs-gcp-02-77fbbb80605b)$


student_02_a51a2303ec10@cloudshell:~ (qwiklabs-gcp-02-77fbbb80605b)$ gsutil acl ch -u allUsers:R gs://$DEVSHELL_PROJECT_ID/my-excellent-blog.png
Updated ACL on gs://qwiklabs-gcp-02-77fbbb80605b/my-excellent-blog.png
student_02_a51a2303ec10@cloudshell:~ (qwiklabs-gcp-02-77fbbb80605b)$


student_02_a51a2303ec10@cloudshell:~ (qwiklabs-gcp-02-77fbbb80605b)$ gsutil ls gs://$DEVSHELL_PROJECT_ID
gs://qwiklabs-gcp-02-77fbbb80605b/my-excellent-blog.png
student_02_a51a2303ec10@cloudshell:~ (qwiklabs-gcp-02-77fbbb80605b)$


Create cloudSQL instance:
------------------------------>

ssh and cd /var/www/html
sudo vim index.php



<html>
<head><title>Welcome to my excellent blog</title></head>
<body>
<img src='https://storage.googleapis.com/qwiklabs-gcp-02-77fbbb80605b/my-excellent-blog.png'>
<h1>Welcome to my excellent blog</h1>
<?php
 $dbserver = "34.123.198.230";
$dbuser = "blogdbuser";
$dbpassword = "blogdbuser";
// In a production blog, we would not store the MySQL
// password in the document root. Instead, we would store it in a
// configuration file elsewhere on the web server VM instance.

$conn = new mysqli($dbserver, $dbuser, $dbpassword);

if (mysqli_connect_error()) {
        echo ("Database connection failed: " . mysqli_connect_error());
} else {
        echo ("Database connection succeeded.");
}
?>
</body></html>

service apache2 restart

Instance_IP/index.php
------------------------>
http://35.222.128.201/index.php





