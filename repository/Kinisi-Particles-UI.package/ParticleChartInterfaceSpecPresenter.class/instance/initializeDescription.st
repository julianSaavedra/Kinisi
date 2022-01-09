initialization
initializeDescription

	| descriptionText |
	descriptionText := 'Chart that will show the <1s> on <2s> for all particles with <3s> plots.'
							expandMacrosWith: interfaceSpec property name capitalized
							with: interfaceSpec dimension name capitalized
							with: interfaceSpec plotType name capitalized.
	description := self
		               instantiate:
		               ObservationInterfaceSpecDesctiptionPresenter
		               on: descriptionText