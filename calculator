import tkinter as tk
import math

# Function to evaluate the expression and display the result
def calculate():
    expression = entry.get()
    try:
        result = eval(expression)
        entry.delete(0, tk.END)
        entry.insert(tk.END, result)
    except Exception:
        entry.delete(0, tk.END)
        entry.insert(tk.END, "Error")

# Function to clear the entry widget
def clear():
    entry.delete(0, tk.END)

# Function to handle button clicks
def button_click(number):
    current = entry.get()
    entry.delete(0, tk.END)
    entry.insert(tk.END, current + str(number))

# Create the main window
window = tk.Tk()
window.title("Microsoft Calculator")

# Create an entry widget to display the numbers and results
entry = tk.Entry(window, width=25, font=('Arial', 20), justify=tk.RIGHT)
entry.grid(row=0, column=0, columnspan=4, padx=10, pady=10)

# Define button labels
button_labels = [
    '7', '8', '9', '/',
    '4', '5', '6', '*',
    '1', '2', '3', '-',
    '0', '.', '=', '+'
]

# Create buttons using a loop
buttons = []
for i in range(len(button_labels)):
    button = tk.Button(window, text=button_labels[i], padx=20, pady=20, font=('Arial', 15), command=lambda num=i: button_click(button_labels[num]))
    buttons.append(button)

# Position the buttons on the grid
row = 1
col = 0
for button in buttons:
    button.grid(row=row, column=col)
    col += 1
    if col > 3:
        col = 0
        row += 1

# Create the clear button
clear_button = tk.Button(window, text='C', padx=20, pady=20, font=('Arial', 15), command=clear)
clear_button.grid(row=row, column=col)

# Create the equal button
equal_button = tk.Button(window, text='=', padx=20, pady=20, font=('Arial', 15), command=calculate)
equal_button.grid(row=row+1, column=col)

# Start the main loop
window.mainloop()
