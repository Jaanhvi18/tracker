# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
image: registry.fly.io/empty-violet-1097:deployment-01HDA2GA5N20RPB4YVWQXJ8Q7Q
image size: 340 MB

Watch your deployment at https://fly.io/apps/empty-violet-1097/monitoring

Provisioning ips for empty-violet-1097
  Dedicated ipv6: 2a09:8280:1::37:90af
  Shared ipv4: 66.241.125.20
  Add a dedicated ipv4 with: fly ips allocate-v4

Creating a 1 GB volume named 'data' for process group 'app'. Use 'fly vol extend' to increase its size
This deployment will:
 * create 1 "app" machine

No machines in group app, launching a new machine
Finished launching new machines
-------
NOTE: The machines for [app] have services with 'auto_stop_machines = true' that will be stopped when idling

-------

Visit your newly deployed app at https://empty-violet-1097.fly.dev/
* ...
