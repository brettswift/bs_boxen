class people::brettswift::sublime {
  include sublime_text
  
  sublime_text::package { 'SublimeLinter':
    source => 'sublimelinter/SublimeLinter3'
  }
  sublime_text::package { 'SublimeLinter-contrib-puppet':
    source => 'stopdropandrew/SublimeLinter-puppet'
  }
  sublime_text::package { 'SublimeLinter-contrib-puppet-lint':
    source => 'stopdropandrew/SublimeLinter-puppet-lint'
  }
  sublime_text::package { 'SublimePuppet':
    source => 'russCloak/SublimePuppet'
  }
  sublime_text::package { 'FocusFileOnSidebar': 
    source => 'miguelgraz/FocusFileOnSidebar'
  }
  sublime_text::package { 'SideBarEnhancements': 
    source => 'titoBouzout/SideBarEnhancements'
  }
  sublime_text::package { 'SublimeRubyEval': 
    source => 'jugyo/SublimeRubyEval'
  }
  sublime_text::package { 'RubyFormat': 
    source => 'zmbacker/RubyFormat'
  }

}