from pwb_example.main import main
from pywikibot import config2


def test_register_file():
    family = "projectgorgon"
    config2.register_family_file(family, f"/app/{family}_family.py")
    main()
