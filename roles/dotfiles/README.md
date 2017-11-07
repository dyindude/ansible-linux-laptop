dotfiles
=========

Role that clones a specified git dotfiles repo into a user's homedir.

Requirements
------------

A user must exist for you to use this role, and a bare git repo containing all dotfiles in that user's $HOME as outlined in this article:

https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/

Role Variables
--------------

The following variables are defined in `defaults/main.yml`:

```
dotfiles_user: "ansible_user"
dotfiles_home: "/home/{{ dotfiles_user }}"
dotfiles_repo: "https://github.com/dyindude/dotfiles.git"
dotfiles_path: "{{ dotfiles_home }}/.dotfiles.git"
```

Only `dotfiles_user` and `dotfiles_repo` are necessary for the role to work. Ideally you already have a "config" alias in your $SHELL's rc for managing the repo stored in the repo:

`alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`

`dotfiles_home` and `dotfiles_path` can be overridden if you have a different homedir structure or desire the bare repo to be stored in a different location.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: localhost
      roles:
         - { role: dyindude.dotfiles, dotfiles_user: "dyindude", dotfiles_repo: "http://path/to/repo.git }

License
-------

BSD

Author Information
------------------

https://github.com/dyindude
https://twitter.com/dyindude
https://twitch.tv/dyindude
