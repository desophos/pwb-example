This repository exists to demonstrate that when using pywikibot as a library, third-party families cannot be registered in user-config.py.

In user-config.py, both `register_families_folder` and `register_family_file` are called according to the instructions. Normally it would be unnecessary to call both, but this demonstrates that neither works. `main` raises an `UnknownFamily` exception, making it clear that the family file is not registered. We can see that both registration functions work fine if called in scripts, but it's necessary to call them again even if they're called in user-config.py.

Side note: `pytest` is invoked on each test function separately in order to reset the global state modified by `config2`. This ensures that the order of test execution doesn't matter.

Steps to reproduce:
-------------------
1. Clone this repository locally.
2. Build an image from the Dockerfile.
3. Run the image to see the problem in action.