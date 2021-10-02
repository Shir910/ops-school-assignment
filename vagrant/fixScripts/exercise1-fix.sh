#!/bin/bash
#add fix to exercise1 here

# what went wrong? The network was private
# what was the fix? Making the network public by running the following command:
Vagrant.configure("2") do |config|
  config.vm.network "public_network"
end
