private
labeledIfEnabled: element

	labelIsEnabled
		ifTrue: [ | label |
			label := RTLabeled new.
			label text: [ :model | model particleName ].
			element addInteraction: label ]