import webbrowser
import pyautogui as py
import pyperclip as pc
import time
from tkinter import *

root = Tk()

root.title('Abrir Browser')
root.geometry('200x200')

def google():
    webbrowser.open('www.google.com')
def lol_Wesley():
    import pyautogui
    import pyperclip
    import time
    pyautogui.PAUSE = 2
    time.sleep(2)
    pyautogui.click(x=764, y=743)
    time.sleep(10)
    pyautogui.click(x=219, y=257)
    pyautogui.write('guinhwbarbosa19961')
    pyautogui.click(x=285, y=327)
    pyautogui.write('wesleybarbosa2015')
    pyautogui.press('enter')
def lol_Tinho():
    import pyautogui
    import pyperclip
    import time
    pyautogui.PAUSE = 2
    time.sleep(2)
    pyautogui.click(x=764, y=743)
    time.sleep(10)
    pyautogui.click(x=219, y=257)
    pyautogui.write('tinho2015')
    pyautogui.click(x=285, y=327)
    pyautogui.write('anime2015')
    pyautogui.press('enter')
def lol_Emerson():
    import pyautogui
    import pyperclip
    import time
    pyautogui.PAUSE = 2
    time.sleep(2)
    pyautogui.click(x=764, y=743)
    time.sleep(10)
    pyautogui.click(x=219, y=257)
    pyautogui.write('tinhodarkw1')
    pyautogui.click(x=285, y=327)
    pyautogui.write('tinhodark1')
    pyautogui.press('enter')
mygoogle = Button(root, text='Abrir google', command=google).pack(pady=20)
mylol = Button(root, text='Lol de Wesley', command=lol_Wesley).pack(pady=15)
mylol1 = Button(root, text='Lol de Tinho', command=lol_Tinho).pack(pady=10)
mylol2 = Button(root, text='Lol de Emerson', command=lol_Emerson).pack(pady=5)
root.mainloop()
