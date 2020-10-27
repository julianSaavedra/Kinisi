action
applyTo: stepResult

	(threshold isZero or: [(currentPackageCount \\ threshold) isZero]) ifTrue: [ forwarder forward: stepResult ].
	currentPackageCount := currentPackageCount + 1