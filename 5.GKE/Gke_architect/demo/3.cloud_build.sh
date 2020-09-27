student_01_cc5134fcfbf8@cloudshell:~ (qwiklabs-gcp-01-8ca30472e3cc)$ cat quickstart.sh
#!/bin/bash
echo "Hello World! the time is $(date)"
student_01_cc5134fcfbf8@cloudshell:~ (qwiklabs-gcp-01-8ca30472e3cc)$ cat Dockerfile
FROM alpine
COPY quickstart.sh /
CMD ["/quickstart.sh"]
student_01_cc5134fcfbf8@cloudshell:~ (qwiklabs-gcp-01-8ca30472e3cc)$


student_01_cc5134fcfbf8@cloudshell:~ (qwiklabs-gcp-01-8ca30472e3cc)$ echo ${GOOGLE_CLOUD_PROJECT}
qwiklabs-gcp-01-8ca30472e3cc
student_01_cc5134fcfbf8@cloudshell:~ (qwiklabs-gcp-01-8ca30472e3cc)$ gcloud builds submit --tag gcr.io/${GOOGLE_CLOUD_PROJECT}/quickstart-image .
Creating temporary tarball archive of 10 file(s) totalling 7.3 KiB before compression.
Uploading tarball of [.] to [gs://qwiklabs-gcp-01-8ca30472e3cc_cloudbuild/source/1601178857.730504-d1c78ba65a614eaaba515253f5ec684f.tgz]
Created [https://cloudbuild.googleapis.com/v1/projects/qwiklabs-gcp-01-8ca30472e3cc/builds/a022470a-9bd9-42aa-aa2c-3f5f08bfbc5e].
Logs are available at [https://console.cloud.google.com/cloud-build/builds/a022470a-9bd9-42aa-aa2c-3f5f08bfbc5e?project=542913746190].
------------------------------------------------------------------------------------------- REMOTE BUILD OUTPUT --------------------------------------------------------------------------------------------
starting build "a022470a-9bd9-42aa-aa2c-3f5f08bfbc5e"

FETCHSOURCE
Fetching storage object: gs://qwiklabs-gcp-01-8ca30472e3cc_cloudbuild/source/1601178857.730504-d1c78ba65a614eaaba515253f5ec684f.tgz#1601178859437224
Copying gs://qwiklabs-gcp-01-8ca30472e3cc_cloudbuild/source/1601178857.730504-d1c78ba65a614eaaba515253f5ec684f.tgz#1601178859437224...
/ [1 files][  3.5 KiB/  3.5 KiB]
Operation completed over 1 objects/3.5 KiB.
BUILD
Already have image (with digest): gcr.io/cloud-builders/docker
Sending build context to Docker daemon  17.92kB
Step 1/3 : FROM alpine
latest: Pulling from library/alpine
Digest: sha256:a15790640a6690aa1730c38cf0a440e2aa44aaca9b0e8931a9f2b0d7cc90fd65
Status: Downloaded newer image for alpine:latest
 ---> a24bb4013296
Step 2/3 : COPY quickstart.sh /
 ---> 73f475c2ffd8
Step 3/3 : CMD ["/quickstart.sh"]
 ---> Running in 24bea5fd994e
Removing intermediate container 24bea5fd994e
 ---> 198a83205c47
Successfully built 198a83205c47
Successfully tagged gcr.io/qwiklabs-gcp-01-8ca30472e3cc/quickstart-image:latest
PUSH
Pushing gcr.io/qwiklabs-gcp-01-8ca30472e3cc/quickstart-image
The push refers to repository [gcr.io/qwiklabs-gcp-01-8ca30472e3cc/quickstart-image]
25811ae2896b: Preparing
50644c29ef5a: Preparing
50644c29ef5a: Layer already exists
25811ae2896b: Pushed
latest: digest: sha256:07d04a91298cd62a65b89199b32aa3768fefc0e485499aa707134b68edf16046 size: 735
DONE
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ID                                    CREATE_TIME                DURATION  SOURCE                                                                                                      IMAGES                                                          STATUS
a022470a-9bd9-42aa-aa2c-3f5f08bfbc5e  2020-09-27T03:54:20+00:00  16S       gs://qwiklabs-gcp-01-8ca30472e3cc_cloudbuild/source/1601178857.730504-d1c78ba65a614eaaba515253f5ec684f.tgz  gcr.io/qwiklabs-gcp-01-8ca30472e3cc/quickstart-image (+1 more)  SUCCESS
student_01_cc5134fcfbf8@cloudshell:~ (qwiklabs-gcp-01-8ca30472e3cc)$
