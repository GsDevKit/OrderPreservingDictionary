outdated - versions
version132: spec 
        <version: '1.3.2' imports: #('1.3.1-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'Collections-OrderPreservingDictionary' with: 'Collections-OrderPreservingDictionary-monty.22'.
			spec package: 'Collections-Tests-OrderPreservingDictionary' with: 'Collections-Tests-OrderPreservingDictionary-monty.16'.
                ].