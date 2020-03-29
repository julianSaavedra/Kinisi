private
linkFrom: particleElement to: velocityEndPointElement in: view

	RTEdgeBuilder new
		view: view;
		shape: self arrowShape;
		label: [:from :to | 'Velocity'];
		linkElements: (Array with: particleElement with: velocityEndPointElement)