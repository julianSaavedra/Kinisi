private
drawAxisBasedOn: originElement with: xAxisEndPointElement and: yAxisEndPointElement in: aView

	RTEdgeBuilder new
		view: aView;
		shape: self axisArrow;
		moveBehind;
		useElementAssociations:
			(Array
				with: originElement -> xAxisEndPointElement
				with: originElement -> yAxisEndPointElement)