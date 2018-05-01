Docker
=========

This Ansible playbook installs a fresh version of Docker, and configures it with a few recommendations from the [CIS Docker Benchmark][cis].

Role Variables
--------------

`defaults/main.yml` includes a config section which is used to populate `daemon.json`. The defaults used here are set per the [CIS Docker Benchmark][cis].

Example Playbook
----------------

``` yaml
- name: Install Docker on all machines
  hosts: all
  become: true
  roles:
    - docker
```

Testing
-------

Dependencies:

* Vagrant
* Virtualbox
* Ruby

This project uses [Test Kitchen][tk] to create, provision and test the role using [Inspec][is]. With the dependencies installed you can run the tests with:

* `make install` - download all test dependencies
* `make test` - test (destroy, create, converge, setup, verify and destroy) one or more instances

Author Information
------------------

* Sion Williams (sion.williams@ext.ons.gov.uk)

Additional Resources
--------------------

* [ansible role development](https://blog.superk.org/home/ansible-role-development)


[tk]: https://kitchen.ci/
[is]: https://www.inspec.io/
[cis]: https://www.cisecurity.org/benchmark/docker/
