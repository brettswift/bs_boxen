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
  include brettswift::sublime
  include brettswift::osx

	#include onepassword::chrome
}
