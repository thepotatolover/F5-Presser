from pynput.keyboard import Key, Controller
import time
keyboard = Controller()   

while True:
    time.sleep(5)
    keyboard.press(Key.f5)
    keyboard.release(Key.f5)
    print("I PRESSED F5 FOR YOU!!!!!")
    time.sleep(25)