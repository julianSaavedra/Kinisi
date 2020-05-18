tests - to review
testBufferSourceGivesValuesStoredInBuffer

	| data source |
	data := #(#Element1 #Element2 #Element3).
	buffer := Buffer new.
	data do: [ :element | buffer store: element ].
	source := ObservationBufferedSource
		on: buffer
		ifNoDataAvailableUse: #NoDataIsAvailable.

	data do: [ :element | self assert: source next equals: element ]