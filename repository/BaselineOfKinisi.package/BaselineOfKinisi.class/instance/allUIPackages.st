package names
allUIPackages

	| uiDomainsPackages |
	uiDomainsPackages := self allDomains collect: [ :domain | self uiPackageFor: domain ].
	^uiDomainsPackages copyWith: 'Kinisi-UI-Menu'