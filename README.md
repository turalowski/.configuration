## General info

I'm not kind person.

I'm just someone,

who is going to reset his laptop,

and happy to share these config files in public repo,

for others.

## Executables

- `copy` - I use this runnable to copy configuration files from root to repo
- `replace` - This command is used to replace local configuration files. **DON'T USE IT IF YOU DON'T KNOW HOW TO USE IT**

## Useful information

Here is a non-exhaustive list, in execution-order, of what each file tends to contain:

- `.zshenv` is always sourced. It often contains exported variables that should be available to other programs. For example, `$PATH, $EDITOR, and $PAGER` are often set in `.zshenv`. Also, you can set `$ZDOTDIR` in `.zshenv` to specify an alternative location for the rest of your zsh configuration.
- `.zprofile` is for login shells. It is basically the same as `.zlogin` except that it's sourced before `.zshrc` whereas `.zlogin` is sourced after `.zshrc`. According to the zsh documentation, "`.zprofile` is meant as an alternative to `.zlogin` for ksh fans; the two are not intended to be used together, although this could certainly be done if desired."
- `.zshrc` is for interactive shells. You set options for the interactive shell there with the `setopt` and `unsetopt` commands. You can also load shell modules, set your history options, change your prompt, set up zle and completion, et cetera. You also set any variables that are only used in the interactive shell (e.g. $LS_COLORS).
- `.zlogin` is for login shells. It is sourced on the start of a login shell but after `.zshrc`, if the shell is also interactive. This file is often used to start X using startx. Some systems start X on boot, so this file is not always very useful.
- `.zlogout` is sometimes used to clear and reset the terminal. It is called when exiting, not when opening.

## Notes

- `.bash` is outdated. Use `.zsh` instead
