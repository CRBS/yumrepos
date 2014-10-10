class yumrepos::crbs_x86_64 (
  $epel_url = $yumrepos::params::crbs_x86_64_url,
  $epel_enabled = $yumrepos::params::crbs_x86_64_enabled,
  $epel_gpgcheck = $yumrepos::params::crbs_x86_64_gpgcheck,
  $epel_includepkgs = $yumrepos::params::crbs_x86_64_includepkgs,
  $epel_exclude = $yumrepos::params::crbs_x86_64_exclude,
) inherits yumrepos::params {

#  file { "/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-${::operatingsystemmajrelease}":
#    ensure => present,
#    owner  => root,
#    group  => root,
#    mode   => 0644,
#    source => "puppet:///modules/yumrepos/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-${::operatingsystemmajrelease}",
#  }

  yumrepo { 'crbs_x86_64':
    descr       => 'CRBS_x86_64',
    baseurl     => $crbs_x86_64_url,
    enabled     => $crbs_x86_64_enabled,
    gpgcheck    => $crbs_x86_64_gpgcheck,
    includepkgs => $crbs_x86_64_includepkgs,
    exclude     => $crbs_x86_64_exclude,
   # gpgkey      => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-${::operatingsystemmajrelease}",
   # require     => File["/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-${::operatingsystemmajrelease}"],
  }
}
