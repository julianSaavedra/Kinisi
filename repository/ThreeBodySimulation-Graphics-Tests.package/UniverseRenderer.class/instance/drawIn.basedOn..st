as yet unclassified
drawIn: view basedOn: universeState

	universeState particleDrafts do: [:aPhysicalState | 
			renderersMapping
				at: aPhysicalState particleName
				ifPresent: [:color |
					| element shape position factor |
					element := RTElement new.
					element model: aPhysicalState.
					shape := RTEllipse new.
					shape color: color.
					element addShape: shape.
					view add: element.
					position := aPhysicalState position.
					factor :=  gridConfiguration size / gridConfiguration scale.
					position := (position x * factor) @ (position y negated * factor).
					element translateTo: position ] ].