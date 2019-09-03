## Flags

Flags are like options for commands. Each command has it's own set of flags so you'll need to know a little bit more about the command to use them. For example:

```bash
# To show all (including hidden) contents in a directory
ls -a

# To copy directories and contents recursively
cp -r ~/dir1 ~/dir2
```

The only rule to remember here is that if it's a single letter _i.e._ `-r`, it will start with one `-`. If it's a word _i.e._ `--recursive` it will start with `--` instead of `-`. Sometimes they will overlap usage. `cp -r` and `cp --recursive` are the same. Some bash commands have the same flags, but it's best practice to check the manuals (sorry Martha) to know what options the command you're using has available. That said, almost all commands have a `-h` or `--help` to give you an overview of what their options are or how to use the command.
