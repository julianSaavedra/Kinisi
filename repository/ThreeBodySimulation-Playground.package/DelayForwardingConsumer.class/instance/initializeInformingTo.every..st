instance creation
initializeInformingTo: stepResultConsumer every: timeInMiliseconds

	consumer := stepResultConsumer.
	milliseconds := timeInMiliseconds.
	packages := OrderedCollection new