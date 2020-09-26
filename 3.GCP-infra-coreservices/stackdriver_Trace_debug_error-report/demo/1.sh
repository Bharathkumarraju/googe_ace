mkdir appengine-hello
cd appengine-hello
gsutil cp gs://cloud-training/archinfra/gae-hello/* .

student_01_94776f99647d@cloudshell:~/appengine-hello (qwiklabs-gcp-01-f023666a348b)$ gsutil cp gs://cloud-training/archinfra/gae-hello/* .
Copying gs://cloud-training/archinfra/gae-hello/app.yaml...
Copying gs://cloud-training/archinfra/gae-hello/main.py...
Copying gs://cloud-training/archinfra/gae-hello/main.pyc...
Copying gs://cloud-training/archinfra/gae-hello/main_test.py...
- [4 files][  2.5 KiB/  2.5 KiB]
Operation completed over 4 objects/2.5 KiB.
student_01_94776f99647d@cloudshell:~/appengine-hello (qwiklabs-gcp-01-f023666a348b)$ dev_appserver.py
********************************************************************************
Python 2 is deprecated. Upgrade to Python 3 as soon as possible.
See https://cloud.google.com/python/docs/python2-sunset

To suppress this warning, create an empty ~/.cloudshell/no-python-warning file.
The command will automatically proceed in  seconds or on any key.
********************************************************************************







student_01_94776f99647d@cloudshell:~/appengine-hello (qwiklabs-gcp-01-f023666a348b)$ dev_appserver.py $(pwd)
********************************************************************************
Python 2 is deprecated. Upgrade to Python 3 as soon as possible.
See https://cloud.google.com/python/docs/python2-sunset

To suppress this warning, create an empty ~/.cloudshell/no-python-warning file.
The command will automatically proceed in  seconds or on any key.
********************************************************************************
INFO     2020-09-26 00:37:52,112 devappserver2.py:289] Skipping SDK update check.
WARNING  2020-09-26 00:37:52,359 simple_search_stub.py:1198] Could not read search indexes from /tmp/appengine.None.student_01_94776f99647d/search_indexes
INFO     2020-09-26 00:37:52,362 api_server.py:282] Starting API server at: http://localhost:34325
INFO     2020-09-26 00:37:52,366 dispatcher.py:267] Starting module "default" running at: http://localhost:8080
INFO     2020-09-26 00:37:52,367 admin_server.py:150] Starting admin server at: http://localhost:8000
INFO     2020-09-26 00:37:55,380 instance.py:294] Instance PID: 886



