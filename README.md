# Сonsul + Nomad cluster setup

## Локальные зависимости:
```
vagrant
ansible
```

## Как запустить:
```
vagrant up
vagrant ssh-config > ssh_config
ansible-playbook -i inventory.ini playbook.yml
```

