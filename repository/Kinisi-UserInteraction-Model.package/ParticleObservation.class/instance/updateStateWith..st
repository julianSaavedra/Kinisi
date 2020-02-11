private
updateStateWith: updateAction

	self assertSelfIsStillValid.
	universeObservation
		updateStateFor: self
		with: updateAction