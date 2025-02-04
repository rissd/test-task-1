# Сonsul + Nomad cluster setup

## Зависимости:
```
vagrant
ansible
```

## Как запустить
```
vagrant up
vagrant ssh-config > ssh_config
ansible-playbook -i inventory.ini playbook.yml
```

