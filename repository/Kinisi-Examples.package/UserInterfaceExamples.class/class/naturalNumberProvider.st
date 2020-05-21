example objects
naturalNumberProvider

	| source |
	source := LoadableObservationSource new.
	1 to: 25 do: [:data | source load: data ].
	^source