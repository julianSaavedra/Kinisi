private
nextPackageOrPreviousOneIfNothingNew

	^packages
		ifNotEmpty: [ packages removeFirst ]
		ifEmpty: [ EmptyBufferPackage new ]