private
toolBar

	| toolBar |
	toolBar := self newToolBar.
	toolBar
		addButtonLabel: 'Refresh'
		iconNamed: #refresh
		help: 'Resfresh list of Test cases'
		action: [self refreshTestCases].
	^toolBar