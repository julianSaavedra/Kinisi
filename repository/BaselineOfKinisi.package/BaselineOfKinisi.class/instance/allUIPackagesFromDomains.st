package names
allUIPackagesFromDomains

	^self allDomains collect: [ :domain | self uiPackageFor: domain ]