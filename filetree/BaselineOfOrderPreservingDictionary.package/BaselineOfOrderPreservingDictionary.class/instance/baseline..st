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
					with: [ spec requires: #('Collections-OrderPreservingDictionary-Core') ].	"Groups"
			spec
				group: 'Core' with: #('Collections-OrderPreservingDictionary-Core');
				group: 'Tests' with: #('Collections-OrderPreservingDictionary-Tests');
				group: 'Tools' with: #();
				group: 'all' with: #('Core' 'Tools' 'Tests');
				group: 'default' with: #('all') ].
	spec
		for: #'gt'
		do: [ 
			spec
				package: 'Collections-OrderPreservingDictionary-GTExtensions'
				with: [ spec requires: #('Collections-OrderPreservingDictionary-Core') ].
			spec
				group: 'Tools'
				with: #('Collections-OrderPreservingDictionary-GTExtensions') ].
	spec
		for: #(#'gemstone')
		do: [ 
			spec
				package: 'Collections-OrderPreservingDictionary-Core'
				with: [ spec includes: 'Collections-OrderPreservingDictionary-GemStone' ].
			spec
				package: 'Collections-OrderPreservingDictionary-GemStone'
				with: [ spec requires: 'Collections-OrderPreservingDictionary-Core' ] ].
	spec
		for: #(#'gs3.2.x' #'gs3.3.x' #'gs3.4.x' #'gs3.5.x' #'gs3.6.x')
		do: [ 
			spec
				package: 'Collections-OrderPreservingDictionary-Core'
				with: [ spec includes: 'Collections-OrderPreservingDictionary-GemStone32-' ].
			spec
				package: 'Collections-OrderPreservingDictionary-GemStone32-'
				with: [ spec requires: 'Collections-OrderPreservingDictionary-Core' ] ].
	spec
		for: #'gs3.1.x'
		do: [ 
			spec
				package: 'Collections-OrderPreservingDictionary-Core'
				with: [ spec includes: #('Collections-OrderPreservingDictionary-GemStone31x') ].
			spec
				package: 'Collections-OrderPreservingDictionary-GemStone31x'
				with: [ spec requires: 'Collections-OrderPreservingDictionary-Core' ] ]