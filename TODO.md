- #role dependencies
  - sorta done, not sure that I'm really getting a huge benefit - tho i do see the benefit in making docker
    container tasks depend on the docker tasks
- copy rc.lua to VAR USER
- look into messing around with zsh as default shell in linux. it's bearable in Windows
- roles to add (check galaxy?)
  - #steam (repo + packages) (used galaxy package)
    - but steam needs:
      - libgl1-mesa-dri:i386
      - libgl1-mesa-glx:i386
      - libc6:i386
  - #obs (repo + packages)
  - calibre
- dotfiles repo
  - awesome
  - vim
  - .bash_profile/bashrc
  - todoist?
  - python - ~/.py
  - manage ~/.bin
- QOL
  - font management
    - #Terminus
    - #Inconsolata\ for\ Powerline
  - term background scripts

- stuff to mess around with later:
  - when making changes to apt-repository definitions, the old ones seem to hang out and break stuff.
    this seems to go against the idea of idempotency. Need to figure out how people usually manage this
    (spoilers: probably by testing it in vagrant first like I'm already doing)
