as yet unclassified
drawIn: view basedOn: universeState

	universeState particleDrafts do: [:aPhysicalState | 
			renderersMapping
				at: aPhysicalState particleName
				ifPresent: [:color |
					| element shape position factor label |
					element := RTElement new.
					element model: aPhysicalState.
					shape := RTEllipse new.
					shape color: color.
					shape size: 10.
					element addShape: shape.
					view add: element.
					position := aPhysicalState position.
					factor :=  gridConfiguration size / gridConfiguration scale.
					position := (position x * factor) @ (position y negated * factor).
					element translateTo: position.
					label := RTLabeled new.
					label text: aPhysicalState particleName.
					element addInteraction: label  ] ].