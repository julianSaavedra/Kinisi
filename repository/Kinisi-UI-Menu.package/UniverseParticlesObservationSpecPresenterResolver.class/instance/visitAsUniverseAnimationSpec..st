resutls
visitAsUniverseAnimationSpec: interfaceSpec
 
	| specPresenter |
	specPresenter := ownerPresenter newLabel.
	specPresenter label: 'This observation will show the particles moving based on given initial and environmental conditions'.
	^specPresenter