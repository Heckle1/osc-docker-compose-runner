# What
This script installs docker-ce on a Centos7 machine within Outscale Cloud. Make this machine as an Image.
Now run any VM based on that Image Machine by giving a Dockerfile in the User-Data section (see ./dockerfiles for dockerfile examples).
The dockefile given will be runned within the new VM.

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
