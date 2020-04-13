initialization
connectPresenters

	initialState whenChangedDo: [ initialStateDisplay refresh ].
	initialStateDisplaySettings whenChangedDo: [ initialStateDisplay refresh ]