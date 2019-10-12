# Solution for [Bandit Wargames from overthewire.org](http://overthewire.org/wargames/bandit/)



* [Level 1](http://overthewire.org/wargames/bandit/bandit1.html)
```
      ssh bandit0@bandit.labs.overthewire.org
      cd ~
      vi readme
```           

* [Level 2](http://overthewire.org/wargames/bandit/bandit2.html)                    
```
      cat /home/bandit1/-
      
      FLAG: `boJ9jbbUNNfktd78OOpsqOltutMc3MY1`  
```

* [Level 3](http://overthewire.org/wargames/bandit/bandit3.html)
CV1DtqXWVFXTvM2F0k09SHz0YwRINYA9                    
```
      cat /home/bandit2/spaces\ in\ this\ filename
``` 

* [Level 4](http://overthewire.org/wargames/bandit/bandit4.html)
UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK                    
```   cd ~
      cd inhere/
      ls -a
      cat .hidden
``` 

* [Level 5](http://overthewire.org/wargames/bandit/bandit5.html)
pIwrPrtPN36QITSp3EQaw936yaFoFgAB
```
      cd ~
      cd inhere/
      grep -r "^[a-zA-Z0-9]*" .
```

* [Level 6](http://overthewire.org/wargames/bandit/bandit6.html)
koReBOKuIDDepwhWk7jZC0RTdopnAYKh
```
      cd inhere/
      find . -depth -size 1033c | xargs cat
``` 

* [Level 7](http://overthewire.org/wargames/bandit/bandit7.html)
DXjZPULLxYr17uwoI01bNLQbtFemEgo7
```
      find / -size 33c -user bandit7 -group bandit6 2>/dev/null | xargs cat
```

* [Level 8](http://overthewire.org/wargames/bandit/bandit8.html)
HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs
```
      grep "millionth" data.txt
```

* [Level 9](http://overthewire.org/wargames/bandit/bandit9.html)
cvX2JJa4CFALtqS87jk27qwqGhBM9plV                    
```
      sort data.txt | uniq -u
```

* [Level 10](http://overthewire.org/wargames/bandit/bandit10.html)
UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR                    
```
      strings data.txt | grep -a "[=]*"
```

* [Level 11](http://overthewire.org/wargames/bandit/bandit11.html)
truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk                    
```
      base64 -d data.txt
```   

* [Level 12](http://overthewire.org/wargames/bandit/bandit12.html)
IFukwKGsFW8MOq3IRFqrxE1hxTNEbUPR                    
```
      cat data.txt | tr '[A-Za-z]' '[N-ZA-Mn-za-m]'
```

* [Level 13](http://overthewire.org/wargames/bandit/bandit13.html)
5Te8Y4drgCRfCx8ugdwuEX8KFC6k2EUu                    
```
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

* [Level 14](http://overthewire.org/wargames/bandit/bandit14.html)
8ZjyCRiBWFYkneahHwxCv3wb2a1ORpYL                    
```
      scp bandit13@bandit.labs.overthewire.org:sshkey.private .
      chmod 600 /.ssh/sshkey.private
      ssh -i .ssh/sshkey.private bandit14@bandit.labs.overthewire.org
      vi /etc/bandit_pass/bandit14
```

* [Level 15](http://overthewire.org/wargames/bandit/bandit15.html)
4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e                    
```
      nc -v localhost 30000
      type prev pass: 4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e
```

* [Level 16](http://overthewire.org/wargames/bandit/bandit16.html)
BfMYroe26WYalil77FoDi9qh59eK5xNr                   
```
      openssl s_client -ign_eof -connect localhost:30001
      type prev pass: BfMYroe26WYalil77FoDi9qh59eK5xNr
```

* [Level 17](http://overthewire.org/wargames/bandit/bandit17.html)
cluFn7wTiGryunymYOu4RcffSxQluehd                    
```
      nmap -p 31000-32000 localhost | grep -o '^[0-9]\+' > /tmp/portsbandit16
      while read -r port; do openssl s_client -ign_eof -connect localhost:$port; echo "checking port: "$port" ..."; done < /tmp/portsbandit16;
      echo "-----BEGIN RSA PRIVATE KEY-----...   -----END RSA PRIVATE KEY-----" > /tmp/sshkey16.private
      chmod 600 /tmp/sshkey16.private
      ssh -i /tmp/sshkey16.private bandit17@localhost
```

* [Level 18](http://overthewire.org/wargames/bandit/bandit18.html)
```
      diff passwords.new passwords.old
```

* [Level 19](http://overthewire.org/wargames/bandit/bandit19.html)
kfBf3eYk5BPBRzwjqutbbfE887SVc5Yd                    ```ssh bandit18@bandit.labs.overthewire.org cat readme```

* [Level 20](http://overthewire.org/wargames/bandit/bandit20.html)
IueksS7Ubh8G3DCwVzrTd8rAVOwq3M5x                    
```
      ./bandit20-do
      ./bandit20-do id
      ./bandit20-do whoami
      ./bandit20-do cat /etc/bandit_pass/bandit20
```

* [Level 21](http://overthewire.org/wargames/bandit/bandit21.html)
GbKksEFF4yrVs6il55v6gwY5aVje5f0j                    
```
      server: nc -l -p 30222
      client: ./suconnect 30222
      server: GbKksEFF4yrVs6il55v6gwY5aVje5f0j
```

* [Level 22](http://overthewire.org/wargames/bandit/bandit22.html)
gE269g2h3mw3pwgrj0Ha9Uoqen1c9DGr                    
```   
      cat /etc/cron.d
      ls -la
      cat cronjob_bandit22
      cat /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
```

* [Level 23](http://overthewire.org/wargames/bandit/bandit23.html)
Yk7owGAcWjwMVRwrTesJEwB7WVOiILLI                    
```   
      cd /etc/cron.d/ && ls -l
      cat cronjob_bandit23 
      cat /usr/bin/cronjob_bandit23.sh
      target=$(echo I am user bandit23 | md5sum | cut -d ' ' -f 1)
      cat /tmp/$target
```

* [Level 24](http://overthewire.org/wargames/bandit/bandit24.html)
jc1udXuA1tiHqjIsL8yaapX5XIAI6i0n                    
```   
      cd /etc/cron.d/ && ls -ll | cat cronjob_bandit24
``` 
      




