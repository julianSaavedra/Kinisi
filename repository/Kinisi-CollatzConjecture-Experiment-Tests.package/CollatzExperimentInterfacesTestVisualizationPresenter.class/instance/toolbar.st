private
toolbar

	| toolbar |
	toolbar := self newToolbar.
	toolbar
		beBoth;
		addItem: (SpToolbarButtonPresenter new
			label: 'Refresh';
			icon: (self iconNamed: #refresh);
			help: 'Resfresh list of Test cases';
			action: [ self refreshTestCases ];
			yourself).
	^toolbar