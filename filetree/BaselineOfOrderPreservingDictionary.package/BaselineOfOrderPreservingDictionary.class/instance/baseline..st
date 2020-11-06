baselines
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [ 
			"Packages"
			spec
				package: 'Collections-OrderPreservingDictionary-Core';
				package: 'Collections-OrderPreservingDictionary-Tests'
					with: [ spec requires: #('Collections-OrderPreservingDictionary-Core') ];
				package: 'Collections-OrderPreservingDictionary-GTExtensions'
					with: [ spec requires: #('Collections-OrderPreservingDictionary-Core') ].	"Groups"
			spec
				group: 'Core' with: #('Collections-OrderPreservingDictionary-Core');
				group: 'Tests' with: #('Collections-OrderPreservingDictionary-Tests');
				group: 'Tools'
					with: #('Collections-OrderPreservingDictionary-GTExtensions');
				group: 'all' with: #('Core' 'Tools' 'Tests');
				group: 'default' with: #('all') ].
	spec
		for: #'gemstone'
		do: [ 
			spec
				package: 'Collections-OrderPreservingDictionary-Core'
				with: [ spec includes: 'Collections-OrderPreservingDictionary-GemStone' ].
			spec
				package: 'Collections-OrderPreservingDictionary-GemStone'
				with: [ spec requires: 'Collections-OrderPreservingDictionary-Core' ] ].
	spec
		for: #'gs3.1.x'
		do: [ 
			spec
				package: 'Collections-OrderPreservingDictionary-Core'
				with: [ 
					spec
						includes:
							#('Collections-OrderPreservingDictionary-GemStone' 'Collections-OrderPreservingDictionary-GemStone31x') ].
			spec
				package: 'Collections-OrderPreservingDictionary-GemStone'
				with: [ spec requires: 'Collections-OrderPreservingDictionary-Core' ].
			spec
				package: 'Collections-OrderPreservingDictionary-GemStone31x'
				with: [ spec requires: 'Collections-OrderPreservingDictionary-GemStone' ] ]
