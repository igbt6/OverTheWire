# Solution for [Bandit Wargames](http://overthewire.org/wargames/bandit/)



### [Level 0](http://overthewire.org/wargames/bandit/bandit1.html)
```sh
      ssh bandit0@bandit.labs.overthewire.org -p 2220
      bandit0
      cd ~
      vi readme
```
``` FLAG: boJ9jbbUNNfktd78OOpsqOltutMc3MY1```


### [Level 1](http://overthewire.org/wargames/bandit/bandit2.html)                    
```sh 
      ssh bandit1@bandit.labs.overthewire.org -p 2220
      boJ9jbbUNNfktd78OOpsqOltutMc3MY1
      cat /home/bandit1/-
```
``` FLAG: CV1DtqXWVFXTvM2F0k09SHz0YwRINYA9```


### [Level 2](http://overthewire.org/wargames/bandit/bandit3.html)
                    
```sh 
      ssh bandit2@bandit.labs.overthewire.org -p 2220
      CV1DtqXWVFXTvM2F0k09SHz0YwRINYA9
      cat /home/bandit2/spaces\ in\ this\ filename
``` 
``` FLAG: UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK```


### [Level 3](http://overthewire.org/wargames/bandit/bandit4.html)                 
```sh 
      ssh bandit3@bandit.labs.overthewire.org -p 2220
      UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK
      cd ~
      cd inhere/
      ls -a
      cat .hidden
``` 
``` FLAG: pIwrPrtPN36QITSp3EQaw936yaFoFgAB```


### [Level 4](http://overthewire.org/wargames/bandit/bandit5.html)

```sh 
      ssh bandit4@bandit.labs.overthewire.org -p 2220
      pIwrPrtPN36QITSp3EQaw936yaFoFgAB
      cd ~
      cd inhere/
      grep -r "^[a-zA-Z0-9]*" .
```
``` FLAG: koReBOKuIDDepwhWk7jZC0RTdopnAYKh```


### [Level 5](http://overthewire.org/wargames/bandit/bandit6.html)

```sh 
      ssh bandit5@bandit.labs.overthewire.org -p 2220
      koReBOKuIDDepwhWk7jZC0RTdopnAYKh
      cd inhere/
      find . -depth -size 1033c | xargs cat
``` 
``` FLAG: DXjZPULLxYr17uwoI01bNLQbtFemEgo7```


### [Level 6](http://overthewire.org/wargames/bandit/bandit7.html)

```sh 
      ssh bandit6@bandit.labs.overthewire.org -p 2220
      DXjZPULLxYr17uwoI01bNLQbtFemEgo7
      find / -size 33c -user bandit7 -group bandit6 2>/dev/null | xargs cat
```
``` FLAG: HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs```


### [Level 7](http://overthewire.org/wargames/bandit/bandit8.html)

```sh 
      ssh bandit7@bandit.labs.overthewire.org -p 2220
      HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs
      grep "millionth" data.txt
```
``` FLAG: cvX2JJa4CFALtqS87jk27qwqGhBM9plV```


### [Level 8](http://overthewire.org/wargames/bandit/bandit9.html)
                    
```sh 
      ssh bandit8@bandit.labs.overthewire.org -p 2220
      cvX2JJa4CFALtqS87jk27qwqGhBM9plV
      sort data.txt | uniq -u
```
``` FLAG: UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR```


### [Level 9](http://overthewire.org/wargames/bandit/bandit10.html)
                   
```sh 
      ssh bandit9@bandit.labs.overthewire.org -p 2220
      UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR
      strings data.txt | grep -a "[=]*"
```
``` FLAG: truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk```


### [Level 10](http://overthewire.org/wargames/bandit/bandit11.html)
                    
```sh 
      ssh bandit10@bandit.labs.overthewire.org -p 2220
      truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk
      base64 -d data.txt
```   
``` FLAG: IFukwKGsFW8MOq3IRFqrxE1hxTNEbUPR```


### [Level 11](http://overthewire.org/wargames/bandit/bandit12.html)
                    
```sh 
      ssh bandit11@bandit.labs.overthewire.org -p 2220
      IFukwKGsFW8MOq3IRFqrxE1hxTNEbUPR
      cat data.txt | tr '[A-Za-z]' '[N-ZA-Mn-za-m]'
```
``` FLAG: 5Te8Y4drgCRfCx8ugdwuEX8KFC6k2EUu```


### [Level 12](http://overthewire.org/wargames/bandit/bandit13.html)
                    
```sh 
      ssh bandit12@bandit.labs.overthewire.org -p 2220
      5Te8Y4drgCRfCx8ugdwuEX8KFC6k2EUu
      mkdir /tmp/mybandit12
      cp ~/data.txt .
      xxd -r data.txt > data2
      file data2
      zcat data2 > data3
      bunzip2 data3
      zcat data3.out > data4
      tar -xvf data4
      tar -xvf data5.bin
      bunzip2 data6.bin
      tar -xvf data6.bin.out
      zcat data8.bin > data9
      cat data9
```
``` FLAG: 8ZjyCRiBWFYkneahHwxCv3wb2a1ORpYL```


### [Level 13](http://overthewire.org/wargames/bandit/bandit14.html)
                    
```sh 
      ssh bandit13@bandit.labs.overthewire.org -p 2220
      8ZjyCRiBWFYkneahHwxCv3wb2a1ORpYL
      scp bandit13@bandit.labs.overthewire.org:sshkey.private .
      chmod 600 /.ssh/sshkey.private
      ssh -i .ssh/sshkey.private bandit14@bandit.labs.overthewire.org
      vi /etc/bandit_pass/bandit14
```
``` FLAG: 4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e```


### [Level 14](http://overthewire.org/wargames/bandit/bandit15.html)
                    
```sh 
      ssh bandit14@bandit.labs.overthewire.org -p 2220
      4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e
      nc -v localhost 30000
      4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e
```
``` FLAG: BfMYroe26WYalil77FoDi9qh59eK5xNr```


### [Level 15](http://overthewire.org/wargames/bandit/bandit16.html)
                   
```sh 
      ssh bandit15@bandit.labs.overthewire.org -p 2220
      BfMYroe26WYalil77FoDi9qh59eK5xNr
      openssl s_client -ign_eof -connect localhost:30001
      BfMYroe26WYalil77FoDi9qh59eK5xNr
```
``` FLAG: cluFn7wTiGryunymYOu4RcffSxQluehd```


### [Level 16](http://overthewire.org/wargames/bandit/bandit17.html)
                    
```sh 
      ssh bandit16@bandit.labs.overthewire.org -p 2220
      cluFn7wTiGryunymYOu4RcffSxQluehd
      nmap -p 31000-32000 localhost | grep -o '^[0-9]\+' > /tmp/portsbandit16
      cat /tmp/portsbandit16
      openssl s_client -ign_eof -connect localhost:31790
      cluFn7wTiGryunymYOu4RcffSxQluehd
      echo "-----BEGIN RSA PRIVATE KEY-----
MIIEogIBAAKCAQEAvmOkuifmMg6HL2YPIOjon6iWfbp7c3jx34YkYWqUH57SUdyJ
imZzeyGC0gtZPGujUSxiJSWI/oTqexh+cAMTSMlOJf7+BrJObArnxd9Y7YT2bRPQ
Ja6Lzb558YW3FZl87ORiO+rW4LCDCNd2lUvLE/GL2GWyuKN0K5iCd5TbtJzEkQTu
DSt2mcNn4rhAL+JFr56o4T6z8WWAW18BR6yGrMq7Q/kALHYW3OekePQAzL0VUYbW
JGTi65CxbCnzc/w4+mqQyvmzpWtMAzJTzAzQxNbkR2MBGySxDLrjg0LWN6sK7wNX
x0YVztz/zbIkPjfkU1jHS+9EbVNj+D1XFOJuaQIDAQABAoIBABagpxpM1aoLWfvD
KHcj10nqcoBc4oE11aFYQwik7xfW+24pRNuDE6SFthOar69jp5RlLwD1NhPx3iBl
J9nOM8OJ0VToum43UOS8YxF8WwhXriYGnc1sskbwpXOUDc9uX4+UESzH22P29ovd
d8WErY0gPxun8pbJLmxkAtWNhpMvfe0050vk9TL5wqbu9AlbssgTcCXkMQnPw9nC
YNN6DDP2lbcBrvgT9YCNL6C+ZKufD52yOQ9qOkwFTEQpjtF4uNtJom+asvlpmS8A
vLY9r60wYSvmZhNqBUrj7lyCtXMIu1kkd4w7F77k+DjHoAXyxcUp1DGL51sOmama
+TOWWgECgYEA8JtPxP0GRJ+IQkX262jM3dEIkza8ky5moIwUqYdsx0NxHgRRhORT
8c8hAuRBb2G82so8vUHk/fur85OEfc9TncnCY2crpoqsghifKLxrLgtT+qDpfZnx
SatLdt8GfQ85yA7hnWWJ2MxF3NaeSDm75Lsm+tBbAiyc9P2jGRNtMSkCgYEAypHd
HCctNi/FwjulhttFx/rHYKhLidZDFYeiE/v45bN4yFm8x7R/b0iE7KaszX+Exdvt
SghaTdcG0Knyw1bpJVyusavPzpaJMjdJ6tcFhVAbAjm7enCIvGCSx+X3l5SiWg0A
R57hJglezIiVjv3aGwHwvlZvtszK6zV6oXFAu0ECgYAbjo46T4hyP5tJi93V5HDi
Ttiek7xRVxUl+iU7rWkGAXFpMLFteQEsRr7PJ/lemmEY5eTDAFMLy9FL2m9oQWCg
R8VdwSk8r9FGLS+9aKcV5PI/WEKlwgXinB3OhYimtiG2Cg5JCqIZFHxD6MjEGOiu
L8ktHMPvodBwNsSBULpG0QKBgBAplTfC1HOnWiMGOU3KPwYWt0O6CdTkmJOmL8Ni
blh9elyZ9FsGxsgtRBXRsqXuz7wtsQAgLHxbdLq/ZJQ7YfzOKU4ZxEnabvXnvWkU
YOdjHdSOoKvDQNWu6ucyLRAWFuISeXw9a/9p7ftpxm0TSgyvmfLF2MIAEwyzRqaM
77pBAoGAMmjmIJdjp+Ez8duyn3ieo36yrttF5NSsJLAbxFpdlc1gvtGCWW+9Cq0b
dxviW8+TFVEBl1O4f7HVm6EpTscdDxU+bCXWkfjuRb7Dy9GOtt9JPsX8MBTakzh3
vBgsyi/sN3RqRBcGU40fOoZyfAMT8s1m/uYv52O6IgeuZ/ujbjY=
-----END RSA PRIVATE KEY-----" > /tmp/sshkey16.private
      chmod 600 /tmp/sshkey16.private
      ssh -i /tmp/sshkey16.private bandit17@localhost
      cat /etc/bandit_pass/bandit17
```
``` FLAG: xLYVMN9WE5zQ5vHacb0sZEVqbrp7nBTn```


### [Level 17](http://overthewire.org/wargames/bandit/bandit18.html)
```sh 
      * Logged on from Level 17
      diff passwords.new passwords.old
```
``` FLAG: kfBf3eYk5BPBRzwjqutbbfE887SVc5Yd```


### [Level 18](http://overthewire.org/wargames/bandit/bandit19.html)
                    
```sh 
      ssh -t bandit18@bandit.labs.overthewire.org -p 2220 /bin/sh
      kfBf3eYk5BPBRzwjqutbbfE887SVc5Yd
      cat readme
```
``` FLAG: IueksS7Ubh8G3DCwVzrTd8rAVOwq3M5x```


### [Level 19](http://overthewire.org/wargames/bandit/bandit20.html)
                 
```sh 
      ssh bandit19@bandit.labs.overthewire.org -p 2220
      IueksS7Ubh8G3DCwVzrTd8rAVOwq3M5x
      ./bandit20-do
      ./bandit20-do id
      ./bandit20-do whoami
      ./bandit20-do cat /etc/bandit_pass/bandit20
```
``` FLAG: GbKksEFF4yrVs6il55v6gwY5aVje5f0j```


### [Level 20](http://overthewire.org/wargames/bandit/bandit21.html)
                    
```sh 
      ssh bandit20@bandit.labs.overthewire.org -p 2220
      GbKksEFF4yrVs6il55v6gwY5aVje5f0j
      server: nc -l -p 30222
      client: ./suconnect 30222
      server: GbKksEFF4yrVs6il55v6gwY5aVje5f0j
```
``` FLAG: gE269g2h3mw3pwgrj0Ha9Uoqen1c9DGr```


### [Level 21](http://overthewire.org/wargames/bandit/bandit22.html)
                    
```sh 
      ssh bandit21@bandit.labs.overthewire.org -p 2220
      gE269g2h3mw3pwgrj0Ha9Uoqen1c9DGr
      cat /etc/cron.d
      ls -la
      cat cronjob_bandit22
      cat /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
```
``` FLAG: Yk7owGAcWjwMVRwrTesJEwB7WVOiILLI```


### [Level 22](http://overthewire.org/wargames/bandit/bandit23.html)
                    
```sh 
      ssh bandit22@bandit.labs.overthewire.org -p 2220
      Yk7owGAcWjwMVRwrTesJEwB7WVOiILLI
      cd /etc/cron.d/ && ls -l
      cat cronjob_bandit23 
      cat /usr/bin/cronjob_bandit23.sh
      target=$(echo I am user bandit23 | md5sum | cut -d ' ' -f 1)
      cat /tmp/$target
```
``` FLAG: jc1udXuA1tiHqjIsL8yaapX5XIAI6i0n```


### [Level 23](http://overthewire.org/wargames/bandit/bandit24.html)
                    
```sh 
      ssh bandit23@bandit.labs.overthewire.org -p 2220
      jc1udXuA1tiHqjIsL8yaapX5XIAI6i0n
      cd /etc/cron.d/ && ls -ll | cat cronjob_bandit24

      @reboot bandit24 /usr/bin/cronjob_bandit24.sh &> /dev/null
      * * * * * bandit24 /usr/bin/cronjob_bandit24.sh &> /dev/null
``` 
Run the command: `cat /usr/bin/cronjob_bandit24.sh` to see the script.
```
      #!/bin/bash

      myname=$(whoami)

      cd /var/spool/$myname
      echo "Executing and deleting all scripts in /var/spool/$myname:"
      for i in * .*;
      do
      if [ "$i" != "." -a "$i" != ".." ];
      then
            echo "Handling $i"
            timeout -s 9 60 ./$i
            rm -f ./$i
      fi
      done
```
From the script we can see that that each file from `/var/spool/$myname` will be executed once and after 60 sec timeout will be deleted.
I created a simple script `bandit23.sh` to give us a password for `bandit24` user. 
```sh
      mkdir -p    /tmp/bandit23lu
      touch       /tmp/bandit23lu/password
      chmod 666   /tmp/bandit23lu/password
      touch       /tmp/bandit23lu/bandit23.sh
      chmod 777   /tmp/bandit23lu/bandit23.sh
      vi          /tmp/bandit23lu/bandit23.sh
```
Add the folowing body of the script:
```sh
      #!/bin/bash
      cat /etc/bandit_pass/bandit24 > /tmp/bandit23lu/password
```
Check all:
```sh
      cat         /tmp/bandit23lu/bandit23.sh
      cp          /tmp/bandit23lu/bandit23.sh /var/spool/bandit24/
      cat         /var/spool/bandit24/bandit23.sh
```
After one minute i got the flag :)
```
      cat         /tmp/bandit23lu/password
```
``` FLAG: UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ```


### [Level 24](http://overthewire.org/wargames/bandit/bandit25.html)
                    
```sh 
      ssh bandit24@bandit.labs.overthewire.org -p 2220
      UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ
      nc localhost 30002
``` 
I got the following:
```
      I am the pincode checker for user bandit25. Please enter the password for user bandit24 and the secret pincode on a single line, separated by a space.
```
I inserted: `UoMYTrfrBFHyQXmg6gzctqAwOmw1Ioh 0123` and got: `Fail! You did not supply enough data. Try again`

Then i created a simple bash script to automate brute force password guessing:
```sh
      mkdir -p    /tmp/bandit24lu
      touch       /tmp/bandit24lu/solver.sh
      chmod 777   /tmp/bandit24lu/solver.sh
      vim         /tmp/bandit24lu/solver.sh

#!/bin/bash
PASS=UoMYTrfrBFHyQXmg6gzctqAwOmw1Ioh
N=10000
PIN=0
while [ $PIN -lt $N ]
do
      response="$(echo $PASS $PIN | nc localhost 30002)"
      echo -ne $response
      ((PIN++))
done 
```
```
      /tmp/bandit24lu/solver.sh
```



