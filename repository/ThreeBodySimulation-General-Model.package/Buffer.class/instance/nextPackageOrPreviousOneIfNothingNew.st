private
nextPackageOrPreviousOneIfNothingNew

	packages ifNotEmpty: [ lastPackage := packages removeFirst ].
	^lastPackage