student_01_cc5134fcfbf8@cloudshell:~/training-data-analyst/courses/ak8s/02_Cloud_Build/b (qwiklabs-gcp-01-8ca30472e3cc)$ cat quickstart.sh
#!/bin/sh
if [ -z "$1" ]
then
        echo "Hello, world! The time is $(date)."
        exit 0
else
        exit 1
fi

student_01_cc5134fcfbf8@cloudshell:~/training-data-analyst/courses/ak8s/02_Cloud_Build/b (qwiklabs-gcp-01-8ca30472e3cc)$


student_01_cc5134fcfbf8@cloudshell:~/training-data-analyst/courses/ak8s/02_Cloud_Build/b (qwiklabs-gcp-01-8ca30472e3cc)$ cat Dockerfile
FROM alpine
COPY quickstart.sh /
CMD ["/quickstart.sh"]
student_01_cc5134fcfbf8@cloudshell:~/training-data-analyst/courses/ak8s/02_Cloud_Build/b (qwiklabs-gcp-01-8ca30472e3cc)$


student_01_cc5134fcfbf8@cloudshell:~/training-data-analyst/courses/ak8s/02_Cloud_Build/b (qwiklabs-gcp-01-8ca30472e3cc)$ cat cloudbuild.yaml
steps:
- name: 'gcr.io/cloud-builders/docker'
  args: [ 'build', '-t', 'gcr.io/$PROJECT_ID/quickstart-image', '.' ]
- name: 'gcr.io/$PROJECT_ID/quickstart-image'
  args: ['fail']
images:
- 'gcr.io/$PROJECT_ID/quickstart-image'
student_01_cc5134fcfbf8@cloudshell:~/training-data-analyst/courses/ak8s/02_Cloud_Build/b (qwiklabs-gcp-01-8ca30472e3cc)$


student_01_cc5134fcfbf8@cloudshell:~/training-data-analyst/courses/ak8s/02_Cloud_Build/b (qwiklabs-gcp-01-8ca30472e3cc)$ ./quickstart.sh
Hello, world! The time is Sun 27 Sep 2020 12:03:17 PM +08.
student_01_cc5134fcfbf8@cloudshell:~/training-data-analyst/courses/ak8s/02_Cloud_Build/b (qwiklabs-gcp-01-8ca30472e3cc)$ echo $?
0
student_01_cc5134fcfbf8@cloudshell:~/training-data-analyst/courses/ak8s/02_Cloud_Build/b (qwiklabs-gcp-01-8ca30472e3cc)$ ./quickstart.sh  fail
student_01_cc5134fcfbf8@cloudshell:~/training-data-analyst/courses/ak8s/02_Cloud_Build/b (qwiklabs-gcp-01-8ca30472e3cc)$ echo $?
1
student_01_cc5134fcfbf8@cloudshell:~/training-data-analyst/courses/ak8s/02_Cloud_Build/b (qwiklabs-gcp-01-8ca30472e3cc)$





student_01_cc5134fcfbf8@cloudshell:~/training-data-analyst/courses/ak8s/02_Cloud_Build/b (qwiklabs-gcp-01-8ca30472e3cc)$ gcloud builds submit --config cloudbuild.yaml .

Creating temporary tarball archive of 3 file(s) totalling 382 bytes before compression.
Uploading tarball of [.] to [gs://qwiklabs-gcp-01-8ca30472e3cc_cloudbuild/source/1601179347.641319-1333f0741f524714ac6ef97559fc74db.tgz]
Created [https://cloudbuild.googleapis.com/v1/projects/qwiklabs-gcp-01-8ca30472e3cc/builds/d973b974-7d27-43e5-8add-7ab2db163ac5].
Logs are available at [https://console.cloud.google.com/cloud-build/builds/d973b974-7d27-43e5-8add-7ab2db163ac5?project=542913746190].
------------------------------------------------------------------------------------------- REMOTE BUILD OUTPUT --------------------------------------------------------------------------------------------
starting build "d973b974-7d27-43e5-8add-7ab2db163ac5"

FETCHSOURCE
Fetching storage object: gs://qwiklabs-gcp-01-8ca30472e3cc_cloudbuild/source/1601179347.641319-1333f0741f524714ac6ef97559fc74db.tgz#1601179348791600
Copying gs://qwiklabs-gcp-01-8ca30472e3cc_cloudbuild/source/1601179347.641319-1333f0741f524714ac6ef97559fc74db.tgz#1601179348791600...
/ [1 files][  407.0 B/  407.0 B]
Operation completed over 1 objects/407.0 B.
BUILD
Starting Step #0
Step #0: Already have image (with digest): gcr.io/cloud-builders/docker
Step #0: Sending build context to Docker daemon  4.096kB
Step #0: Step 1/3 : FROM alpine
Step #0: latest: Pulling from library/alpine
Step #0: Digest: sha256:a15790640a6690aa1730c38cf0a440e2aa44aaca9b0e8931a9f2b0d7cc90fd65
Step #0: Status: Downloaded newer image for alpine:latest
Step #0:  ---> a24bb4013296
Step #0: Step 2/3 : COPY quickstart.sh /
Step #0:  ---> ebb2691429d8
Step #0: Step 3/3 : CMD ["/quickstart.sh"]
Step #0:  ---> Running in e951c96c020f
Step #0: Removing intermediate container e951c96c020f
Step #0:  ---> 273ba82becad
Step #0: Successfully built 273ba82becad
Step #0: Successfully tagged gcr.io/qwiklabs-gcp-01-8ca30472e3cc/quickstart-image:latest
Finished Step #0
Starting Step #1
Step #1: Already have image: gcr.io/qwiklabs-gcp-01-8ca30472e3cc/quickstart-image
Finished Step #1
ERROR
ERROR: build step 1 "gcr.io/qwiklabs-gcp-01-8ca30472e3cc/quickstart-image" failed: starting step container failed: Error response from daemon: OCI runtime create failed: container_linux.go:349: starting container process caused "exec: \"fail\": executable file not found in $PATH": unknown
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ERROR: (gcloud.builds.submit) build d973b974-7d27-43e5-8add-7ab2db163ac5 completed with status "FAILURE"
student_01_cc5134fcfbf8@cloudshell:~/training-data-analyst/courses/ak8s/02_Cloud_Build/b (qwiklabs-gcp-01-8ca30472e3cc)$





student_01_cc5134fcfbf8@cloudshell:~/training-data-analyst/courses/ak8s/02_Cloud_Build/b (qwiklabs-gcp-01-8ca30472e3cc)$ cat cloudbuild.yaml
steps:
- name: 'gcr.io/cloud-builders/docker'
  args: [ 'build', '-t', 'gcr.io/$PROJECT_ID/quickstart-image', '.' ]
- name: 'gcr.io/$PROJECT_ID/quickstart-image'
images:
- 'gcr.io/$PROJECT_ID/quickstart-image'
student_01_cc5134fcfbf8@cloudshell:~/training-data-analyst/courses/ak8s/02_Cloud_Build/b (qwiklabs-gcp-01-8ca30472e3cc)$



student_01_cc5134fcfbf8@cloudshell:~/training-data-analyst/courses/ak8s/02_Cloud_Build/b (qwiklabs-gcp-01-8ca30472e3cc)$ gcloud builds submit --config cloudbuild.yaml .
Creating temporary tarball archive of 3 file(s) totalling 365 bytes before compression.
Uploading tarball of [.] to [gs://qwiklabs-gcp-01-8ca30472e3cc_cloudbuild/source/1601179479.235304-03a78418c42a4c8d8ec08402d4a3c38e.tgz]
Created [https://cloudbuild.googleapis.com/v1/projects/qwiklabs-gcp-01-8ca30472e3cc/builds/4c280a6b-625f-447a-9ece-42ea56ff528c].
Logs are available at [https://console.cloud.google.com/cloud-build/builds/4c280a6b-625f-447a-9ece-42ea56ff528c?project=542913746190].
------------------------------------------------------------------------------------------- REMOTE BUILD OUTPUT --------------------------------------------------------------------------------------------
starting build "4c280a6b-625f-447a-9ece-42ea56ff528c"

FETCHSOURCE
Fetching storage object: gs://qwiklabs-gcp-01-8ca30472e3cc_cloudbuild/source/1601179479.235304-03a78418c42a4c8d8ec08402d4a3c38e.tgz#1601179480186908
Copying gs://qwiklabs-gcp-01-8ca30472e3cc_cloudbuild/source/1601179479.235304-03a78418c42a4c8d8ec08402d4a3c38e.tgz#1601179480186908...
/ [1 files][  405.0 B/  405.0 B]
Operation completed over 1 objects/405.0 B.
BUILD
Starting Step #0
Step #0: Already have image (with digest): gcr.io/cloud-builders/docker
Step #0: Sending build context to Docker daemon  4.096kB
Step #0: Step 1/3 : FROM alpine
Step #0: latest: Pulling from library/alpine
Step #0: Digest: sha256:a15790640a6690aa1730c38cf0a440e2aa44aaca9b0e8931a9f2b0d7cc90fd65
Step #0: Status: Downloaded newer image for alpine:latest
Step #0:  ---> a24bb4013296
Step #0: Step 2/3 : COPY quickstart.sh /
Step #0:  ---> 1738899091f3
Step #0: Step 3/3 : CMD ["/quickstart.sh"]
Step #0:  ---> Running in ba4d28146be4
Step #0: Removing intermediate container ba4d28146be4
Step #0:  ---> a4ece0a993a6
Step #0: Successfully built a4ece0a993a6
Step #0: Successfully tagged gcr.io/qwiklabs-gcp-01-8ca30472e3cc/quickstart-image:latest
Finished Step #0
Starting Step #1
Step #1: Already have image: gcr.io/qwiklabs-gcp-01-8ca30472e3cc/quickstart-image
Step #1: Hello, world! The time is Sun Sep 27 04:04:51 UTC 2020.
Finished Step #1
PUSH
Pushing gcr.io/qwiklabs-gcp-01-8ca30472e3cc/quickstart-image
The push refers to repository [gcr.io/qwiklabs-gcp-01-8ca30472e3cc/quickstart-image]
7e1bb9ca972c: Preparing
50644c29ef5a: Preparing
50644c29ef5a: Layer already exists
7e1bb9ca972c: Pushed
latest: digest: sha256:6e746fa96756bf4584760b1f3754b2b1eafa4f4958b777f6816176ab9418191e size: 735
DONE
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ID                                    CREATE_TIME                DURATION  SOURCE                                                                                                      IMAGES                                           STATUS
4c280a6b-625f-447a-9ece-42ea56ff528c  2020-09-27T04:04:41+00:00  15S       gs://qwiklabs-gcp-01-8ca30472e3cc_cloudbuild/source/1601179479.235304-03a78418c42a4c8d8ec08402d4a3c38e.tgz  gcr.io/qwiklabs-gcp-01-8ca30472e3cc/quickstart-image (+1 more)  SUCCESS
student_01_cc5134fcfbf8@cloudshell:~/training-data-analyst/courses/ak8s/02_Cloud_Build/b





