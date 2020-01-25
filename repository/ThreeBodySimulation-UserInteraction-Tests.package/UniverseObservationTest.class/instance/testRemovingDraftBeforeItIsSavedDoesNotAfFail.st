tests
testRemovingDraftBeforeItIsSavedDoesNotAfFail

	| universeObservation draft |
	universeObservation := UniverseObservation new.
	draft := universeObservation newParticleObservationDraft.
	self assert: universeObservation particles isEmpty.

	self
		shouldnt: [draft removeYourselfFromUniverse]
		raise: UserInterfaceError