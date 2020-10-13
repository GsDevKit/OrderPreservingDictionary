outdated - baselines
baselineMaster13: spec 
	<version: '1.3-master-baseline' imports: #('1-master-baseline')>
	
	"load gemstone compatibility methods"
	spec
		for: #gemstone
		do: [
			spec
				package: 'Collections-OrderPreservingDictionary'
				with: [ spec includes: 'Collections-OrderPreservingDictionary-GemstoneCompatibility' ].
			spec
				package: 'Collections-OrderPreservingDictionary-GemstoneCompatibility'
				with: [ spec requires: 'Collections-OrderPreservingDictionary' ] ].

	"load GT extensions"
	spec
		for: #gt
		do: [
			spec
				package: 'Collections-OrderPreservingDictionary'
				with: [ spec includes: 'Collections-OrderPreservingDictionary-GTExtensions' ].
			spec
				package: 'Collections-OrderPreservingDictionary-GTExtensions'
				with: [ spec requires: 'Collections-OrderPreservingDictionary' ] ].