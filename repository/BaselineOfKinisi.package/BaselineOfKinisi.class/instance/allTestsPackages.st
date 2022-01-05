package names
allTestsPackages

	^self allDomains collect: [ :domain | self testsPackageFor: domain ]