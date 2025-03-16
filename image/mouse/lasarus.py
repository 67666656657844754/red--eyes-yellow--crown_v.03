import tkinter

def multiply():
    try:
        num1 = float(var1.get()) if var1.get() else 0
        num2 = float(var2.get()) if var2.get() else 0
        result.set(num1 * num2)
    except ValueError:
        result.set("Помилка")

root = tkinter.Tk()
root.title("form1")
root.geometry("300x200")
root.resizable(False, False)

# Змінні для введених чисел та результату
var1 = tkinter.StringVar()
var2 = tkinter.StringVar()
result = tkinter.StringVar(value="")

# Написи
tkinter.Label(root, text="Перший мнж.").place(x=20, y=20)
tkinter.Label(root, text="Другий мнж.").place(x=20, y=50)

# Поля введення (правий верхній кут)
tkinter.Entry(root, textvariable=var1, width=10).place(x=200, y=20)
tkinter.Entry(root, textvariable=var2, width=10).place(x=200, y=50)

# Напис "Добуток"
tkinter.Label(root, text="Добуток:").place(x=80, y=120)

# Поле для результату (початково порожнє)
tkinter.Label(root, textvariable=result, font=("Arial", 12, "bold")).place(x=140, y=120)

# Кнопка "Перемножити" (по центру знизу)
tkinter.Button(root, text="Перемножити", command=multiply).place(x=110, y=150)

root.mainloop()
