# nail --- "nl plus tail"

Equivalent to `wc -l`, excluding empty lines.

Uses `nl` to get the amount of non-empty lines and formats it to look just like
`wc` :)

you can also get the amount of non-empty lines in a file with `grep -c '.'`

## a tangent: cat -n considered harmful

`nl` has many more features that make it more useful than the redundant `cat -n`

`cat -n` does the exact same thing as `nl -ba`, but did you even know you had
the `nl` command?

## Installation

```
git clone git@github.com:kinggizzardandtheinstallationwizard/nail.git
cd nail
cat nail.bash >> ~/.bashrc
```

GLHF

*such is the ebb and flow of life*

*Life which gives freely,life which takes all the same*

*The same way you came, the same way you shall go*

*go onto the horizon, move freely with the wind*
