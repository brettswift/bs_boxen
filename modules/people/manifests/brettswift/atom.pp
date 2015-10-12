class people::brettswift::atom {
	include atom

	# reconcile this list with `apm list --installed --bare`
	atom::package { 'atom-alignment' }
	atom::package { 'atom-beautify' }
	atom::package { 'atom-jshint' }
	atom::package { 'atom-prettify' }
	atom::package { 'file-icons' }
	atom::package { 'git-plus' }
	atom::package { 'language-gitignore' }
	atom::package { 'language-puppet' }
	atom::package { 'linter-puppet-lint' }
	atom::package { 'linter-shellcheck' }
	atom::package { 'meteor-api' }
	atom::package { 'task-list' }
	atom::package { 'todo-show' }


}
