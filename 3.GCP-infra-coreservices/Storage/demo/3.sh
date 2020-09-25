student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ gsutil acl get gs://$BUCKET_NAME_1/setup.html
[
  {
    "entity": "project-owners-79904382496",
    "projectTeam": {
      "projectNumber": "79904382496",
      "team": "owners"
    },
    "role": "OWNER"
  },
  {
    "entity": "project-editors-79904382496",
    "projectTeam": {
      "projectNumber": "79904382496",
      "team": "editors"
    },
    "role": "OWNER"
  },
  {
    "entity": "project-viewers-79904382496",
    "projectTeam": {
      "projectNumber": "79904382496",
      "team": "viewers"
    },
    "role": "READER"
  },
  {
    "email": "student-04-6d53eb005c4e@qwiklabs.net",
    "entity": "user-student-04-6d53eb005c4e@qwiklabs.net",
    "role": "OWNER"
  }
]
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$



student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ gsutil acl set private gs://$BUCKET_NAME_1/setup.html
Setting ACL on gs://qwiklabs-gcp-04-3331761d6e73/setup.html...
/ [1 objects]
Operation completed over 1 objects.
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ gsutil acl get gs://$BUCKET_NAME_1/setup.html
[
  {
    "email": "student-04-6d53eb005c4e@qwiklabs.net",
    "entity": "user-student-04-6d53eb005c4e@qwiklabs.net",
    "role": "OWNER"
  }
]
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$




student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ gsutil acl ch -u allUsers:R gs://$BUCKET_NAME_1/setup.html
Updated ACL on gs://qwiklabs-gcp-04-3331761d6e73/setup.html
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ gsutil acl get gs://$BUCKET_NAME_1/setup.html > acl3.txt
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ gsutil acl get gs://$BUCKET_NAME_1/setup.html
[
  {
    "email": "student-04-6d53eb005c4e@qwiklabs.net",
    "entity": "user-student-04-6d53eb005c4e@qwiklabs.net",
    "role": "OWNER"
  },
  {
    "entity": "allUsers",
    "role": "READER"
  }
]
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$

