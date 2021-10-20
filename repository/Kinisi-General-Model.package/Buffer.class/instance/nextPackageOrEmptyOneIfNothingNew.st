private
nextPackageOrEmptyOneIfNothingNew

	^packages
		ifNotEmpty: [ packages removeFirst ]
		ifEmpty: [ EmptyBufferPackage new ]