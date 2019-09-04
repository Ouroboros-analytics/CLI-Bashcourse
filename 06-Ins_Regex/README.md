# Regex

Regex (RE) is a super useful tool that allows you to match a character or string (expression) of characters and then pass the presence or absence of the expression. It found it's origins in early shell scripting and makes up a large part of how matching works in many languages developed after.

## Syntax

One use of regex you've seen so far is `[Nn][Oo]*` which checks for `N` or `n` followed by any character. This means that if you typed `No`,`N`,`no`, `nO`,`NO`,`NNNNNNNNo`... it would match and be passed as `true` to the case statement.

- `[]` establishes the set of characters to match
- `*` translates to any number of the preceding character
- `.` translates to any character
- `^` translates to the beginning of a line
- `$` translates to the end of a line
- `\` escapes a special character
- `\< word\>` would match any instance of "word", you have to escape the angle brackes to they are treated as angle brackets, then anything inside will be matched literally as well.
- `\{5\}` matches a specific number of preceding RE.

Examples:

- `[0-9]` would match any number
- `[^0-9][a-zA-Z]*\<Solved\>$` matches a line starting in a number, then any number of letters, ending in "Solved"
- `[a-z]\{10\}` matches 10 lowercase letters

## Commands that require RE to be used properly

- `sed` stream editor to transform input text
- `awk` scans for patterns and processes based on the input
- `grep` searches files for a pattern (RE) and prints if the lines that match
