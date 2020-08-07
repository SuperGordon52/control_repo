node default {
  file { '/root/README':
    ensure => file,
    content => 'This is a readme',
    owner   => 'root',
  }
}
node 'master.puppet.vm' {
  include role::master_server
  file {'/root/README':
    ensure => file,
    content => "Welcome to Master",
    owner => 'root',
  }
}
node 'web.puppet.vm' { 
  include role::app_server
}
node 'db.puppet.vm' {
  include role::db_server
}
