# RE Examples

### Here are a few example of RE I've used recently to make my life easier.

---

I received a json of archived tweets that were improperly formatted and couldn't be read by pandas. Rather than wasting my time trying to use multiple libraries to import it and manipulate it in python, I passed it through awk (in the jupyter notebook) and went on with my analysis.

It looked something like this:

```json
{"created_at": "Tue Aug 01 16:23:56 +0000 2017", "id": 892420643555336193...}
{"created_at": "Tue Aug 01 00:17:27 +0000 2017", "id": 892177421306343426...}
{"created_at": "Mon Jul 31 00:18:03 +0000 2017", "id": 891815181378084864...}
```

A bunch of individual json strings, separated by `\n`, not in a list and no commas.

```bash
!awk 'BEGIN{print "["} {printf "%s%s",sep,$0; sep=",\n"} END{print "]"}' tweet.json > tweet_formatted.json
```

This command put `[` at the beginning of the file, then reprinted the line exactly, justify the line left, then put in a `,\n` at the end of each line. Finally, a `]` at the end of the file. Here is the result:

![awk](/Images/awk.png)

---

Here is an example from the bash script I use to prep the class repo and mass comment all the unsolved directories before class.

```bash
sed -i "/^.*Solved/! s/^$day/#$day/" $CLASSREPO/Class-MW-Rice-Cookers/$basetopic/.gitignore

```

`-i` tells sed to make the changes directly to the file (inplace). `/^.*Solved/` says match any line ending in Solved. I could replace this with `/Solved$/` to the same effect. `!` tells sed to only make the change on lines _not_ matching the previous RE. `s/` tells sed to substitute `^$day` with `#$day`.

`$day` is `1`, `2` or `3` passed in from a variable I read in earlier. `$CLASSREPO` is, well, the class repo directory and `$basetopic` is the weekly class topic read in from a find statement I have set up earlier in the script.
