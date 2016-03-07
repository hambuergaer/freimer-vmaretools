# Documentation TBD
# 
class vmwaretools {

  if $operatingsystem == 'RedHat' and $operatingsystemmajrelease == 7 {
    package { 'open-vm-tools':
      ensure => installed,
    }
    service { 'vmtoolsd':
      ensure     => 'running',
      enable     => true,
      require    => Package['open-vm-tools'],
      hasstatus  => true,
      hasrestart => true,
    }
  }

  if $operatingsystem == 'RedHat' and $operatingsystemmajrelease == 6 {
    $packages = ['vmware-tools-core','vmware-tools-services','vmware-tools-esx-nox']
  
    package { $packages:
      ensure => installed
    } ~>
    service { 'vmware-tools':
      ensure     => 'running',
      enable     => true,
      hasstatus  => true,
      hasrestart => true,
    }
  }
}
