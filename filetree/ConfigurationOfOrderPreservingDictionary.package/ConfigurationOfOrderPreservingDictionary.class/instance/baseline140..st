outdated - baselines
baseline140: spec
	<version: '1.4.0-baseline' imports: #('1.4-master-baseline')>

	spec
		for: #gemstone
		do: [
			spec blessing: #baseline.
			spec
				package: 'Collections-OrderPreservingDictionaryGemstoneCompatibility'
				with: 'Collections-OrderPreservingDictionaryGemstoneCompatibility-monty.1' ].
	spec
		for: #gt
		do: [
			spec
				package: 'Collections-OrderPreservingDictionaryGTExtensions'
				with: 'Collections-OrderPreservingDictionaryGTExtensions-monty.1' ]