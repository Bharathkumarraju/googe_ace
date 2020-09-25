python3 -c 'import base64; import os; print(base64.encodebytes(os.urandom(32)))'



student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ gsutil config -n
This command will create a boto config file at
/home/student_04_6d53eb005c4e/.boto containing your credentials, based
on your responses to the following questions.

Boto config file "/home/student_04_6d53eb005c4e/.boto" created. If you
need to use a proxy to access the Internet please see the instructions
in that file.
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$

student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ vim .boto
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ gsutil version -l
gsutil version: 4.53
checksum: 8f91848c753a09585745117ecf306e9f (OK)
boto version: 2.49.0
python version: 3.7.3 (default, Jul 25 2020, 13:03:44) [GCC 8.3.0]
OS: Linux 4.19.112+
multiprocessing available: True
using cloud sdk: True
pass cloud sdk credentials to gsutil: True
config path(s): /home/student_04_6d53eb005c4e/.boto
gsutil path: /usr/lib/google-cloud-sdk/bin/gsutil
compiled crcmod: True
installed via package manager: False
editable install: False
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$



student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ python3 -c 'import base64; import os; print(base64.encodebytes(os.urandom(32)))'
b'Lx3uVnJVO8d+1HFz+SCHar6op4yLINWJ40Zhci/Z3l8=\n'
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$

Copy the value of the generated key excluding b' and \n' from the command output.
Key should be in form of tmxElCaabWvJqR7uXEWQF39DhWTcDvChzuCmpHe6sb0=


student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ gsutil cp setup2.html gs://$BUCKET_NAME_1/
Copying file://setup2.html [Content-Type=text/html]...
/ [1 files][ 56.6 KiB/ 56.6 KiB]
Operation completed over 1 objects/56.6 KiB.
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ gsutil cp setup3.html gs://$BUCKET_NAME_1/
Copying file://setup3.html [Content-Type=text/html]...
/ [1 files][ 56.6 KiB/ 56.6 KiB]
Operation completed over 1 objects/56.6 KiB.
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$

student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ cat .boto
#encryption_key=Lx3uVnJVO8d+1HFz+SCHar6op4yLINWJ40Zhci/Z3l8=
encryption_key=Qzl/wFWnnWwqUvyiKYqVl3RVvgL/jjzD69K6CAoScrU=

# Each 'decryption_key' entry specifies a customer-supplied decryption key that
# will be used to access and Google Cloud Storage objects encrypted with
# the corresponding key.
# Decryption keys: Up to 100 RFC 4648 section 4 base64-encoded AES256 strings
# in ascending numerical order, starting with 1.
decryption_key1=Lx3uVnJVO8d+1HFz+SCHar6op4yLINWJ40Zhci/Z3l8=
#decryption_key2=
#decryption_key3=
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$


student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ vim .boto
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ python3 -c 'import base64; import os; print(base64.encodebytes(os.urandom(32)))'
b'Qzl/wFWnnWwqUvyiKYqVl3RVvgL/jjzD69K6CAoScrU=\n'
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$

student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ cat .boto
#encryption_key=Lx3uVnJVO8d+1HFz+SCHar6op4yLINWJ40Zhci/Z3l8=
encryption_key=Qzl/wFWnnWwqUvyiKYqVl3RVvgL/jjzD69K6CAoScrU=

# Each 'decryption_key' entry specifies a customer-supplied decryption key that
# will be used to access and Google Cloud Storage objects encrypted with
# the corresponding key.
# Decryption keys: Up to 100 RFC 4648 section 4 base64-encoded AES256 strings
# in ascending numerical order, starting with 1.
decryption_key1=Lx3uVnJVO8d+1HFz+SCHar6op4yLINWJ40Zhci/Z3l8=
#decryption_key2=
#decryption_key3=
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$

student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ vim .boto
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ gsutil rewrite -k gs://$BUCKET_NAME_1/setup2.html
- [1 files][ 56.6 KiB/ 56.6 KiB]                                                 0.0 B/ 56.6 KiB]
Operation completed over 1 objects/56.6 KiB.
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$






student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ gsutil cp gs://$BUCKET_NAME_1/setup2.html recover2.html
Copying gs://qwiklabs-gcp-04-3331761d6e73/setup2.html...
- [1 files][ 56.6 KiB/ 56.6 KiB]
Operation completed over 1 objects/56.6 KiB.
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ gsutil cp gs://$BUCKET_NAME_1/setup3.html recover3.html
Traceback (most recent call last):
  File "/usr/lib/google-cloud-sdk/platform/gsutil/gsutil", line 21, in <module>
    gsutil.RunMain()
  File "/usr/lib/google-cloud-sdk/platform/gsutil/gsutil.py", line 122, in RunMain
    sys.exit(gslib.__main__.main())
  File "/usr/lib/google-cloud-sdk/platform/gsutil/gslib/__main__.py", line 438, in main
    user_project=user_project)
  File "/usr/lib/google-cloud-sdk/platform/gsutil/gslib/__main__.py", line 767, in _RunNamedCommandAndHandleExceptions
    _HandleUnknownFailure(e)
  File "/usr/lib/google-cloud-sdk/platform/gsutil/gslib/__main__.py", line 633, in _RunNamedCommandAndHandleExceptions
    user_project=user_project)
  File "/usr/lib/google-cloud-sdk/platform/gsutil/gslib/command_runner.py", line 411, in RunNamedCommand
  File "/usr/lib/google-cloud-sdk/platform/gsutil/gslib/command_runner.py", line 411, in RunNamedCommand
    return_code = command_inst.RunCommand()
  File "/usr/lib/google-cloud-sdk/platform/gsutil/gslib/commands/cp.py", line 1195, in RunCommand
    seek_ahead_iterator=seek_ahead_iterator)
  File "/usr/lib/google-cloud-sdk/platform/gsutil/gslib/command.py", line 1515, in Apply
    arg_checker, should_return_results, fail_on_error)
  File "/usr/lib/google-cloud-sdk/platform/gsutil/gslib/command.py", line 1561, in _SequentialApply
    args = next(args_iterator)
  File "/usr/lib/google-cloud-sdk/platform/gsutil/gslib/name_expansion.py", line 660, in __next__
    name_expansion_result = next(self.current_expansion_iter)
  File "/usr/lib/google-cloud-sdk/platform/gsutil/gslib/plurality_checkable_iterator.py", line 96, in __next__
    raise six.reraise(item_tuple[1].__class__, item_tuple[1], item_tuple[2])
  File "/usr/lib/google-cloud-sdk/platform/gsutil/third_party/six/six.py", line 693, in reraise
    raise value
  File "/usr/lib/google-cloud-sdk/platform/gsutil/gslib/plurality_checkable_iterator.py", line 70, in _PopulateHead
    e = next(self.base_iterator)
  File "/usr/lib/google-cloud-sdk/platform/gsutil/gslib/name_expansion.py", line 278, in __iter__
    for (names_container, blr) in post_step3_iter:
  File "/usr/lib/google-cloud-sdk/platform/gsutil/gslib/plurality_checkable_iterator.py", line 96, in __next__
    raise six.reraise(item_tuple[1].__class__, item_tuple[1], item_tuple[2])
  File "/usr/lib/google-cloud-sdk/platform/gsutil/third_party/six/six.py", line 693, in reraise
    raise value
  File "/usr/lib/google-cloud-sdk/platform/gsutil/gslib/plurality_checkable_iterator.py", line 70, in _PopulateHead
    e = next(self.base_iterator)
  File "/usr/lib/google-cloud-sdk/platform/gsutil/gslib/name_expansion.py", line 508, in __iter__
    for (names_container, blr) in self.tuple_iter:
  File "/usr/lib/google-cloud-sdk/platform/gsutil/gslib/plurality_checkable_iterator.py", line 96, in __next__
    raise six.reraise(item_tuple[1].__class__, item_tuple[1], item_tuple[2])
  File "/usr/lib/google-cloud-sdk/platform/gsutil/third_party/six/six.py", line 693, in reraise
    raise value
  File "/usr/lib/google-cloud-sdk/platform/gsutil/gslib/plurality_checkable_iterator.py", line 70, in _PopulateHead
    e = next(self.base_iterator)
  File "/usr/lib/google-cloud-sdk/platform/gsutil/gslib/wildcard_iterator.py", line 498, in IterAll
    expand_top_level_buckets=expand_top_level_buckets):
  File "/usr/lib/google-cloud-sdk/platform/gsutil/gslib/wildcard_iterator.py", line 195, in __iter__
    fields=get_fields)
  File "/usr/lib/google-cloud-sdk/platform/gsutil/gslib/cloud_api_delegator.py", line 305, in GetObjectMetadata
    fields=fields)
  File "/usr/lib/google-cloud-sdk/platform/gsutil/gslib/gcs_json_api.py", line 1015, in GetObjectMetadata
    (key_sha256, self.provider, bucket_name, object_name))
gslib.cloud_api.EncryptionException: Missing decryption key with SHA256 hash b'qe2o8z7yEWIqoPunO6etsVigHUYWe4Ah4fqrNW94n7M='. No decryption key matches object gs://qwiklabs-gcp-04-3331761d6e73/setup3.html
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$


After uncommenting decryption key it works.

student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ vim .boto
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$ gsutil cp gs://$BUCKET_NAME_1/setup3.html recover3.html
Copying gs://qwiklabs-gcp-04-3331761d6e73/setup3.html...
/ [1 files][ 56.6 KiB/ 56.6 KiB]
Operation completed over 1 objects/56.6 KiB.
student_04_6d53eb005c4e@cloudshell:~ (qwiklabs-gcp-04-3331761d6e73)$

