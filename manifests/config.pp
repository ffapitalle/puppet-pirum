class pirum::config inherits pirum {

  # FIXME: ensure $configdir
  file { "$configdir/pirum.xml":
    content => template("pirum/config.xml.erb"),
    notify  => Exec['build_pirum']
  }

  exec { 'build_pirum':
    command     => "/usr/bin/pirum build $configdir",
    refreshonly => true
  }

}
