# Linux cheat sheet

## git

| Command | Action |
| --- | --- |
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
| git remote | used to manage repository server/location. **check git remote for more information** |
| git stash | used to temporary store modified files without commit. **check git stash for more information**|

### git remote

Control repository server/location
| Command | Action |
| --- | --- |
| git remote | list connections to other repositories |
| git remote -v | list connections to repositories with URL (verbose) |
| git remote add <connection-name> <url> | create a new connection to remote repository |
| git remote remove <connection-name> | remove connection |
| git remote rename <old-name> <new-name> | change connection name |
| git remote get-url <connection-name> | get connection URL |
| git remote set-url <connection-name> | set connection URL |

### git stash

| Command | Action |
| --- | --- |
| git stash | save modified and changed changes in a stack |
| git stash list | list stack-order changes in stack |
| git stash pop | retrive last stashed change |
| git stash drop | delete last stashed change |

## pacman

See [pacman packages](https://archlinux.org/packages/) for official packages

See [arch user repository](https://aur.archlinux.org/) for unofficial packages
| Command | Action |
| --- | --- |
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

## tmux (terminal multiplexer/splitter)

### terminal actions

| Command | Action |
| --- | --- |
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

### session control

| Command | Action |
| --- | --- |
| tmux | create new session |
| tmux new -s <session-name> | create new session with specified name |
| tmux ls | list sessions |
| tmux a | reconnect to last session |
| tmux a -t <session-name> | reconnect to specific session |
| tmux kill-session -t <session-name> | destroy specific session |
| tmux kill-server | kill all sessions |
