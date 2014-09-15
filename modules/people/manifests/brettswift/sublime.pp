class people::brettswift::sublime {
	include sublime_text
	#want both! greedy
	include sublime_text::v2

	#alias subl
	file {'/opt/boxen/bin/sub':
		ensure 	=> 'link',
		target 	=> '/opt/boxen/bin/subl',	
	}

	sublime_text::package { 'SublimeLinter':
		source => 'sublimelinter/SublimeLinter3',
	}
	sublime_text::package { 'SublimeLinter-contrib-puppet':
		source => 'stopdropandrew/SublimeLinter-puppet',
	}
	sublime_text::package { 'SublimeLinter-contrib-puppet-lint':
		source => 'stopdropandrew/SublimeLinter-puppet-lint',
	}
	sublime_text::package { 'SublimePuppet':
		source => 'russCloak/SublimePuppet',
	}
	sublime_text::package { 'FocusFileOnSidebar': 
		source => 'miguelgraz/FocusFileOnSidebar',
	}
	sublime_text::package { 'SideBarEnhancements': 
		source => 'titoBouzout/SideBarEnhancements',
	}
	sublime_text::package { 'SublimeRubyEval': 
		source => 'jugyo/SublimeRubyEval',
	}
	sublime_text::package { 'BeautifyRuby': 
		source => 'CraigWilliams/BeautifyRuby',
	}
	sublime_text::package { 'GitGutter': 
		source => 'jisaacks/GitGutter',
	}
	sublime_text::package { 'Markdown Preview':
		source => 'revolunet/sublimetext-markdown-preview',
	}
	sublime_text::package { 'Git':
		source => 'kemayo/sublime-text-git',
	}

	# /Users/bswift/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings
}