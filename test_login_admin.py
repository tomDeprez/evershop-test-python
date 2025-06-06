from config import SeleniumBrowser  # Assure-toi que le fichier s'appelle selenium_browser.py
import time

def login_admin():
    browser = SeleniumBrowser()
    browser.open_page("https://www.example.com")
    time.sleep(2)  # Attendre que la page se charge