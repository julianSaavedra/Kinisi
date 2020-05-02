running
setUpSource

	source := Buffer new.
	allDataToBeMonitored do: [ :dataElement | source store: dataElement ].
	source close