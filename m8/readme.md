## Task 8 

### Accept comma-separated numbers, and then it should write tuple and list of them
```
def arrays():
    numbers = []
    msg.debug("Print coma separated numbers: ")
    num_input = input().split(',')
    numbers.append(num_input)
    num = tuple(numbers)
    msg.debug("\n" + "List: " + str(num_input) + "\n" + "Tuple: " + str(num))
```

### Display current date and time
```
from datetime import datetime
def date_time():
    dt_string = datetime.now().strftime("%d/%m/%Y %H:%M:%S")
    msg.debug(dt_string)
```

### Show basic PC information 
```
import message as msg
def pc_spec():
    msg.info(platform.system() + " " + platform.release())
    msg.info(f"Total RAM installed: {round(psutil.virtual_memory().total / 1000000000, 2)} GB")
    msg.info(platform.processor())
```

### Parses user’s text, and replace some emotions with emoji’s
```
from emoji import emojize
import message as msg
def text_emoji():
    print("write your text")
    user_text = input()
    dict_of_strings = {':)': ':smile:',
                       '<3': ':red_heart:',
                       'love': ':red_heart:',
                       ':(': ':pensive:',
                       'fire': ':fire:',
                       'ok': ':thumbs_up:'}
    for word, replacement in dict_of_strings.items():
        user_text = user_text.replace(word, replacement)
    msg.info(emojize(user_text))
```

### Read htmldocument, parse it, and show it’s title
```
import message as msg
from urllib.request import urlopen
from bs4 import BeautifulSoup
def html_parse():
    html = urlopen('https://www.delftstack.com/howto/python/parse-html-in-python/')
    bs = BeautifulSoup(html.read(), 'html.parser')
    title = bs.find_all('title')
    for t in title:
        msg.info(t.get_text())
```
