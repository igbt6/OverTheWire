####Solution for [Bandit Wargames from overthewire.org](http://overthewire.org/wargames/bandit/)
###### ||| exists as a command separator


0.  ssh bandit0@bandit.labs.overthewire.org             ```cd ~ ||| vi readme```           

1.  boJ9jbbUNNfktd78OOpsqOltutMc3MY1                    ```cat /home/bandit1/-```

2.  CV1DtqXWVFXTvM2F0k09SHz0YwRINYA9                    ```cat /home/bandit2/spaces\ in\ this\ filename``` 

3.  UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK                    ```cd ~ ||| cd inhere/ ||| ls -a ||| cat .hidden``` 

4.  pIwrPrtPN36QITSp3EQaw936yaFoFgAB                    ```cd ~ ||| cd inhere/ ||| grep -r "^[a-zA-Z0-9]*" .```

5.  koReBOKuIDDepwhWk7jZC0RTdopnAYKh                    ```cd inhere/ ||| find . -depth -size 1033c | xargs cat``` 

6.  DXjZPULLxYr17uwoI01bNLQbtFemEgo7                    ```find / -size 33c -user bandit7 -group bandit6 2>/dev/null | xargs cat```

7.  HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs                    ```grep "millionth" data.txt```

8.  cvX2JJa4CFALtqS87jk27qwqGhBM9plV                    ```sort data.txt | uniq -u```

9.  UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR                    ```strings data.txt | grep -a "[=]*"```

10. truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk                    ```base64 -d data.txt```   

11. IFukwKGsFW8MOq3IRFqrxE1hxTNEbUPR                    ```cat data.txt | tr '[A-Za-z]' '[N-ZA-Mn-za-m]'```

12. 5Te8Y4drgCRfCx8ugdwuEX8KFC6k2EUu                    ```mkdir /tmp/mybandit12 ||| cp ~/data.txt . ||| xxd -r data.txt > data2 ||| file data2 ||| zcat data2 > data3 ||| bunzip2 data3 ||| zcat data3.out > data4 ||| tar -xvf data4 ||| tar -xvf data5.bin ||| bunzip2 data6.bin ||| tar -xvf data6.bin.out ||| zcat data8.bin > data9 ||| cat data9```

13. 8ZjyCRiBWFYkneahHwxCv3wb2a1ORpYL                    ```scp bandit13@bandit.labs.overthewire.org:sshkey.private . ||| chmod 600 /.ssh/sshkey.private ||| ssh -i .ssh/sshkey.private bandit14@bandit.labs.overthewire.org  ||| vi /etc/bandit_pass/bandit14```

14. 4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e                    ```nc -v localhost 30000 ||| type prev pass: 4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e```

15. BfMYroe26WYalil77FoDi9qh59eK5xNr                    ```openssl s_client -ign_eof -connect localhost:30001 ||| type prev pass: BfMYroe26WYalil77FoDi9qh59eK5xNr```

16. cluFn7wTiGryunymYOu4RcffSxQluehd                    ```nmap -p 31000-32000 localhost | grep -o '^[0-9]\+' > /tmp/portsbandit16 ||| while read -r port; do openssl s_client -ign_eof -connect localhost:$port; echo "checking port: "$port" ..."; done < /tmp/portsbandit16;  ||| echo "-----BEGIN RSA PRIVATE KEY-----...   -----END RSA PRIVATE KEY-----" > /tmp/sshkey16.private ||| chmod 600 /tmp/sshkey16.private ||| ssh -i /tmp/sshkey16.private bandit17@localhost```

17. ```diff passwords.new passwords.old```

18. kfBf3eYk5BPBRzwjqutbbfE887SVc5Yd                    ```ssh bandit18@bandit.labs.overthewire.org cat readme```

19. IueksS7Ubh8G3DCwVzrTd8rAVOwq3M5x                    ```./bandit20-do ||| ./bandit20-do id ||| ./bandit20-do whoami ||| ./bandit20-do cat /etc/bandit_pass/bandit20```

20. GbKksEFF4yrVs6il55v6gwY5aVje5f0j                    ```server: nc -l -p 30222 ||| client: ./suconnect 30222  ||| server: GbKksEFF4yrVs6il55v6gwY5aVje5f0j```

21. gE269g2h3mw3pwgrj0Ha9Uoqen1c9DGr                    ```cat /etc/cron.d ||| ls -la ||| cat cronjob_bandit22 ||| cat /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv```

22. Yk7owGAcWjwMVRwrTesJEwB7WVOiILLI                    ```cd /etc/cron.d/ && ls -l ||| cat cronjob_bandit23 ||| cat /usr/bin/cronjob_bandit23.sh ||| target=$(echo I am user bandit23 | md5sum | cut -d ' ' -f 1) ||| cat /tmp/$target```

23. jc1udXuA1tiHqjIsL8yaapX5XIAI6i0n                    ```cd /etc/cron.d/ && ls -ll | cat cronjob_bandit24 |||``` 
      




