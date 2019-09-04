# Bash Scripting

While most of your experience with bash has been single commands through the terminal, it's capable of so much more.

It's a fully functional language and you can write scripts just like the other languages you've learned.

## Shebang

At the top of every bash script, you have to add your Shebang interpreter.
`#!bin/bash` uses the bash interpreter located in the bash binary file.

## Variables

Variables assignment is pretty much the same as in any language but calling the variable is a little different.

```bash
myvar= "Hello World"
echo $myvar

# You can assign commands to variables as well

go_home= cd ~
$gohome
```

## Loops

Bash has `for`, `while` and `until` loops. The function is the same as python but the syntax is a little different:

### For loops

```bash
for i in {0..5}; do
    echo $i;
done
```

### While loops

```bash
COUNTER=0
while [ $COUNTER -lt 10 ]; do
    echo $COUNTER
    let COUNTER=COUNTER+1
done
```

### Until loops

```bash
COUNTER=20
until [ $COUNTER -lt 10 ]; do
    echo $COUNTER
    let COUNTER-=1
done
```

## Conditionals

Conditionals are the least similar to their python equivalent.

### Test

```bash
number = 1
[ $number == 1 ]

>>> True

# Test if my current directory is a directory
test -d $(pwd)

>>> True

[ -f ~/Documents/ ]

>>> False

```

### If/elif/else statements

```bash
animal = "giraffe"
if [ $animal == "bear" ]; then
    echo "It's a bear"
elif [ $animal == "giraffe"]; then
    echo "It's a giraffe"
else
    echo "It's a $animal";
fi
```

### Case Statements

```bash
animal = "giraffe"
case $animal in

"bear")
    echo "It's a bear";;
"giraffe")
    echo "It's a giraffe";;
*)
    echo "It's a $animal";;
esac
```
