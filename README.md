# CLI-Bashcourse

## Bash to Basics

You already know most of these commands but given how frequently we will make use of them in this lesson, here's a refresher:

- `ls` - List Directory Contents. [Manual](http://man7.org/linux/man-pages/man1/ls.1.html)
- `cd <path/to/directory>` - Change Directory. [Manual](http://man7.org/linux/man-pages/man1/cd.1p.html)
- `touch <dir/filename.ext>` - Create File. [Manual](http://man7.org/linux/man-pages/man1/touch.1.html)
- `mkdir <dir/newdir>` - Create Directory. [Manual](http://man7.org/linux/man-pages/man1/touch.1.html)
- `rm <dir/filename.ext>` - Remove File. [Manual](http://man7.org/linux/man-pages/man1/rm.1.html)
- `cp <dir/filename.ext>` - Copy File. [Manual](http://man7.org/linux/man-pages/man1/cp.1.html)
- `mv <dir/filename.ext> <newdir>` Move/Rename File. [Manual](http://man7.org/linux/man-pages/man1/cp.1.html)

Here are a few more easy and useful commands:

- `cat <filename.ext>` - Display File Contents. [Manual](http://man7.org/linux/man-pages/man1/cat.1.html)
- `head <filename.ext>` - Same as above but first 10 lines. [Manual](http://man7.org/linux/man-pages/man1/head.1.html)
- `tail <filename.ext>` - Same as above but last 10 lines. [Manual](http://man7.org/linux/man-pages/man1/tail.1.html)
- `<command1> && <command2>` - Execute command, then _if the first was successful_ execute second command.
- `<command> > <filename.ext>` - (Over)Write file with output from command.
- `<command> >> <filename.ext>` - Append file with output from command.

## Flags

Flags are like options for commands. Each command has it's own set of flags so you'll need to know a little bit more about the command to use them. For example:

```bash
# To show all (including hidden) contents in a directory
ls -a

# To copy directories and contents recursively
cp -r ~/dir1 ~/dir2
```

The only rule to remember here is that if it's a single letter _i.e._ `-r`, it will start with one `-`. If it's a word _i.e._ `--recursive` it will start with `--` instead of `-`. Sometimes they will overlap usage. `cp -r` and `cp --recursive` are the same.
