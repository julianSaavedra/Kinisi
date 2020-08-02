test objects
interface

	| interface |
	interface := PluggableObservationInterface processWith: [:observation | ].
	^ObservationInterfaceWitness on: interface