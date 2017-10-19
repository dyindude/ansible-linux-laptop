# ansible-linux-laptop<sup>1</sup>

Experimenting with Ansible to start managing the configuration of my laptop.
I primarily use it for browsing and coding, the occasional light gaming on steam.

To use it for yourself, place necessary vars in vars/main.yml and vars/secret.yml:

###### vars/main.yml

```
---
#WIP PLZ IGNORE
#repos_to_clone
#docker stuff?
#maybe our enabled roles go here?
```

###### vars/secret.yml<sup>2</sup>

```
---
user:
  name: 'username'
  comment: 'user comment'
  password: 'changeme'
```








1. better project name to likely come later
2. Refer to [Ansible's documentation](http://docs.ansible.com/ansible/latest/faq.html#how-do-i-generate-crypted-passwords-for-the-user-module) for ways to store a crypted password in this file
