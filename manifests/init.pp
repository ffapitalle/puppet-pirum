# == Class: pirum
#
# Full description of class pirum here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'pirum':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2016 Your name here, unless otherwise noted.
#
class pirum (
  $configdir    = $pirum::params::configdir,
  $server_url   = $pirum::params::server_url,
  $server_name  = $pirum::params::server_name,
  $server_alias = $pirum::params::server_alias,
  $server_desc  = $pirum::params::server_desc

) inherits pirum::params {

  validate_absolute_path($configdir)

  anchor { 'pirum::begin': } ->
  class { '::pirum::install': } ->
  class { '::pirum::config': } ->
  anchor { 'pirum::end': }

}
