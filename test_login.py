# test.py
from webdriver_manager.chrome import ChromeDriverManager 
from selenium import webdriver 
from selenium.webdriver.chrome.service import Service as ChromeService
from selenium.webdriver.common.by import By
import time

driver = webdriver.Chrome(service=ChromeService(ChromeDriverManager().install()))

driver.get('http://localhost:3000/admin/login')

driver.find_element(By.NAME, 'email').send_keys('admin@admin.com')
driver.find_element(By.NAME, 'password').send_keys('123456789')

driver.find_element(By.CSS_SELECTOR, '.form-submit-button').find_element(By.CSS_SELECTOR, '.button').click()

time.sleep(1)

driver.find_elements(By.CSS_SELECTOR,'.flex.justify-left')[4].click()


time.sleep(1)

driver.find_element(By.CSS_SELECTOR, '.button.primary').click()

driver.find_element(By.CSS_SELECTOR, '#name').send_keys('Homme')
driver.find_element(By.CSS_SELECTOR, '#urlKey').send_keys('homme')
driver.find_element(By.CSS_SELECTOR, '.button.primary').click()

time.sleep(1)

driver.find_elements(By.CSS_SELECTOR,'.flex.justify-left')[3].click()
driver.find_element(By.CSS_SELECTOR, '.button.primary').click()


time.sleep(1)