# CSS Basics

#### **1. CSS Introduction**

**What is CSS?**  
CSS stands for **Cascading Style Sheets**. It is used to **style** and **layout** HTML elements. While HTML gives structure to a webpage, CSS controls how it **looks** — colors, fonts, spacing, layout, animations, etc.

**Why learn CSS?**
- Separates content (HTML) from presentation (CSS)
- Makes websites beautiful and responsive
- Easy to maintain and update styles across many pages

**Relationship between HTML and CSS:**
```html
<!DOCTYPE html>
<html lang="en">
<head>
  <title>My First CSS Page</title>
  <style>
    /* CSS code goes here */
  </style>
</head>
<body>
  <h1>Hello World</h1>
</body>
</html>
```

---

#### **2. CSS Getting Started – 3 Ways to Add CSS**

There are **three main ways** to apply CSS:

**1. Inline CSS** (Highest priority)
```html
<h1 style="color: red; text-align: center;">This is Inline CSS</h1>
```

**2. Internal CSS** (Inside `<style>` tag in `<head>`)
```html
<head>
  <style>
    h1 {
      color: blue;
      font-size: 40px;
    }
  </style>
</head>
```

**3. External CSS** (Recommended for real projects)
Create a file `style.css`:
```css
/* style.css */
h1 {
  color: green;
  text-align: center;
}
```

Link it in HTML:
```html
<link rel="stylesheet" href="style.css">
```

**Best Practice:** Use **External CSS** for larger projects.

---

#### **3. CSS Syntax**

Basic CSS Rule Structure:

```css
selector {
  property: value;
  property: value;
}
```

**Example:**
```css
h1 {
  color: navy;
  font-size: 32px;
  text-align: center;
  margin-bottom: 20px;
}
```

- **Selector**: Which HTML element to style
- **Property**: What you want to change (color, font-size, etc.)
- **Value**: The actual setting (navy, 32px, center, etc.)
- Each declaration ends with a **semicolon `; `**

---

#### **4. CSS Selectors**

Selectors are used to target HTML elements.

| Selector Type       | Syntax              | Example                     | Description |
|---------------------|---------------------|-----------------------------|-----------|
| Element Selector    | `tagname`           | `p { color: blue; }`        | All `<p>` tags |
| ID Selector         | `#idname`           | `#header { ... }`           | Unique element |
| Class Selector      | `.classname`        | `.highlight { ... }`        | Multiple elements |
| Universal Selector  | `*`                 | `* { margin: 0; }`          | All elements |

**Advanced Selectors (Basic level):**
```css
/* Group Selector */
h1, h2, h3 {
  color: #333;
}

/* Descendant Selector */
div p {
  color: green;
}

/* Child Selector */
ul > li {
  font-weight: bold;
}
```

**Example HTML + CSS:**
```html
<h1 id="main-title">Main Title</h1>
<p class="highlight">This is highlighted text</p>
```

```css
#main-title {
  color: purple;
}

.highlight {
  background-color: yellow;
  padding: 10px;
}
```

---

#### **5. CSS Color**

You can specify colors in 4 ways:

1. **Color Names**
```css
color: red; 
color: blue;
color: tomato;
```

2. **HEX Code** (Most common)
```css
color: #ff0000;     /* Red */
color: #00ff00;     /* Green */
color: #0000ff;     /* Blue */
color: #333333;     /* Dark gray */
```

3. **RGB**
```css
color: rgb(255, 0, 0);
color: rgb(0, 128, 255);
```

4. **RGBA** (with transparency)
```css
background-color: rgba(0, 0, 0, 0.7); /* 70% opaque black */
```

**Example:**
```css
h1 {
  color: #2c3e50;
  background-color: rgba(52, 152, 219, 0.2);
}
```

---

#### **6. CSS Background**

```css
.element {
  background-color: #f0f0f0;
  
  /* Background Image */
  background-image: url('image.jpg');
  background-repeat: no-repeat;
  background-position: center;
  background-size: cover;        /* Most useful */
  
  /* Shorthand */
  background: #333 url('bg.jpg') center/cover no-repeat;
}
```

**Common Background Properties:**
- `background-color`
- `background-image`
- `background-repeat` → `repeat`, `no-repeat`, `repeat-x`, `repeat-y`
- `background-position` → `center`, `top left`, `50% 50%`
- `background-size` → `cover`, `contain`, `100%`

---

#### **7. CSS Fonts**

```css
body {
  font-family: 'Arial', sans-serif;   /* Fallback fonts */
  font-size: 18px;
  font-weight: 400;        /* 400=normal, 700=bold */
  line-height: 1.6;        /* Very important for readability */
}

h1 {
  font-family: 'Georgia', serif;
  font-size: 2.5rem;       /* Relative unit - recommended */
  font-weight: 700;
}
```

**Best Practice Font Stack:**
```css
font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
```

---

#### **8. CSS Text**

```css
p {
  color: #333;
  text-align: justify;           /* left, right, center, justify */
  text-decoration: none;         /* underline, line-through, overline */
  text-transform: capitalize;    /* uppercase, lowercase, capitalize */
  letter-spacing: 0.5px;
  word-spacing: 2px;
  text-indent: 20px;
}
```

**Text Shadow Example:**
```css
h1 {
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
}
```

---

#### **9. CSS Links**

```css
a {
  color: #0066cc;
  text-decoration: none;
}

a:hover {
  color: #ff6600;
  text-decoration: underline;
}

a:visited {
  color: #660066;
}

a:active {
  color: red;
}
```

---

#### **10. CSS Lists**

```css
ul {
  list-style-type: disc;     /* disc, circle, square, none */
  padding-left: 20px;
}

ol {
  list-style-type: decimal;
  list-style-position: inside;
}

/* Custom List */
ul.custom-list {
  list-style: none;
}

ul.custom-list li::before {
  content: "→ ";
  color: #e74c3c;
}
```

---

#### **11. CSS Tables**

```css
table {
  width: 100%;
  border-collapse: collapse;     /* Important! */
  margin: 20px 0;
}

th, td {
  padding: 12px 15px;
  text-align: left;
  border: 1px solid #ddd;
}

th {
  background-color: #34495e;
  color: white;
}

tr:nth-child(even) {
  background-color: #f9f9f9;
}

tr:hover {
  background-color: #f1f1f1;
}
```

**Complete Table Example:**

```html
<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Age</th>
      <th>City</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Rahul Sharma</td>
      <td>25</td>
      <td>Mumbai</td>
    </tr>
    <tr>
      <td>Priya Patel</td>
      <td>28</td>
      <td>Delhi</td>
    </tr>
  </tbody>
</table>
```

---

### **Mini Project – Putting It All Together**

Create a file `index.html` and `style.css`:

**index.html**
```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>CSS Basics Tutorial</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <header>
    <h1>Welcome to My Website</h1>
    <p class="subtitle">Learning CSS with Examples</p>
  </header>

  <section>
    <h2>About Me</h2>
    <p>Hi, I'm a beginner web developer from Mumbai learning HTML & CSS.</p>
  </section>

  <footer>
    <p>&copy; 2026 Codes With</p>
  </footer>
</body>
</html>
```

**style.css**
```css
body {
  font-family: 'Segoe UI', sans-serif;
  margin: 0;
  padding: 0;
  line-height: 1.6;
  background-color: #f8f9fa;
  color: #333;
}

header {
  background: linear-gradient(135deg, #3498db, #2980b9);
  color: white;
  text-align: center;
  padding: 60px 20px;
}

h1 {
  font-size: 3rem;
  margin: 0 0 10px 0;
}

.subtitle {
  font-size: 1.3rem;
  opacity: 0.9;
}

section {
  max-width: 800px;
  margin: 40px auto;
  padding: 0 20px;
}

footer {
  text-align: center;
  padding: 20px;
  background-color: #2c3e50;
  color: white;
  margin-top: 50px;
}

/* Hover Effects */
a:hover {
  color: #e74c3c;
}
```

---

