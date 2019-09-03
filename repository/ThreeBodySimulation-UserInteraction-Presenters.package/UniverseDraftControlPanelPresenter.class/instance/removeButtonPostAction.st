private
removeButtonPostAction

	particleDraftList selectedItem ifNotNil: [:selection |
		universeDraft remove: selection.
		self resetParticleDraftList ]