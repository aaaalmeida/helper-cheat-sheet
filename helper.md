# CHEAT SHEET 

## GIT

| COMMAND | ACTION |
| :--- | :--- |
| git init | initialise a git project |
| git clone <url> | clone a project from url (you'll change the same project if you have permissions) |
| git status | display modified, uncommited and staged files |
| git add [. \| file] | add file to next commit (stage) |
| git rm [. \| file] | unstage file for next commit |
| git commit -m "message" | commit staged content with message |
| git push | push local branch commits to remote repository |
| git pull | fetch and merge remote commits to local branch |
| git branch | list branches |
| git branch <branch-name> | create new branch with name |
| git checkout <branch-name> | change branch |
| git diff | diff whats changed but not staged yet |
| git diff --staged | diff whats staged but not commited yet |
| git show | display current branch history |
| git fetch <remote> | fetch all updates from remote repository |
| git fetch <remote> <branch> | fetch updates from a specific branch from a remote repository |
| git remote | used to manage repository server/location |
| git stash | used to temporary store modified files without commit |

### GIT REMOTE

Control repository server/location

| COMMAND | ACTION |
| :--- | :--- |
| git remote | list connections to other repositories |
| git remote -v | list connections to repositories with URL (verbose) |
| git remote add <connection-name> <url> | create a new connection to remote repository |
| git remote remove <connection-name> | remove connection |
| git remote rename <old-name> <new-name> | change connection name |
| git remote get-url <connection-name> | get connection URL |
| git remote set-url <connection-name> | set connection URL |

### GIT STASH

Quick operations before a commit

| Command | Action |
| --- | --- |
| git stash | save modified and changed changes in a stack |
| git stash list | list stack-order changes in stack |
| git stash pop | retrive last stashed change |
| git stash drop | delete last stashed change |

## BASH

| COMMAND | ACTION |
| :--- | :--- |
| ln -s filename linkname | create a symlink to file, directory or script |
| read [variable] | read stdin value to variable. if variable not specified then value is stored in ${REPLY} | 
| mapfile arrayname | read stdin to an indexed array |
| mapfile -t arrayname < file | read file to an indexed array ignoring endline |
| readarray | alias to mapfile |
| grep pattern [file] | search patterns in file. if file not specified then search in stdin |
| grep [ -w word-regexp \| -i ignore-case \| -r recursive ] pattern | search pattern |
| source filename | import file into context |
| date | current date |
| date +%F_%T | current date in YYYY-MM-DD_hh:mm:ss |
| date -d 'tomorrow' | tomorrow date |
| time command [arguments] | measure time used to execute command |
| lsblk | list partitions info |
| ssh <user>@<server[:port]> | ssh into server as user (maybe need password) |
## PACMAN

See [pacman packages](https://archlinux.org/packages/) for official packages

See [arch user repository](https://aur.archlinux.org/packages/) for user repository packages
| COMMAND | Action |
| :--- | :--- |
| pacman -S package_name | install package |
| pacman -Ss package_name | search packages |
| pacman -Si package_name | display extensive information about package |
| pacman -Qs package_name | search installed packages |
| pacman -Qi package_name | list package dependencies |
| pacman -Ql package_name | list files installed by package |
| pacman -Qe | list explicitly installed packages |
| pacman -Qn | list native packages |
| pacman -Qm | list foreign packages (manually installed or removed from repositories)
| pacman -Sg package_group | list packages that belong to group |
| pacman -R package_name | remove package |
| pacman -Rs package_name | remove package and unused dependencies |
| pacman -Syu | update all packages |
| pacman -Qtd | list orphan packages (no longer required dependencies) |

## TMUX

terminal multiplexer

### TERMINAL ACTIONS

| COMMAND | ACTION |
| :--- | :--- |
| Ctrl + a | prefix |
| prefix + a | new window |
| prefix + n | next window |
| prefix + p | previous window |
| prefix + d | exit session
| prefix + \<number> | go to window of specific number |
| prefix + w | list windows |
| prefix + & | close window |
| prefix + \| | split vertically |
| prefix + - | split horizontally |
| prefix + r | reload tmux config |
| prefix + I | install tmux plugins |
| Alt + ↑/↓/←/→| switch window |

### SESSION CONTROL

| COMMAND | ACTION |
| :--- | :--- |
| tmux | create new session |
| tmux new -s <session-name> | create new session with specified name |
| tmux ls | list sessions |
| tmux a | reconnect to last session |
| tmux a -t <session-name> | reconnect to specific session |
| tmux kill-session -t <session-name> | destroy specific session |
| tmux kill-server | kill all sessions |

## VIM

### NAVIGATION

```
   k 
h     l
   j 
```

| COMMAND | ACTION |
| :--- | :--- |
| [number] w | move cursor nth words foward |
| [number] e | move cursor to the end of the nth word foward |
| [number] b | move cursor nth words backward |
| 0 | move cursor to start of the line |
| gg | move the start of the file |
| G | move to the end of the file |
| <n> G | move to line n |

### BASIC

| COMMAND | ACTION |
| :--- | :--- |
| :h keyword | open help for keyword |
| :q | quit vim |
| :q! | quit vim without saving |
| :w <filename> | save file |
| u | undo last command |
| CTRL G | file status |
| ! <external command> | execute an external command (see BASH for info) |

| CHANGE MODE COMMAND | ACTION |
| :--- | :--- |
| ESC | exit last mode |
| v | selection mode |
| i | insertion mode |

| COPY AND PASTE | 
| :--- | :--- |
| y | copy to buffer (use v to enter selection mode) |
| yy | copy line |
| p | paste |

| INSERTION COMMAND | ACTION |
| :--- | :--- |
| i | insertion mode on cursor |
| a | insertion mode AFTER cursor |
| A | insertion mode at THE END of the line |
| o | insertion mode on line below |
| O | insertion mode on line ABOVE |

| DELETE COMMAND | ACTION |
| :--- | :--- |
| dd | delete whole line (deleted text goes to buffer) |
| d$ | delete line after cursor |
| dw | delete word on cursor |

| REPLACE COMMAND | ACTION |
| :--- | :--- |
| [number] r <char> | replace nth character at the cursor with char |
| R | free replace mode (replace until ESC) |
| ce | replace until the end of the word |
| cc | replace everything until the end of the word |
| c$ | replace everything until the end of the word |

| SEARCH COMMAND | ACTION |
| :--- | :--- |
| / <word> | search for word in file (use n and N for go to next occurence) |
| ? <word> | search for word in file backwards (use n and N for go to next occurence) |

