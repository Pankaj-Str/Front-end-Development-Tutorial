# Events

Events are actions or occurrences that happen in the browser, such as a user clicking a button, resizing the window, pressing a key, or the browser finishing loading a web page. Handling events allows you to respond to user interactions and create dynamic and interactive web applications. Here's how you can work with events in JavaScript:

# Understanding Events and Event Handlers

An event is something that happens when a user interacts with a web page, such as clicking a link or button, entering text into an input box or textarea, making selections in a select box, pressing keys on the keyboard, moving the mouse pointer, or submitting a form. In some cases, the browser itself can trigger events, such as page load and unload events.

When an event occurs, you can use a JavaScript event handler (or an event listener) to detect it and perform specific tasks. By convention, the names for event handlers always begin with the word "on", so an event handler for the click event is called `onclick`, an event handler for the load event is called `onload`, an event handler for the blur event is called `onblur`, and so on.

There are several ways to assign an event handler. The simplest way is to add them directly to the start tag of HTML elements using special event-handler attributes. For example, to assign a click handler for a button element, you can use the `onclick` attribute, like this:

```html
<button type="button" onclick="alert('Hello World!')">Click Me</button>
```

However, to keep JavaScript separate from HTML, you can set up event handlers in an external JavaScript file or within `<script>` and `</script>` tags, like this:

```html
<button type="button" id="myBtn">Click Me</button>
<script>
    function sayHello() {
        alert('Hello World!');
    }
    document.getElementById("myBtn").onclick = sayHello;
</script>
```

Note: Since HTML attributes are case-insensitive, `onclick` may also be written as `onClick`, `OnClick`, or `ONCLICK`. But its value is case-sensitive.

In general, events can be categorized into four main groups: mouse events, keyboard events, form events, and document/window events. This README provides a brief overview of the most useful events within these categories, along with real-life practice examples.

## Mouse Events

A mouse event is triggered when the user clicks on an element, moves the mouse pointer over an element, etc. Here are some important mouse events and their event handlers.

### The Click Event (`onclick`)

The click event occurs when a user clicks on an element on a web page. This often includes form elements and links. You can handle a click event with an `onclick` event handler.

Example:

```html
<button type="button" onclick="alert('You have clicked a button!')">Click Me</button>
<a href="#" onclick="alert('You have clicked a link!')">Click Me</a>
```

### The Contextmenu Event (`oncontextmenu`)

The contextmenu event occurs when a user right-clicks on an element to open a context menu. You can handle it with an `oncontextmenu` event handler.

Example:

```html
<button type="button" oncontextmenu="alert('You have right-clicked a button!')">Right Click on Me</button>
<a href="#" oncontextmenu="alert('You have right-clicked a link!')">Right Click on Me</a>
```

### The Mouseover Event (`onmouseover`)

The mouseover event occurs when a user moves the mouse pointer over an element. It can be handled using the `onmouseover` event handler.

Example:

```html
<button type="button" onmouseover="alert('You have placed the mouse over a button!')">Place Mouse Over Me</button>
<a href="#" onmouseover="alert('You have placed the mouse over a link!')">Place Mouse Over Me</a>
```

### The Mouseout Event (`onmouseout`)

The mouseout event occurs when a user moves the mouse pointer outside of an element. It can be handled using the `onmouseout` event handler.

Example:

```html
<button type="button" onmouseout="alert('You have moved out of the button!')">Place Mouse Inside Me and Move Out</button>
<a href="#" onmouseout="alert('You have moved out of the link!')">Place Mouse Inside Me and Move Out</a>
```

## Keyboard Events

Keyboard events are fired when the user presses or releases a key on the keyboard. Here are some important keyboard events and their event handlers.

### The Keydown Event (`onkeydown`)

The keydown event occurs when the user presses down a key on the keyboard. It can be handled using the `onkeydown` event handler.

Example:

```html
<input type="text" onkeydown="alert('You have pressed a key inside the text input!')">
<textarea onkeydown="alert('You have pressed a key inside the textarea!')"></textarea>
```

### The Keyup Event (`onkeyup`)

The keyup event occurs when the user releases a key on the keyboard. It can be handled using the `onkeyup` event handler.

Example:

```html
<input type="text" onkeyup="alert('You have released a key inside the text input!')">
<textarea onkeyup="alert('You have released a key inside the textarea!')"></textarea>
```

### The Keypress Event (`onkeypress`)

The keypress event occurs when a user presses down a key on the keyboard that has a character value associated with it. It doesn't trigger for keys like Ctrl, Shift, Alt, Esc, Arrow keys, etc. You can handle it using the `onkeypress` event handler.

Example:

```html
<input type="text" onkeypress="alert('You have pressed a key inside the text input!')">
<textarea onkeypress="alert('You have pressed a key inside the textarea!')"></textarea>
```

## Form Events

Form events are fired when a form control receives or loses focus or when the user modifies a form control value. Here are some important form events and their event handlers.

### The Focus Event (`onfocus`)

The focus event occurs when the user gives focus to an element on a web page. It can be handled using the `onfocus` event handler.

Example:

```html
<script>
    function highlightInput(elm) {
        elm.style.background = "yellow";
    }
</script>
<input type="text" onfocus="highlightInput(this)">
<button type="button">Button</button>
```

### The Blur Event (`onblur`)

The blur event occurs when the user takes the focus away from a form element or a window. It can be handled using the `onblur` event handler.

Example:

```html
<input type="text" onblur="alert('Text input loses focus!')">
<button type="button">Submit</button>
```

### The Change Event (`onchange`)

The change event occurs when a user changes the value of a form element. It can be handled using the `onchange` event handler.

Example:

```html
<select onchange="alert('You have changed the selection!');">
    <option>Select</option>
    <option>Male</option>
    <option>Female</option>
</select>
```

### The Submit Event (`onsubmit`)

The submit event occurs when the user submits a form on a web page. It can be handled using the `onsubmit` event handler.

Example:

```html
<form action="action.php" method="post" onsubmit="alert('Form data will be submitted to the
```
