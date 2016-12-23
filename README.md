# chef-provisioning-docker
Forked from https://github.com/chef/chef-provisioning-docker.

It adds --net and --ip options support for Docker containers.


# Network

## Public network

Specify network options in docker_options to run in network named 'pub_net' and assign IP address '10.1.0.120'

```
with_driver 'docker'
machine 'mycontainer_name' do
  recipe "myrecipe::install"



  machine_options docker_options: {
    ...
    net: 'pub_net',
    ip: '10.1.0.120'
  }

end


```


* Network specified for :net option should exist.

* to create Docker network:

for example, create network on host machine with gateway 10.1.0.1 
```
docker network create -d macvlan --subnet=10.1.0.0/24  --gateway=10.1.0.1  -o parent=eth0 pub_net

# check network created
docker network ls

# find network named pub_net
```

