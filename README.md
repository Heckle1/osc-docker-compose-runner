# What
Install docker-ce on a Centos7 machine within Outscale Cloud

# Quick start

1. Configure your machine IP under the *[basic-instance]* section in *./inventory file*

2. Run
```bash
ansible-playbook site.yml
```


# TODO / Why not
- Be able to have multiple docker-compose
- Open machine ports after parsing the docker-compose file
