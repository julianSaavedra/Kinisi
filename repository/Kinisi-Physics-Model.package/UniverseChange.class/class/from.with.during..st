instance creation
from: initialState with: changeEnvironment during: delta

	self assertValid: delta.
	^self new
		initializeFrom: initialState
		with: changeEnvironment
		during: delta