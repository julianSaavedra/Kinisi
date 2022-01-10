API
initializePresenters

	| orientationToBeSelected |
	forceModule := self instantiate: ScalarMeasurePresenter on: specification module.
	forceModule
		label: 'Module';
		units: {specification module unit};
		changeModelWith: [:newModule |
			self updateModelWith: (specification module: newModule) ].
		
	orientation := self newDropList.
	orientation display: [:anOrientation | anOrientation name ].
	orientation items: { ForceOrientationSpecification clockwise. ForceOrientationSpecification counterclockwise }.
	orientationToBeSelected := orientation items detect: [:anOrientation | anOrientation = specification orientation ].
	orientation selectItem: orientationToBeSelected.
	orientation whenSelectedItemChangedDo: [:newOrientation |
			self updateModelWith: (specification orientation: newOrientation) ]