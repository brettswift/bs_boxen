class people::brettswift {

	include hipchat
  include evernote
  include better_touch_tools
  include onepassword
  include caffeine
  include alfred
  include dropbox
  include skype

  include zsh
  include ohmyzsh

  include google_notifier

  vagrant::plugin { 'vagrant-pushbullet': }
  vagrant::plugin { 'vagrant-digitalocean': }
  vagrant::plugin { 'vagrant-vbox-snapshot': }

  package { 'cmatrix': }

  include homesick
  include brettswift::osx

	include onepassword::chrome



		#Include generic modules
		include iterm2::stable
		include iterm2::colors::solarized_dark
		include iterm2::colors::solarized_light
		include iterm2::colors::solarized_dark
		include iterm2::colors::arthur
		include iterm2::colors::saturn


		include appcleaner

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



	#ruby
	# ensure a gem is installed for all ruby versions
	ruby_gem { 'bundler for all rubies':
		gem          => 'bundler',
		version      => '~> 1.0',
		ruby_version => '*',
	}
	#end ruby
}


##TODO - install these after re-image:
# hipchat
# gitifier
# Limechat
# seashore
# sourcetree
# twitter
