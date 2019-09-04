# Flags

## Instructions:

### Easy-ish

In a single bash command:

- Make a directory `SpaceX`
- In `SpaceX/` make a directory called `API`
- In `API/` make the directories `Launches` and `Capsules`

In another bash command:

- Get the response of the SpaceX API for the [latest SpaceX launch](https://api.spacexdata.com/v3/launches/latest?pretty=true) and put it in a `json` file inside the `Launches/` with the value of `mission_name` (from the api response) as the name.

### Challenge

In a single bash command:

- Do everything from easy
- Get the response from the [Dragon1 Capsule](https://api.spacexdata.com/v3/dragons/dragon1?pretty=true) endpoint and put it in a file called `Dragon1.json` inside `Capsules/Dragon`
- Do this with no output to the terminal

## Resources

[mkdir](http://man7.org/linux/man-pages/man1/mkdir.1.html) : `-p`
<br>
[curl](http://man7.org/linux/man-pages/man1/curl.1.html) : `-s`, `--create-dirs`, `-o`
