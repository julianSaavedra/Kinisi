private
linkFrom: physicalStateElement to: velocityEndPointElement in: aView

	RTEdgeBuilder new
		view: aView;
		shape: self arrowShape;
		linkElements: (Array with: physicalStateElement with: velocityEndPointElement)