all about app Engine:


git clone https://github.com/googlecloudplatform/appengine-guestbook-python


/usr/bin/dev_appserver.py

bharath@cloudshell:~/appengine-guestbook-python (srianjaneyam)$ ls -l `which dev_appserver.py`
lrwxrwxrwx 1 root root 44 Sep 11 15:26 /usr/bin/dev_appserver.py -> ../lib/google-cloud-sdk/bin/dev_appserver.py
bharath@cloudshell:~/appengine-guestbook-python (srianjaneyam)$ vim /usr/bin/dev_appserver.py
bharath@cloudshell:~/appengine-guestbook-python (srianjaneyam)$ dev_appserver.py ./app.yaml
********************************************************************************
Python 2 is deprecated. Upgrade to Python 3 as soon as possible.
See https://cloud.google.com/python/docs/python2-sunset

To suppress this warning, create an empty ~/.cloudshell/no-python-warning file.
The command will automatically proceed in  seconds or on any key.
********************************************************************************
INFO     2020-09-19 10:33:01,929 devappserver2.py:289] Skipping SDK update check.
WARNING  2020-09-19 10:33:02,208 simple_search_stub.py:1198] Could not read search indexes from /tmp/appengine.None.bharath/search_indexes
INFO     2020-09-19 10:33:02,210 api_server.py:282] Starting API server at: http://localhost:45099
INFO     2020-09-19 10:33:02,216 dispatcher.py:267] Starting module "default" running at: http://localhost:8080
INFO     2020-09-19 10:33:02,217 admin_server.py:150] Starting admin server at: http://localhost:8000
INFO     2020-09-19 10:33:05,233 instance.py:294] Instance PID: 776




bharath@cloudshell:~/appengine-guestbook-python (srianjaneyam)$ gcloud app deploy ./index.yaml ./app.yaml
You are creating an app for project [srianjaneyam].
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

Please enter your numeric choice:  6

Creating App Engine application in project [srianjaneyam] and region [asia-southeast2]....done.
Services to deploy:

descriptor:      [/home/bharath/appengine-guestbook-python/app.yaml]
source:          [/home/bharath/appengine-guestbook-python]
target project:  [srianjaneyam]
target service:  [default]
target version:  [20200919t103740]
target url:      [https://srianjaneyam.et.r.appspot.com]


Configurations to update:

descriptor:      [/home/bharath/appengine-guestbook-python/index.yaml]
type:            [datastore indexes]
target project:  [srianjaneyam]


Do you want to continue (Y/n)?  Y

Beginning deployment of service [default]...
╔════════════════════════════════════════════════════════════╗
╠═ Uploading 21 files to Google Cloud Storage               ═╣
╚════════════════════════════════════════════════════════════╝
File upload done.
