example objects
naturalNumberSource

	| source |
	source := LoadableObservationSource new.
	1 to: 25 do: [:sample | source load: sample ].
	^source