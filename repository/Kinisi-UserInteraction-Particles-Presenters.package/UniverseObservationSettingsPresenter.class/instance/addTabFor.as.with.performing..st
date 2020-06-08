initialization
addTabFor: setting as: label with: iconName performing: tabSelectionAction

	| tab |
	settings add: setting.
	tab := self newTab.
	tab presenter: setting. 
	tab
		label: label;
		closeable: false;
		icon: (self iconNamed: iconName);
		whenTabSelected: tabSelectionAction.
	settingTabs addTab: tab