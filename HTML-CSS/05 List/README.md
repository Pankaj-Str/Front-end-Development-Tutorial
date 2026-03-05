# List


There are **three main types** of lists in HTML:

| Type              | HTML Tags              | What it looks like          | Best used for                              |
|-------------------|------------------------|-----------------------------|--------------------------------------------|
| Unordered List    | `<ul>` + `<li>`        | • Bullet points             | Items where **order doesn't matter**       |
| Ordered List      | `<ol>` + `<li>`        | 1. Numbered /  A. Letters   | Steps, rankings, instructions (order matters) |
| Description List  | `<dl>` + `<dt>` + `<dd>` | Term + Explanation        | Like a dictionary or FAQ (term + definition) |

### 1. Unordered List (`<ul>` = Unordered List)

- Shows **bullet points** (•, ◦, or squares — depends on browser)
- Order of items doesn't matter

```html
<h3>My Favorite Fruits</h3>

<ul>
  <li>Mango 🥭</li>
  <li>Apple 🍎</li>
  <li>Banana 🍌</li>
  <li>Orange 🍊</li>
</ul>
```

**Result looks like:**

- Mango 🥭
- Apple 🍎
- Banana 🍌
- Orange 🍊

Here’s a real example screenshot of bullet points in action:








### 2. Ordered List (`<ol>` = Ordered List)

- Shows **numbers**, letters, or Roman numerals automatically
- Order **matters** (like steps to make Maggi)

```html
<h3>How to Make Instant Noodles</h3>

<ol>
  <li>Boil 2 cups of water.</li>
  <li>Add noodles and masala.</li>
  <li>Cook for 2 minutes.</li>
  <li>Turn off gas and serve hot!</li>
</ol>
```

**Result looks like:**

1. Boil 2 cups of water.
2. Add noodles and masala.
3. Cook for 2 minutes.
4. Turn off gas and serve hot!

Example of numbered list in browser:








### 3. Description / Definition List (`<dl>`)

Used when you have **terms** and their **explanations** (like a mini dictionary)

```html
<h3>Web Development Basics</h3>

<dl>
  <dt>HTML</dt>
  <dd>HyperText Markup Language – structure of webpage</dd>

  <dt>CSS</dt>
  <dd>Cascading Style Sheets – makes webpage beautiful</dd>

  <dt>JavaScript</dt>
  <dd>Makes webpage interactive and smart</dd>
</dl>
```

**Result looks like:**

HTML  
    HyperText Markup Language – structure of webpage

CSS  
    Cascading Style Sheets – makes webpage beautiful

JavaScript  
    Makes webpage interactive and smart

Screenshot example:




### Quick Tips for Beginners

- Every list item must be inside `<li>` (for `<ul>` and `<ol>`)  
- You can put almost anything inside `<li>`: text, links, images, even another list!
- You can **nest lists** (list inside a list)

**Nested list example** (very common):

```html
<ul>
  <li>Fruits
    <ul>
      <li>Mango</li>
      <li>Apple</li>
    </ul>
  </li>
  <li>Vegetables
    <ul>
      <li>Potato</li>
      <li>Tomato</li>
    </ul>
  </li>
</ul>
```

### Practice Task for You

Create an HTML page with:

1. An ordered list of your daily routine (5 steps)
2. An unordered list of your 5 favorite subjects or games
3. A description list of 3 things (e.g., your city → famous for something)

Save it as `lists.html` and open in browser.


Just say: "style HTML lists" or "change bullet type"

Keep practicing — lists are used everywhere on websites! 🚀
