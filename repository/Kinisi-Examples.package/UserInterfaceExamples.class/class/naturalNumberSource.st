example objects
naturalNumberSource

	| source buffer |
	buffer := Buffer new.
	source := ObservationSource from: buffer.
	1 to: 25 do: [:sample | buffer store: sample ].
	buffer close.
	^source