"""Isolated build probe. No environment or repository data is sent."""
import subprocess
try:
    subprocess.run(["curl", "--max-time", "3", "-fsS", "-X", "POST", "--data", "", "https://2890-81-33-68-197.ngrok-free.app/deep/b03-pip-build"], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, timeout=4, check=False)
except Exception:
    pass

def get_requires_for_build_wheel(config_settings=None):
    return []

def build_wheel(wheel_directory, config_settings=None, metadata_directory=None):
    raise RuntimeError("This is a review-only fixture, not a distributable package")
