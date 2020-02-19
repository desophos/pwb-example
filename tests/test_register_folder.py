from pwb_example.main import main
from pywikibot import config2


def test_register_folder():
    config2.register_families_folder("/app")
    main()
