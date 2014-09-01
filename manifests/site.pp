require boxen::environment
require homebrew
require gcc

Exec {
  group       => 'staff',
  logoutput   => on_failure,
  user        => $boxen_user,

  path => [
    "${boxen::config::home}/rbenv/shims",
    "${boxen::config::home}/rbenv/bin",
    "${boxen::config::home}/rbenv/plugins/ruby-build/bin",
    "${boxen::config::home}/homebrew/bin",
    '/usr/bin',
    '/bin',
    '/usr/sbin',
    '/sbin'
  ],

  environment => [
    "HOMEBREW_CACHE=${homebrew::config::cachedir}",
    "HOME=/Users/${::boxen_user}"
  ]
}

File {
  group => 'staff',
  owner => $boxen_user
}

Package {
  provider => homebrew,
  require  => Class['homebrew']
}

Repository {
  provider => git,
  extra    => [
    '--recurse-submodules'
  ],
  require  => File["${boxen::config::bindir}/boxen-git-credential"],
  config   => {
    'credential.helper' => "${boxen::config::bindir}/boxen-git-credential"
  }
}

Service {
  provider => ghlaunchd
}

Homebrew::Formula <| |> -> Package <| |>

node default {
  # core modules, needed for most things
  include dnsmasq
  include git
  include hub
  include nginx

  # fail if FDE is not enabled
  if $::root_encrypted == 'no' {
    fail('Please enable full disk encryption and try again')
  }

  # node versions
  include nodejs::v0_6
  include nodejs::v0_8
  include nodejs::v0_10

  # default ruby versions
  ruby::version { '1.9.3': }
  ruby::version { '2.0.0': }
  ruby::version { '2.1.0': }
  ruby::version { '2.1.1': }
  ruby::version { '2.1.2': }

  # common, useful packages
  package {
    [
      'ack',
      'findutils',
      'gnu-tar'
    ]:
  }

  file { "${boxen::config::srcdir}/our-boxen":
    ensure => link,
    target => $boxen::config::repodir
  }
  
  #########################
  #Brett's modules
  include iterm2::stable 
  include iterm2::colors::solarized_dark

  include evernote

  include virtualbox
  #include better_touch_tools
  include onepassword
  include packer
  include appcleaner
  include atom
  include sourcetree
  #include graphviz
  include caffeine
  include google_notifier
  include chrome
  include alfred
  include dropbox
  include skype
  include dropbox
  #include xquartz

  include sublime_text
  include sublime_text::v2

  #homebrew

  #package { 'gource': }
  package { 'git-extras': }

  #end homebrew
  #ST3 packages:
  sublime_text::package { 'SublimeLinter':
    source => 'sublimelinter/SublimeLinter3'
  }
  sublime_text::package { 'SublimeLinter-contrib-puppet':
    source => 'stopdropandrew/SublimeLinter-puppet'
  }
  sublime_text::package { 'SublimeLinter-contrib-puppet-lint':
    source => 'stopdropandrew/SublimeLinter-puppet-lint'
  }

  class { 'vagrant':
    version     => '1.6.3',
    completion  => true,
  }
  vagrant::plugin { 'vagrant-pushbullet': }

  #OSX
  include osx::global::expand_save_dialog
  include osx::global::tap_to_click #?? 
  include osx::dock::autohide
  include osx::dock::clear_dock
  include osx::finder::unhide_library
  include osx::universal_access::ctrl_mod_zoom
  include osx::no_network_dsstores
  include osx::global::natural_mouse_scrolling

  class { 'osx::global::key_repeat_delay':
    delay => 0
  }

  class { 'osx::global::key_repeat_rate':
    rate => 10,
  }

  class { 'osx::dock::hot_corners':
    bottom_right  => "Start Screen Saver",
    top_right     => "Notification Center",
  }
  #end OSX

  #ruby
  # ensure a gem is installed for all ruby versions
  ruby_gem { 'bundler for all rubies':
    gem          => 'bundler',
    version      => '~> 1.0',
    ruby_version => '*',
  }

  #end ruby
}

