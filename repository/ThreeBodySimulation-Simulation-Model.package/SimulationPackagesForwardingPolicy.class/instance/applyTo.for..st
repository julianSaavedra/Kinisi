applying policy
applyTo: simulationDataPackage for: forwardingConsumer
 
	(threshold isZero or: [(currentPackageCount \\ threshold) isZero]) ifTrue: [ forwardingConsumer forward: simulationDataPackage ].
	currentPackageCount := currentPackageCount + 1
