exec {'apt-update':
    command => '/usr/bin/apt-get update',
}

Exec['apt-update'] -> Package <| |>

$essential_packages = ['git', 'build-essential', 'htop' ]

package {$essential_packages:
    ensure => latest,
}
