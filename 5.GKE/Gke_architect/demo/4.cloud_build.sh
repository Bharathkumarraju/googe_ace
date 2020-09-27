student_01_cc5134fcfbf8@cloudshell:~ (qwiklabs-gcp-01-8ca30472e3cc)$ git clone https://github.com/GoogleCloudPlatformTraining/training-data-analyst
Cloning into 'training-data-analyst'...
remote: Enumerating objects: 5613, done.
remote: Total 5613 (delta 0), reused 0 (delta 0), pack-reused 5613
Receiving objects: 100% (5613/5613), 14.85 MiB | 3.29 MiB/s, done.
Resolving deltas: 100% (2989/2989), done.
student_01_cc5134fcfbf8@cloudshell:~ (qwiklabs-gcp-01-8ca30472e3cc)$ cd ~/training-data-analyst/courses/ak8s/02_Cloud_Build/a
student_01_cc5134fcfbf8@cloudshell:~/training-data-analyst/courses/ak8s/02_Cloud_Build/a (qwiklabs-gcp-01-8ca30472e3cc)$ ls
cloudbuild.yaml  Dockerfile  quickstart.sh
student_01_cc5134fcfbf8@cloudshell:~/training-data-analyst/courses/ak8s/02_Cloud_Build/a (qwiklabs-gcp-01-8ca30472e3cc)$ cat Dockerfile
FROM alpine
COPY quickstart.sh /
CMD ["/quickstart.sh"]
student_01_cc5134fcfbf8@cloudshell:~/training-data-analyst/courses/ak8s/02_Cloud_Build/a (qwiklabs-gcp-01-8ca30472e3cc)$ cat quickstart.sh
#!/bin/sh
echo "Hello, world! The time is $(date)."

student_01_cc5134fcfbf8@cloudshell:~/training-data-analyst/courses/ak8s/02_Cloud_Build/a (qwiklabs-gcp-01-8ca30472e3cc)$




student_01_cc5134fcfbf8@cloudshell:~/training-data-analyst/courses/ak8s/02_Cloud_Build/a (qwiklabs-gcp-01-8ca30472e3cc)$ gcloud builds submit --config cloudbuild.yaml .
Creating temporary tarball archive of 3 file(s) totalling 273 bytes before compression.
Uploading tarball of [.] to [gs://qwiklabs-gcp-01-8ca30472e3cc_cloudbuild/source/1601179096.150317-2d080b71c13d458088d48f7da0a1734c.tgz]
Created [https://cloudbuild.googleapis.com/v1/projects/qwiklabs-gcp-01-8ca30472e3cc/builds/38965106-8b3d-4d9e-8c22-483c83d28848].
Logs are available at [https://console.cloud.google.com/cloud-build/builds/38965106-8b3d-4d9e-8c22-483c83d28848?project=542913746190].
------------------------------------------------------------------------------------------- REMOTE BUILD OUTPUT --------------------------------------------------------------------------------------------
starting build "38965106-8b3d-4d9e-8c22-483c83d28848"

FETCHSOURCE
Fetching storage object: gs://qwiklabs-gcp-01-8ca30472e3cc_cloudbuild/source/1601179096.150317-2d080b71c13d458088d48f7da0a1734c.tgz#1601179097301102
Copying gs://qwiklabs-gcp-01-8ca30472e3cc_cloudbuild/source/1601179096.150317-2d080b71c13d458088d48f7da0a1734c.tgz#1601179097301102...
/ [1 files][  355.0 B/  355.0 B]
Operation completed over 1 objects/355.0 B.
BUILD
Already have image (with digest): gcr.io/cloud-builders/docker
Sending build context to Docker daemon  4.096kB
Step 1/3 : FROM alpine
latest: Pulling from library/alpine
Digest: sha256:a15790640a6690aa1730c38cf0a440e2aa44aaca9b0e8931a9f2b0d7cc90fd65
Status: Downloaded newer image for alpine:latest
 ---> a24bb4013296
Step 2/3 : COPY quickstart.sh /
 ---> eb8551884f27
Step 3/3 : CMD ["/quickstart.sh"]
 ---> Running in 62c06b5fbd9a
Removing intermediate container 62c06b5fbd9a
 ---> 898c25c0401c
Successfully built 898c25c0401c
Successfully tagged gcr.io/qwiklabs-gcp-01-8ca30472e3cc/quickstart-image:latest
PUSH
Pushing gcr.io/qwiklabs-gcp-01-8ca30472e3cc/quickstart-image
The push refers to repository [gcr.io/qwiklabs-gcp-01-8ca30472e3cc/quickstart-image]
cbc720d7cf67: Preparing
50644c29ef5a: Preparing
50644c29ef5a: Layer already exists
cbc720d7cf67: Pushed
latest: digest: sha256:1185b033a14c1e594dbd37d79b37ee2cd332fb94755c2fc93b3cde3a5c432801 size: 735
DONE
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ID                                    CREATE_TIME                DURATION  SOURCE                                                                                                      IMAGES                                                          STATUS
38965106-8b3d-4d9e-8c22-483c83d28848  2020-09-27T03:58:18+00:00  13S       gs://qwiklabs-gcp-01-8ca30472e3cc_cloudbuild/source/1601179096.150317-2d080b71c13d458088d48f7da0a1734c.tgz  gcr.io/qwiklabs-gcp-01-8ca30472e3cc/quickstart-image (+1 more)  SUCCESS
student_01_cc5134fcfbf8@cloudshell:~/training-data-analyst/courses/ak8s/02_Cloud_Build/a (qwiklabs-gcp-01-8ca30472e3cc)$


