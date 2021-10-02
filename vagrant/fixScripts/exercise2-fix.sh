#!/bin/bash
#add fix to exercise2 here

# What went wrong? I don't have enough permissions to access this resource since the hosting server identifies the curl request as a crawler.
# How to fix? In principle, re-configure the .curlrc user agent by running Vagrant inline script.  

$script = <<-SCRIPT
touch .curlrc
echo "–user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36" >> .curlrc
SCRIPT

Vagrant.configure("2") do |config|
  config.vm.provision "shell", inline: $script
end