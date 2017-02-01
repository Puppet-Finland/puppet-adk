# == Class: adk::install
#
# This class installs adk
#
class adk::install
(
    $ensure

) inherits adk::params
{
    package { $::adk::params::package_name:
        ensure   => $ensure,
        provider => $::adk::params::package_provider,
    }
}
