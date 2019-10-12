# Solution for [Bandit Wargames](http://overthewire.org/wargames/bandit/)



### [Level 1](http://overthewire.org/wargames/bandit/bandit1.html)
```sh
      ssh bandit0@bandit.labs.overthewire.org -p 2220
      bandit0@bandit.labs.overthewire.org's password: bandit0
      cd ~
      vi readme
```           


### [Level 2](http://overthewire.org/wargames/bandit/bandit2.html)                    
```sh
      cat /home/bandit1/-
```
``` FLAG: boJ9jbbUNNfktd78OOpsqOltutMc3MY1```  


### [Level 3](http://overthewire.org/wargames/bandit/bandit3.html)
                    
```sh
      cat /home/bandit2/spaces\ in\ this\ filename
``` 
``` FLAG: CV1DtqXWVFXTvM2F0k09SHz0YwRINYA9```


### [Level 4](http://overthewire.org/wargames/bandit/bandit4.html)                 
```sh 
      cd ~
      cd inhere/
      ls -a
      cat .hidden
``` 
``` FLAG: UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK```


### [Level 5](http://overthewire.org/wargames/bandit/bandit5.html)

```sh 
      cd ~
      cd inhere/
      grep -r "^[a-zA-Z0-9]*" .
```
``` FLAG: pIwrPrtPN36QITSp3EQaw936yaFoFgAB```


### [Level 6](http://overthewire.org/wargames/bandit/bandit6.html)

```sh 
      cd inhere/
      find . -depth -size 1033c | xargs cat
``` 
``` FLAG: koReBOKuIDDepwhWk7jZC0RTdopnAYKh```


### [Level 7](http://overthewire.org/wargames/bandit/bandit7.html)

```sh
      find / -size 33c -user bandit7 -group bandit6 2>/dev/null | xargs cat
```
``` FLAG: DXjZPULLxYr17uwoI01bNLQbtFemEgo7```


### [Level 8](http://overthewire.org/wargames/bandit/bandit8.html)

```sh
      grep "millionth" data.txt
```
``` FLAG: HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs```


### [Level 9](http://overthewire.org/wargames/bandit/bandit9.html)
                    
```sh
      sort data.txt | uniq -u
```
``` FLAG: cvX2JJa4CFALtqS87jk27qwqGhBM9plV```


### [Level 10](http://overthewire.org/wargames/bandit/bandit10.html)
                   
```sh
      strings data.txt | grep -a "[=]*"
```
``` FLAG: UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR```


### [Level 11](http://overthewire.org/wargames/bandit/bandit11.html)
                    
```sh
      base64 -d data.txt
```   
``` FLAG: truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk```


### [Level 12](http://overthewire.org/wargames/bandit/bandit12.html)
                    
```sh
      cat data.txt | tr '[A-Za-z]' '[N-ZA-Mn-za-m]'
```
``` FLAG: IFukwKGsFW8MOq3IRFqrxE1hxTNEbUPR```


### [Level 13](http://overthewire.org/wargames/bandit/bandit13.html)
                    
```sh
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
``` FLAG: 5Te8Y4drgCRfCx8ugdwuEX8KFC6k2EUu```


### [Level 14](http://overthewire.org/wargames/bandit/bandit14.html)
                    
```sh
      scp bandit13@bandit.labs.overthewire.org:sshkey.private .
      chmod 600 /.ssh/sshkey.private
      ssh -i .ssh/sshkey.private bandit14@bandit.labs.overthewire.org
      vi /etc/bandit_pass/bandit14
```
``` FLAG: 8ZjyCRiBWFYkneahHwxCv3wb2a1ORpYL```


### [Level 15](http://overthewire.org/wargames/bandit/bandit15.html)
                    
```sh
      nc -v localhost 30000
      type prev pass: 4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e
```
``` FLAG: 4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e```


### [Level 16](http://overthewire.org/wargames/bandit/bandit16.html)
                   
```sh
      openssl s_client -ign_eof -connect localhost:30001
      type prev pass: BfMYroe26WYalil77FoDi9qh59eK5xNr
```
``` FLAG: BfMYroe26WYalil77FoDi9qh59eK5xNr```


### [Level 17](http://overthewire.org/wargames/bandit/bandit17.html)
                    
```sh
      nmap -p 31000-32000 localhost | grep -o '^[0-9]\+' > /tmp/portsbandit16
      while read -r port; do openssl s_client -ign_eof -connect localhost:$port; echo "checking port: "$port" ..."; done < /tmp/portsbandit16;
      echo "-----BEGIN RSA PRIVATE KEY-----...   -----END RSA PRIVATE KEY-----" > /tmp/sshkey16.private
      chmod 600 /tmp/sshkey16.private
      ssh -i /tmp/sshkey16.private bandit17@localhost
```
``` FLAG: cluFn7wTiGryunymYOu4RcffSxQluehd```


### [Level 18](http://overthewire.org/wargames/bandit/bandit18.html)
```sh
      diff passwords.new passwords.old
```


### [Level 19](http://overthewire.org/wargames/bandit/bandit19.html)
                    
```sh
      ssh bandit18@bandit.labs.overthewire.org cat readme
```
``` FLAG: kfBf3eYk5BPBRzwjqutbbfE887SVc5Yd```


### [Level 20](http://overthewire.org/wargames/bandit/bandit20.html)
                 
```sh
      ./bandit20-do
      ./bandit20-do id
      ./bandit20-do whoami
      ./bandit20-do cat /etc/bandit_pass/bandit20
```
``` FLAG: IueksS7Ubh8G3DCwVzrTd8rAVOwq3M5x```


### [Level 21](http://overthewire.org/wargames/bandit/bandit21.html)
                    
```sh
      server: nc -l -p 30222
      client: ./suconnect 30222
      server: GbKksEFF4yrVs6il55v6gwY5aVje5f0j
```
``` FLAG: GbKksEFF4yrVs6il55v6gwY5aVje5f0j```


### [Level 22](http://overthewire.org/wargames/bandit/bandit22.html)
                    
```sh   
      cat /etc/cron.d
      ls -la
      cat cronjob_bandit22
      cat /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
```
``` FLAG: gE269g2h3mw3pwgrj0Ha9Uoqen1c9DGr```


### [Level 23](http://overthewire.org/wargames/bandit/bandit23.html)
                    
```sh   
      cd /etc/cron.d/ && ls -l
      cat cronjob_bandit23 
      cat /usr/bin/cronjob_bandit23.sh
      target=$(echo I am user bandit23 | md5sum | cut -d ' ' -f 1)
      cat /tmp/$target
```
``` FLAG: Yk7owGAcWjwMVRwrTesJEwB7WVOiILLI```


### [Level 24](http://overthewire.org/wargames/bandit/bandit24.html)
                    
```sh  
      cd /etc/cron.d/ && ls -ll | cat cronjob_bandit24
``` 
``` FLAG: jc1udXuA1tiHqjIsL8yaapX5XIAI6i0n```






