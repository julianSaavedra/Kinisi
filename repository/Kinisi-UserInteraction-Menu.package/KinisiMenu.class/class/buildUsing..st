menu construction
buildUsing: builder

	"See WorldState class>>#pharoItemsOn:"

	| menu |

	menu := self new.
	(builder item: #Kinisi)
		label: 'Kinisi';
		iconName: #remote;
		order: 2.5;
		help: 'Simulator';
		withSeparatorAfter;
		with: [ (builder item: #NewCollatzLab)
				target: menu;
				selector: #openCollatzLab;
				help: 'Open lab for Collatz.';
				order: 2;
				"keyText: 'Ctrl+K+N';"
				iconName: #workspace.
			(builder item: #NewParticlesLab)
				target: menu;
				selector: #openParticlesLab;
				help: 'Open a lab for Particles.';
				order: 2;
				"keyText: 'Ctrl+K+N';"
				iconName: #workspace ]