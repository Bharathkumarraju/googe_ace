student_03_ab39ec2cc050@cloudshell:~$ gcloud config set project qwiklabs-gcp-03-46d704feae19
Updated property [core/project].
student_03_ab39ec2cc050@cloudshell:~ (qwiklabs-gcp-03-46d704feae19)$ gcloud config set compute/zone us-centra1-a
Updated property [compute/zone].
student_03_ab39ec2cc050@cloudshell:~ (qwiklabs-gcp-03-46d704feae19)$ gcloud auth list
           Credentialed Accounts
ACTIVE  ACCOUNT
*       student-03-ab39ec2cc050@qwiklabs.net

To set the active account, run:
    $ gcloud config set account `ACCOUNT`

student_03_ab39ec2cc050@cloudshell:~ (qwiklabs-gcp-03-46d704feae19)$

student_03_ab39ec2cc050@cloudshell:~ (qwiklabs-gcp-03-46d704feae19)$ echo $DEVSHELL_PROJECT_ID
qwiklabs-gcp-03-46d704feae19
student_03_ab39ec2cc050@cloudshell:~ (qwiklabs-gcp-03-46d704feae19)$



student_03_ab39ec2cc050@cloudshell:~ (qwiklabs-gcp-03-46d704feae19)$ gcloud app create --project=$DEVSHELL_PROJECT_ID
You are creating an app for project [qwiklabs-gcp-03-46d704feae19].
WARNING: Creating an App Engine application for a project is irreversible and the region
cannot be changed. More information about regions is at
<https://cloud.google.com/appengine/docs/locations>.

Please choose the region where you want your App Engine application
located:

 [1] asia-east2    (supports standard and flexible)
 [2] asia-northeast1 (supports standard and flexible)
 [3] asia-northeast2 (supports standard and flexible)
 [4] asia-northeast3 (supports standard and flexible)
 [5] asia-south1   (supports standard and flexible)
 [6] asia-southeast2 (supports standard and flexible)
 [7] australia-southeast1 (supports standard and flexible)
 [8] europe-west   (supports standard and flexible)
 [9] europe-west2  (supports standard and flexible)
 [10] europe-west3  (supports standard and flexible)
 [11] europe-west6  (supports standard and flexible)
 [12] northamerica-northeast1 (supports standard and flexible)
 [13] southamerica-east1 (supports standard and flexible)
 [14] us-central    (supports standard and flexible)
 [15] us-east1      (supports standard and flexible)
 [16] us-east4      (supports standard and flexible)
 [17] us-west2      (supports standard and flexible)
 [18] us-west3      (supports standard and flexible)
 [19] us-west4      (supports standard and flexible)
 [20] cancel
Please enter your numeric choice:  14

Creating App Engine application in project [qwiklabs-gcp-03-46d704feae19] and region [us-central]....done.
Success! The app is now created. Please use `gcloud app deploy` to deploy your first app.
student_03_ab39ec2cc050@cloudshell:~ (qwiklabs-gcp-03-46d704feae19)$


student_03_ab39ec2cc050@cloudshell:~ (qwiklabs-gcp-03-46d704feae19)$ git clone https://github.com/GoogleCloudPlatform/python-docs-samples
Cloning into 'python-docs-samples'...
remote: Enumerating objects: 18, done.
remote: Counting objects: 100% (18/18), done.
remote: Compressing objects: 100% (17/17), done.
remote: Total 39057 (delta 6), reused 2 (delta 0), pack-reused 39039
Receiving objects: 100% (39057/39057), 60.23 MiB | 4.20 MiB/s, done.
Resolving deltas: 100% (21765/21765), done.
student_03_ab39ec2cc050@cloudshell:~ (qwiklabs-gcp-03-46d704feae19)$


student_03_ab39ec2cc050@cloudshell:~ (qwiklabs-gcp-03-46d704feae19)$ cd python-docs-samples/appengine/standard_python3/hello_world
student_03_ab39ec2cc050@cloudshell:~/python-docs-samples/appengine/standard_python3/hello_world (qwiklabs-gcp-03-46d704feae19)$ ls -rtlh
total 20K
-rw-r--r-- 1 student_03_ab39ec2cc050 student_03_ab39ec2cc050 1.2K Sep 19 18:52 main.py
-rw-r--r-- 1 student_03_ab39ec2cc050 student_03_ab39ec2cc050   18 Sep 19 18:52 app.yaml
-rw-r--r-- 1 student_03_ab39ec2cc050 student_03_ab39ec2cc050   13 Sep 19 18:52 requirements.txt
-rw-r--r-- 1 student_03_ab39ec2cc050 student_03_ab39ec2cc050   14 Sep 19 18:52 requirements-test.txt
-rw-r--r-- 1 student_03_ab39ec2cc050 student_03_ab39ec2cc050  801 Sep 19 18:52 main_test.py
student_03_ab39ec2cc050@cloudshell:~/python-docs-samples/appengine/standard_python3/hello_world (qwiklabs-gcp-03-46d704feae19)$





git clone https://github.com/GoogleCloudPlatform/python-docs-samples

Navigate to the source directory:

cd python-docs-samples/appengine/standard_python3/hello_world

Task 2: Run Hello World application locally
sudo apt-get update
sudo apt-get install virtualenv
If prompted [Y/n], press Y and then Enter.
virtualenv -p python3 venv
source venv/bin/activate
pip install  -r requirements.txt
python main.py



------ deploy app engine ------

cd ~/python-docs-samples/appengine/standard_python3/hello_world

(venv) student_03_ab39ec2cc050@cloudshell:~/python-docs-samples/appengine/standard_python3/hello_world (qwiklabs-gcp-03-46d704feae19)$ gcloud app deploy
Services to deploy:

descriptor:      [/home/student_03_ab39ec2cc050/python-docs-samples/appengine/standard_python3/hello_world/app.yaml]
source:          [/home/student_03_ab39ec2cc050/python-docs-samples/appengine/standard_python3/hello_world]
target project:  [qwiklabs-gcp-03-46d704feae19]
target service:  [default]
target version:  [20200919t185849]
target url:      [https://qwiklabs-gcp-03-46d704feae19.uc.r.appspot.com]


Do you want to continue (Y/n)?  Y

Beginning deployment of service [default]...
Created .gcloudignore file. See `gcloud topic gcloudignore` for details.
╔════════════════════════════════════════════════════════════╗
╠═ Uploading 704 files to Google Cloud Storage              ═╣
╚════════════════════════════════════════════════════════════╝
File upload done.
Updating service [default]...⠼
Updating service [default]...⠶
Updating service [default]...⠧
Updating service [default]...done.
Setting traffic split for service [default]...done.
Deployed service [default] to [https://qwiklabs-gcp-03-46d704feae19.uc.r.appspot.com]

You can stream logs from the command line by running:
  $ gcloud app logs tail -s default

To view your application in the web browser run:
  $ gcloud app browse
(venv) student_03_ab39ec2cc050@cloudshell:~/python-docs-samples/appengine/standard_python3/hello_world (qwiklabs-gcp-03-46d704feae19)$
(venv) student_03_ab39ec2cc050@cloudshell:~/python-docs-samples/appengine/standard_python3/hello_world (qwiklabs-gcp-03-46d704feae19)$
(venv) student_03_ab39ec2cc050@cloudshell:~/python-docs-samples/appengine/standard_python3/hello_world (qwiklabs-gcp-03-46d704feae19)$


(venv) student_03_ab39ec2cc050@cloudshell:~/python-docs-samples/appengine/standard_python3/hello_world (qwiklabs-gcp-03-46d704feae19)$ gcloud app browse
Did not detect your browser. Go to this link to view your app:
https://qwiklabs-gcp-03-46d704feae19.uc.r.appspot.com
(venv) student_03_ab39ec2cc050@cloudshell:~/python-docs-samples/appengine/standard_python3/hello_world (qwiklabs-gcp-03-46d704feae19)$
