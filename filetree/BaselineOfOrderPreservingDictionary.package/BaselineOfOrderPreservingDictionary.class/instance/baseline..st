baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			"Packages"
			spec package: 'Collections-OrderPreservingDictionary';
				  package: 'Collections-OrderPreservingDictionary-Tests' with: [ spec requires: #('Collections-OrderPreservingDictionary') ];
				  package: 'Collections-OrderPreservingDictionary-GTExtensions' with: [ spec requires: #('Collections-OrderPreservingDictionary') ].
				
			"Groups"	
			spec
				group: 'Core' with: #('Collections-OrderPreservingDictionary');
				group: 'Tests' with: #('Collections-OrderPreservingDictionary-Tests');
				group: 'Tools' with: #('Collections-OrderPreservingDictionary-GTExtensions');
				group: 'all' with: #('Core' 'Tools' 'Tests');
				group: 'default' with: #('all') ].

	spec
		for: #gemstone
		do: [ 
			spec package: 'Collections-OrderPreservingDictionary' with: [ spec includes: 'Collections-OrderPreservingDictionary-GemstoneCompatibility' ].
			spec package: 'Collections-OrderPreservingDictionary-GemstoneCompatibility' with: [ spec requires: 'Collections-OrderPreservingDictionary' ]].