class ssh::params {
  unless  $facts['os']['family']  == 'Debian' {
     $package_name = 'openssh-server'
     $service_name = 'sshd'
     }
}
