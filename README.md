# Demonstration of error when testing running processes on Alpine Linux


To run, just `./demonstrate.sh`. You should see output like the following:
```sh
$ ./demonstrate.sh
Sending build context to Docker daemon  2.048kB
Step 1/2 : FROM alpine:3.6
 ---> 7328f6f8b418
Step 2/2 : ENTRYPOINT echo foo >/tmp/foo && tail -f /tmp/foo
 ---> Using cache
 ---> bfe5246954c9
Successfully built bfe5246954c9
Successfully tagged inspec-alpine-demo:latest
#### LAUNCHING CONTAINER
22175374c4cbc002e1216d024fbf874e58d0a0eb71c49c37a2c31666e1486f66
#### EXECUTING TESTS

Profile: InSpec Profile (default)
Version: 0.1.0
Target:  docker://22175374c4cbc002e1216d024fbf874e58d0a0eb71c49c37a2c31666e1486f66


  File /tmp/foo
     ✔  should exist
  Processes tail
     ∅  should exist
     expected Processes tail to exist

Test Summary: 1 successful, 1 failures, 0 skipped
#### RUNNING ps ON CONTAINER FOR COMPARISON
PID   USER     TIME   COMMAND
    1 root       0:00 /bin/sh -c echo foo >/tmp/foo && tail -f /tmp/foo
    7 root       0:00 tail -f /tmp/foo
  133 root       0:00 ps
```
