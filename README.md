# What
Install docker-ce on a Centos7 machine within Outscale Cloud

# Quick start

1. Configure your machine IP under the *[basic-instance]* section in *./inventory file*

2. Run
```bash
ansible-playbook site.yml
```

3. Create an Outscale Machine Image (OMI) from this Instance

4. Run an Instance with the newly created OMI by passing docker-compose.yml file in the UserData Section


# TODO / Why not
- Be able to have multiple docker-compose
- Open machine ports after parsing the docker-compose file

# Note
- Logs are available in the console-output.
