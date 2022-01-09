visiting
visitAsParticleChartInterfaceSpec: interfaceSpec
 
	| specPresenter |
	specPresenter := ownerPresenter newLabel.
	specPresenter label: ('Chart that will show the <1s> on <2s> for all particles with a plots.' expandMacrosWith: interfaceSpec property name with: interfaceSpec dimension name).
	^specPresenter