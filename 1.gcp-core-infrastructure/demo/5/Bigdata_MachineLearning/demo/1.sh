gsutil cp gs://cloud-training/gcpfci/access_log.csv .

big query:

google big query:
---------------------->
dataset_name: logdata
table_name: accesslog


select int64_field_6 as hour, count(*) as hitcount from logdata.accesslog
group by hour
order by hour


student_01_63399e6ebec7@cloudshell:~ (qwiklabs-gcp-01-d1609cf035b5)$ bq query "select string_field_10 as request, count(*) as requestcount from logdata.accesslog group by request order by requestcount desc"
Waiting on bqjob_r6e56d4526e9d8881_00000174a9d5d755_1 ... (0s) Current status: DONE
+----------------------------------------+--------------+
|                request                 | requestcount |
+----------------------------------------+--------------+
| GET /store HTTP/1.0                    |       337293 |
| GET /index.html HTTP/1.0               |       336193 |
| GET /products HTTP/1.0                 |       280937 |
| GET /services HTTP/1.0                 |       169090 |
| GET /products/desserttoppings HTTP/1.0 |        56580 |
| GET /products/floorwaxes HTTP/1.0      |        56451 |
| GET /careers HTTP/1.0                  |        56412 |
| GET /services/turnipwinding HTTP/1.0   |        56401 |
| GET /services/spacetravel HTTP/1.0     |        56176 |
| GET /favicon.ico HTTP/1.0              |        55845 |
+----------------------------------------+--------------+
student_01_63399e6ebec7@cloudshell:~ (qwiklabs-gcp-01-d1609cf035b5)$


Cloud_Datastore: Unstructured NoSQL
Cloud_Bigtable: structure NoSQL

cloudSQL: Tera Bytes
cloud Spanner: Peta bytes
