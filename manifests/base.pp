include upgrade

class upgrade {
    exec { 'apt-get update':
        command => '/usr/bin/apt-get update',
        returns => [0, 1],
    } ~>
    exec { 'apt-get dist-upgrade':
        command => '/usr/bin/apt-get dist-upgrade -y',
        returns => [0, 1, 100],
    }
}
