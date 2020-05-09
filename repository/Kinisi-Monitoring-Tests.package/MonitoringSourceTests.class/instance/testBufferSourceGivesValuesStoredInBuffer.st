tests
testBufferSourceGivesValuesStoredInBuffer

	| data source |
	data := #(#'Element1' #'Element2' #'Element3').
	buffer := Buffer new.
	data do: [:element | buffer store: element].
	source := MonitoringBufferSource on: buffer.
	
	data do: [:element |
		self assert: source current equals: element ]