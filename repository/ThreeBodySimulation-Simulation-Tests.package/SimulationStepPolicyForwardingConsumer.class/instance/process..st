action
process: simulationDataPackage

	(packagesThreshold isZero or: [(currentCount \\ packagesThreshold) isZero]) ifTrue: [ forwardingConsumer process: simulationDataPackage ].
	currentCount := currentCount + 1