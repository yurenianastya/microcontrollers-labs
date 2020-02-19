import tkinter as tk
import serial
import time

arduino_board = serial.Serial('/dev/ttyUSB0', 9600)

# main tkinter program

led_window = tk.Tk()
led_window.title("Arduino Lab 2")
led_window.geometry('300x100')
led_window.configure(background='white')
label = tk.Label(led_window, text="Hi, choose the algorithm you want to run", font=("Times New Roman", 12))
label.pack(side='top')

def arduino_algo1():
    print("executing algo 1!")
    arduino_board.write(b'1')
    time.sleep(3)
    arduino_board.write(b'0')


def arduino_algo2():
    print("executing algo 2!")
    arduino_board.write(b'2')
    time.sleep(3)
    arduino_board.write(b'0')


def close_window():
    print("closing...")
    arduino_board.write(b'0')
    led_window.destroy()
    exit()
    
btn_1 = tk.Button(led_window, text="Algorithm 1", bg="blue", command=(lambda: arduino_algo1()))
btn_1.pack(side='left')
btn_2 = tk.Button(led_window, text="Algorithm 2", bg="blue", command=(lambda: arduino_algo2()))
btn_2.pack(side='right')
btn_exit = tk.Button(led_window, text="QUIT", fg="red", command=(lambda: close_window()))
btn_exit.pack(side='bottom')

led_window.mainloop()



