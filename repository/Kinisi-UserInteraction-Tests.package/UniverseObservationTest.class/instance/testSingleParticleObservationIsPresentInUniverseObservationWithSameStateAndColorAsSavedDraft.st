tests
testSingleParticleObservationIsPresentInUniverseObservationWithSameStateAndColorAsSavedDraft

	| universeObservation draft |

	universeObservation := UniverseObservation new.
	draft := universeObservation newParticleObservation.
	self populateParticleAObservationsIn: draft.

	self
		assertSingleParticleIn: universeObservation
		observesTheSameAs: draft