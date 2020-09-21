support
addPageFor: setting named: label with: iconName performing: tabSelectionAction

	| tab |
	settings add: setting.
	tab := self newNotebookPage.
	tab presenterProvider: [ setting ]. 
	tab
		title: label;
		icon: (self iconNamed: iconName);
		whenRetrievedDo: tabSelectionAction.
	notebook addPage: tab