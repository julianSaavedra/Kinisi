private
assertSelfIsStillValid

	wasRemoved ifTrue: [ ExperimentError signal: 'Observation is no longer valid']