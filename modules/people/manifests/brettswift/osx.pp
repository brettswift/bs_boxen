class people::brettswift::osx {

  include osx::global::expand_save_dialog
  include osx::global::tap_to_click #requires logout
  include osx::dock::autohide
  include osx::dock::magnification #currently on brettswift's fork
  include osx::dock::clear_dock
  include osx::finder::unhide_library
  include osx::universal_access::ctrl_mod_zoom #requires logout
  include osx::universal_access::enable_scrollwheel_zoom
  include osx::no_network_dsstores
  include osx::global::natural_mouse_scrolling
  include osx::software_update
  include osx::disable_app_quarantine

  osx::recovery_message { 'If this Mac is found, please call 403-861-2552': }

  class { 'osx::global::key_repeat_delay':
    delay  =>  15,  
  }

  class { 'osx::global::key_repeat_rate':
    rate => 2,
  }

  class { 'osx::dock::hot_corners':
    bottom_right  => "Start Screen Saver",
    # top_right     => "None",
  }

  class { 'osx::dock::icon_size':
    size => 20
  }

}