# == Class: adk
#
# This class sets up adk
#
# Currently functionality is limited to installing or removing the package.
#
# == Parameters
#
# [*manage*]
#   Whether to manage adk using Puppet. Valid values are true (default) 
#   and false.
# [*ensure*]
#   Status of adk. Valid values are 'present' (default) and 'absent'.
#
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
#
# == License
#
# BSD-license. See file LICENSE for details.
#
class adk
(
    Boolean                  $manage = true,
    Enum['present','absent'] $ensure = 'present'

) inherits adk::params
{

if $manage {
    class { '::adk::install':
        ensure => $ensure,
    }
}
}
