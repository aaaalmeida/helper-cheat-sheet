# Linux cheat sheet

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
