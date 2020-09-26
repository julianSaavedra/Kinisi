private
drawAxisFrom: origin to: xAxisEnd and: yAxisEnd in: canvas

	RSEdgeBuilder arrowedLine
		canvas: canvas;
		shape: self axisArrow;
		useElementAssociations:
			(Array
				with: origin -> xAxisEnd
				with: origin -> yAxisEnd)