private
addPageFor: setting named: label with: iconName

	| tab |
	tab := self newNotebookPage.
	tab
		presenterProvider: setting;
		title: label;
		icon: (self iconNamed: iconName).
	notebook addPage: tab