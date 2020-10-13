outdated - baselines
baseline137: spec
	<version: '1.3.7-baseline' imports: #('1.3-master-baseline')>

	spec
		for: #gemstone
		do: [
			spec blessing: #baseline.
			spec
				package: 'Collections-OrderPreservingDictionary-GemstoneCompatibility'
				with: 'Collections-OrderPreservingDictionary-GemstoneCompatibility-monty.1' ].
	spec
		for: #gt
		do: [
			spec
				package: 'Collections-OrderPreservingDictionary-GTExtensions'
				with: 'Collections-OrderPreservingDictionary-GTExtensions-monty.2' ]