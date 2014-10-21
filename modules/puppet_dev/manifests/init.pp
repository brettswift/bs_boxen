class puppet_dev {

  #Include generic modules
  include iterm2::stable 
  include iterm2::colors::solarized_dark
  include iterm2::colors::solarized_light
  include iterm2::colors::solarized_dark
  include iterm2::colors::arthur
  include iterm2::colors::saturn

  include virtualbox
  include packer
  include appcleaner
  include atom
  include sourcetree
  #include graphviz
  include chrome
  #include xquartz
  include macvim
  
  #homebrew
  # package { 'gource': } #TODO fix gource: https://code.google.com/p/gource/wiki/MacSupport
  package { 'git-extras': }
  package { 'wget': }
  #end homebrew

  class { 'vagrant':
    version     => '1.6.5',
    completion  => true,
  }

  #ruby
  # ensure a gem is installed for all ruby versions
  ruby_gem { 'bundler for all rubies':
    gem          => 'bundler',
    version      => '~> 1.0',
    ruby_version => '*',
  }
  #end ruby
}