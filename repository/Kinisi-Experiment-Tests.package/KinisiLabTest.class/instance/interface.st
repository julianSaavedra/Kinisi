no senders - review
interface

	| interface |
	interface := PluggableObservationInterface processWith: [:observation | ].
	^ObservationsRecordKeeper on: interface