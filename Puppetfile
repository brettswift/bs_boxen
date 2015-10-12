# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod "puppet-#{name}", :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.7.0"

# Support for default hiera data in modules

github "module_data", "0.0.3", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",     "2.0.0"
github "foreman",     "1.2.0"
github "gcc",         "2.2.0"
github "git",         "2.5.0"
github "go",          "1.1.0"
github "homebrew",    "1.9.5"
github "hub",         "1.3.0"
github "inifile",     "1.1.1", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",       "1.4.3"
github "nodejs",      "3.8.1"
github "openssl",     "1.0.0"
github "phantomjs",   "2.3.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.3.0"
github "ruby",        "8.1.4"
github "stdlib",      "4.2.1", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.2.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
github "iterm2",      "1.2.x"
github "alfred",      "1.3.x"
github "sublime_text","1.0.x"
github "chrome",      "1.2.x"
github "dropbox",     "1.4.x"
github "skype",       "1.0.x"
github "osx",         "2.7.x",  :repo => "brettswift/puppet-osx"
github "evernote",    "2.0.x"
github "virtualbox",  "1.0.13"
github "vagrant",     "3.1.x"
github "better_touch_tools",  "3.0.0"
github "onepassword", "1.1.x"
github "packer",      "1.3.x"
github "appcleaner",  "1.0.x"
github "atom",        "1.0.x"
github "sourcetree",  "1.0.x"
#github "graphviz",    "1.0.x"  broken..
github "nvm",         "1.0.x"
github "caffeine",    "1.0.x"
github "google_notifier", "1.0.x"
#github "xquartz",     "1.2.x"
github "zsh",          "1.0.x"
github "ohmyzsh",      "1.0.x",  :repo => "erivello/puppet-ohmyzsh"
github "hipchat",      "1.1.x"
github "homesick",     "0.0.x",  :repo => "brettswift/puppet-homesick"
github "macvim",       "1.0.0"
