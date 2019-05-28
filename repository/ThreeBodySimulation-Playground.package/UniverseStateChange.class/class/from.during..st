instance creation
from: anObservableUniverseState during: timeMeasure

	self assertNonNegativeTime: timeMeasure.
	^self new initializeFrom: anObservableUniverseState during: timeMeasure