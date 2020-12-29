
node "sam.attlocal.net" {
#    package { "google-chrome":
#        provider => dpkg,
#        ensure => latest,
#        source => "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
#    }
    package { ["mate-backgrounds", "gimp", "supertux", "gnome-games", "ssh-askpass-gnome", "whois", "wine", "mate-tweak", "git"]:
        ensure => installed,
    }
    package { "firefox":
        ensure => purged,
    }
    file { "/usr/local/bin/anon":
        ensure => file,
        source => '/opt/sb/bin/anon',
        mode => "0755",
    }
    file { "/usr/local/bin/connect-all":
        ensure => file,
        source => '/opt/sb/bin/connect-all',
        mode => "0755",
    }
    file { "/usr/local/bin/disconnect-all":
        ensure => file,
        source => '/opt/sb/bin/disconnect-all',
        mode => "0755",
    }
    file { "/usr/local/share/themes":
        ensure => "directory",
        source => '/opt/sb/themes',
        recurse => true,
    }
    file { "/usr/local/share/icons":
        ensure => directory,
        source => '/opt/sb/icons',
        recurse => true,
    }
}

