outdated - baselines
baselineMaster14: spec 
	<version: '1.4-master-baseline' imports: #('1-master-baseline')>
	
	"load gemstone compatibility methods"
	spec
		for: #gemstone
		do: [
			spec
				package: 'Collections-OrderPreservingDictionary'
				with: [ spec includes: 'Collections-OrderPreservingDictionaryGemstoneCompatibility' ].
			"renamed from 'Collections-OrderPreservingDictionary-GemstoneCompatibility'"
			spec
				package: 'Collections-OrderPreservingDictionaryGemstoneCompatibility'
				with: [ spec requires: 'Collections-OrderPreservingDictionary' ] ].

	"load GT extensions"
	spec
		for: #gt
		do: [
			spec
				package: 'Collections-OrderPreservingDictionary'
				with: [ spec includes: 'Collections-OrderPreservingDictionaryGTExtensions' ].
			"renamed from 'Collections-OrderPreservingDictionary-GTExtensions'"
			spec
				package: 'Collections-OrderPreservingDictionaryGTExtensions'
				with: [ spec requires: 'Collections-OrderPreservingDictionary' ] ].