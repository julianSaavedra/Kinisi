tests
testOriginIsConnectedToBothXAndY

	| view axisReference originElement |
	view := RTView new.	
	axisReference := AxisReferenceRenderer new.
	
	axisReference drawIn: view.
	
	originElement := view elements detect: [:element | element model = self originModel ].
	originElement connectedEdges do: [:edge |
		self assert: edge model key equals: self originModel.
		self assert: (self axisModels includes: edge model value )
		 ]