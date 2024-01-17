# HTML Attributes


### 1. Basic Attribute Structure:
   - HTML attributes are added to an element's opening tag.
   - They consist of a name and a value, separated by an equals sign.

### 2. Common Attributes:

#### a. `class` Attribute:
   - Used to apply a class to an element, allowing CSS styling.
   ```html
   <div class="example">This is a div with a class.</div>
   ```

#### b. `id` Attribute:
   - Assigns a unique identifier to an element.
   ```html
   <p id="uniqueParagraph">This is a paragraph with a unique ID.</p>
   ```

#### c. `style` Attribute:
   - Adds inline CSS styling to an element.
   ```html
   <span style="color: blue; font-size: 16px;">Blue text with larger font size.</span>
   ```

#### d. `src` Attribute:
   - Specifies the source URL for embedded content, like images.
   ```html
   <img src="example.jpg" alt="Example Image">
   ```

#### e. `href` Attribute:
   - Defines the hyperlink destination for anchor elements.
   ```html
   <a href="https://www.example.com">Visit Example.com</a>
   ```

### 3. Boolean Attributes:

#### a. `disabled` Attribute:
   - Disables user interaction with the element.
   ```html
   <button disabled>Disabled Button</button>
   ```

#### b. `readonly` Attribute:
   - Makes input fields or text areas read-only.
   ```html
   <input type="text" value="Read-only" readonly>
   ```

### 4. Custom Data Attributes:

#### a. `data-*` Attributes:
   - Used to store custom data private to the page or application.
   ```html
   <div data-info="custom data">This div contains custom data.</div>
   ```

### 5. Global Attributes:

#### a. `title` Attribute:
   - Displays additional information when hovering over an element.
   ```html
   <p title="Tooltip text">Hover over me to see a tooltip.</p>
   ```
