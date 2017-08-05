class ssh::params {
    $permit_root_login = true 
    $port = 22
   case $facts['operatingsystem'] {
    'Debian','Ubuntu': {
     $package_name = 'openssh-server'     
     $service_name = 'ssh'
    } 
    /^RedHat|CentOS/: {
     $package_name = 'openssh-server'
     $service_name = 'sshd'
     notify{ "${0}  is our operating system!": }
     }
     default : {
     fail ("${facts['operatingsystem']} is not suported!")
     }
  }
}
