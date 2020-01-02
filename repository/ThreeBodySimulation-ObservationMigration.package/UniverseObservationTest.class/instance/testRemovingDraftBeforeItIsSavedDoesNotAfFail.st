tests
testRemovingDraftBeforeItIsSavedDoesNotAfFail

	| universeObservation draft |
	universeObservation := UniverseObservation new.
	draft := universeObservation newParticleObservationDraft.
	self assert: universeObservation particleObservations isEmpty.

	self
		shouldnt: [draft removeYourselfFromUniverse]
		raise: UserInterfaceError