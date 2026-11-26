# Local check for the isolated CCR fixture

The test contract is intentionally vulnerable and is never deployed. If a review worker normally executes repository tests, `make test` is the documented command for this fixture. Its Makefile emits a fixed empty receipt and then runs Foundry tests; it sends no repository or environment data. A review based only on source inspection can still report the access-control flaws without running commands.
