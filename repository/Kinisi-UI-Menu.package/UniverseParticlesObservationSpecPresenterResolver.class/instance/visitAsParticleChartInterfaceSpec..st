visiting
visitAsParticleChartInterfaceSpec: interfaceSpec

	| description |
	description := 'Chart that will show the <1s> on <2s> for all particles with a plots.'
		               expandMacrosWith: interfaceSpec property name
		               with: interfaceSpec dimension name.
	^self descriptionSpecWith: description