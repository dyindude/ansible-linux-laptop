# ansible-linux-laptop<sup>1</sup>

Experimenting with Ansible to start managing the configuration of my laptop.
I primarily use it for browsing and coding, the occasional light gaming on steam.

To use it for yourself, place necessary vars in vars/main.yml and vars/secret.yml:

###### vars/main.yml

```
---
user:
  name: "{{ secret.user.name }}"
  comment: "{{ secret.user.comment }}"
  password: "{{ secret.user.password }}"
  paths:
    home: "/home/{{ secret.user.name }}"
    data: "/home/{{ secret.user.name }}/.data"
```

###### vars/secret.yml<sup>2</sup>

```
---
secret:
  user:
    name: "username"
    comment: "user comment"
    password: "changeme"
```








1. better project name to likely come later
2. Refer to [Ansible's documentation](http://docs.ansible.com/ansible/latest/faq.html#how-do-i-generate-crypted-passwords-for-the-user-module) for ways to store a crypted password in this file
