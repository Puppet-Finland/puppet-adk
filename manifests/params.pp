#
# == Class: adk::params
#
# Defines some variables based on the operating system
#
class adk::params {

    case $::osfamily {
        'windows': {
            $package_name = 'windows-adk-all'
            $package_provider = 'chocolatey'
        }

        default: {
            fail("Unsupported OS: ${::osfamily}")
        }
    }
}
