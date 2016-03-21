# pirum

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with pirum](#setup)
    * [Setup requirements](#setup-requirements)
    * [Beginning with pirum](#beginning-with-pirum)

## Overview

This module was built to install and configure Pirum, a simple PEAR Channel Server Manager.

## Module Description

This module is meant to manage the installation and configuration of a PEAR channel repository.

## Setup

### Setup Requirements

This module requires a working installation of pear.

### Beginning with pirum

The very basic steps needed for a user to get the module up and running.

~~~puppet

class { 'pirum': 
  configdir    => '/var/www/html',
  server_url   => 'http://my.pear.channel'
  server_alias => 'mychannel'
}
~~~
