This app creates a user interface with a greeting, some text messages, 
and a counter with an increment button.

First we have main it calls the runApp function with an instance of the Greeting class.

Then we have a "Greeting" class that extends "StatelessWidget".
Inside this class we have a 'build' method creates the main structure of the app, 
including an app bar with a title, a background color, and a column of widgets in the body.
Inside the column, there are three 'Container' widgets containing different greeting messages
and a fourth 'Container' with a background that holds an instance of the Counter widget.

We also have a "Counter" class that extends "StatefulWidget", which returns 'CounterState'.
And we have "CounterState" class that extends "State<Counter>".
It includes a 'counter' variable, which is initially set to 0.
The 'build' method returns a Column with a text displaying the current value of the counter 
and a FloatingActionButton to increment the counter. 
The onPressed updates the counter value.

Decorating:
In this app there are simple decorations, which are: changing the backgroud color, 
changing the text font and color, setting padding, wrapping child elements into containers,
aligning information to the center, setting border radius.
There is also an icon for the counter for incrementing and 
the color of the item inside the icon is changed, as well as the color of the icon