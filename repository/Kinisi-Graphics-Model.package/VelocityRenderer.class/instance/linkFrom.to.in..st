private
linkFrom: physicalStateElement to: velocityEndPointElement in: aView

	RTEdgeBuilder new
		view: aView;
		shape: self arrowShape;
		label: [:from :to | 'Velocity'];
		linkElements: (Array with: physicalStateElement with: velocityEndPointElement)