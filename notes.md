GIT Cheat Sheet
---------------

|  |  |
| -- | -- |
| git add -p                                                            | only add some of the changes from a file |
| git reset --hard HEAD                                                 | Reset WD to Previous commit |
| git clean -f -n                                                       | Remove untracked files (dry-run) |
| git reset --hard HEAD~                                                | Delete last Commit |
| git format-patch <base-branch> --stdout > changes.patch               | Changes on seperate branch |
| git diff --full-index HEAD~ > changes.patch                           | Diff for review board |
| git push <remote> :dev/corichar/ptest-wrapper                         | delete remote branch |
| git archive --format=tar.gz --prefix=project/ HEAD > project.tar.gz   | package a repo |
| git send-email -1 --to meta-virtualization@yoctoproject.org --subject-prefix="meta-virtualization][PATCH" | git send email usage

# Make and GNU Stow Cheat Sheet
```
./configure --prefix=/usr/local
make
sudo make install prefix=/usr/local/stow/foo-1.2.3
cd /usr/local/stow
stow foo-1.2.3
# if this does not work then the following might

./configure --prefix=/usr/local
make
sudo make DESTDIR=/usr/local/stow/foo-1.2.3 install
cd /usr/local/stow
# but you may have to fix the path in the installed directory before using stow
stow -t / foo-1.2.3
```

One liners
------------
| Command | Explanation |
| - | - |
| `curl https://github.com/username.keys >> ~/.ssh/authorized_keys` | Allow a certain user to access your machine |
| `ssh-add ~/.ssh/id_rsa`                                           | Unlock your ssh-key for the session |
| `useradd -m -d /home/${user} ${user}`                             | Create a new user |
| `cat list \| xargs -I {} -n1 echo {}.bak`                         | Xargs with argument list |


C Cheat Sheet
-------------
```
printf("%.*s\n" str_len, str); // print non-NUL terminated string
```

Perf Flame Graph
----------------
```
git clone https://github.com/brendangregg/FlameGraph
perf record -F 99 -ag -- sleep 10
perf script | ./stackcollapse-perf.pl > out.perf-folded
./flamegraph.pl out.perf-folded > perf-kernel.svg
```

```
vboxmanage setproperty machinefolder ~/vms
```
