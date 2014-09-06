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

  #want both! greedy
  include sublime_text::v2

  include google_notifier

  vagrant::plugin { 'vagrant-pushbullet': }
  vagrant::plugin { 'vagrant-digitalocean': }
  vagrant::plugin { 'vagrant-vbox-snapshot': }


}