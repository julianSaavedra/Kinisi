package names
allModelPackages

	^self allDomains collect: [ :domain | self modelPackageFor: domain ]