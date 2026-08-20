# CSS `background` and `color` properties 

## 1. What is the `color` property?

The CSS `color` property changes the **text color** of an HTML element.

### HTML

```html
<h1>Hello CSS</h1>
<p>Welcome to CSS.</p>
```

### CSS

```css
h1 {
    color: blue;
}

p {
    color: green;
}
```

### Result

* `h1` text → Blue
* `p` text → Green

So:

```css
color: blue;
```

means **make the text blue**.

---

# 2. What is the `background-color` property?

`background-color` changes the **background color** of an element.

```html
<h1>Hello CSS</h1>
```

```css
h1 {
    background-color: yellow;
}
```

Now the heading will have a **yellow background**.

---

# 3. `color` vs `background-color`

This is very important:

```css
h1 {
    color: white;
    background-color: black;
}
```

Here:

* `color: white` → Text becomes white
* `background-color: black` → Background becomes black

Think of it like:

**Text → `color`**

**Behind the text → `background-color`**

---

# 4. Using different color formats

CSS supports several ways to define colors.

### Named colors

```css
h1 {
    color: red;
}
```

Examples:

```css
color: red;
color: blue;
color: green;
color: black;
color: white;
```

---

## 5. HEX Colors

HEX is very commonly used in web development.

```css
h1 {
    color: #ff0000;
}
```

`#ff0000` means red.

Example:

```css
p {
    color: #333333;
}
```

You can also use HEX for backgrounds:

```css
body {
    background-color: #f5f5f5;
}
```

---

# 6. RGB Colors

RGB stands for:

**Red + Green + Blue**

Example:

```css
h1 {
    color: rgb(255, 0, 0);
}
```

This creates red.

Another example:

```css
p {
    color: rgb(0, 128, 0);
}
```

This creates green.

---

# 7. RGBA Colors

RGBA is RGB + **Alpha**.

Alpha controls transparency.

```css
div {
    background-color: rgba(0, 0, 0, 0.5);
}
```

Here:

```text
0   → completely transparent
1   → completely opaque
0.5 → 50% transparent
```

---

# 8. Background Image

The `background` property can also be used with images.

```css
body {
    background-image: url("background.jpg");
}
```

This places an image in the background.

For example:

```html
<div class="hero">
    <h1>Welcome to My Website</h1>
</div>
```

```css
.hero {
    background-image: url("background.jpg");
    color: white;
}
```

---

# 9. Background Size

Sometimes the image doesn't cover the entire element.

Use:

```css
background-size: cover;
```

Example:

```css
.hero {
    background-image: url("background.jpg");
    background-size: cover;
}
```

`cover` means the image will cover the entire element.

Another option:

```css
background-size: contain;
```

`contain` tries to show the complete image inside the element.

---

# 10. Background Position

You can control where the background image appears.

```css
.hero {
    background-image: url("background.jpg");
    background-position: center;
}
```

Common values:

```css
background-position: center;
background-position: top;
background-position: bottom;
background-position: left;
background-position: right;
```

---

# 11. Background Repeat

By default, a small background image may repeat.

You can stop this:

```css
.hero {
    background-image: url("background.jpg");
    background-repeat: no-repeat;
}
```

Other options:

```css
background-repeat: repeat;
background-repeat: no-repeat;
background-repeat: repeat-x;
background-repeat: repeat-y;
```

---

# 12. The `background` Shorthand Property

Instead of writing everything separately:

```css
.hero {
    background-color: black;
    background-image: url("background.jpg");
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
}
```

You can use the shorthand:

```css
.hero {
    background: black url("background.jpg") center / cover no-repeat;
}
```

This is called the **background shorthand property**.

---

# 13. Complete Beginner Example

Let's create a simple webpage.

### HTML

```html
<!DOCTYPE html>
<html>
<head>
    <title>CSS Background and Color</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <div class="card">
        <h1>Welcome to CSS</h1>
        <p>Learn CSS step by step.</p>
        <button>Learn More</button>
    </div>

</body>
</html>
```

### CSS

```css
body {
    background-color: #f2f2f2;
}

.card {
    background-color: white;
    color: #333;
    padding: 30px;
}

h1 {
    color: #2563eb;
}

p {
    color: #555;
}

button {
    background-color: #2563eb;
    color: white;
}
```

### What happens?

```text
BODY
└── Light gray background

CARD
├── White background
├── Dark text
│
├── H1 → Blue text
├── P  → Gray text
│
└── BUTTON
    ├── Blue background
    └── White text
```

---

## 14. Important Properties to Remember

| Property              | Purpose                             |
| --------------------- | ----------------------------------- |
| `color`               | Changes text color                  |
| `background-color`    | Changes background color            |
| `background-image`    | Adds background image               |
| `background-size`     | Controls image size                 |
| `background-position` | Controls image position             |
| `background-repeat`   | Controls image repetition           |
| `background`          | Shorthand for background properties |

### The easiest way to remember

```css
color: red;
```

**Text = Red**

```css
background-color: red;
```

**Background = Red**

And:

```css
background: red;
```

**Background shorthand** — it can define multiple background settings in one line.
