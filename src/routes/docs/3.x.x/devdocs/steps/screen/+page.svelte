<script>
	import CodeView from "$lib/components/code-view.svelte";
	import Ocode from "$lib/components/typography/ocode.svelte";
	import Oh1 from "$lib/components/typography/oh1.svelte";
import Oh2 from "$lib/components/typography/oh2.svelte";
	import Oh3 from "$lib/components/typography/oh3.svelte";
	import Oh4 from "$lib/components/typography/oh4.svelte";
	import Op from "$lib/components/typography/op.svelte";
	import Oul from "$lib/components/typography/oul.svelte";
	import { CardTitle } from "$lib/components/ui/card";
	import CardHeader from "$lib/components/ui/card/card-header.svelte";
	import Card from "$lib/components/ui/card/card.svelte";

</script>



<Oh1>Screen</Oh1>

<Oh2>Creating and Managing Widgets</Oh2>
<Op>Objective: Create and manipulate widgets to build user interfaces.</Op>

<Oh3>Steps:</Oh3>
<Oul>
<li>Create a new widget:
<CodeView>
scr new "myButton" "button" "0" "max/min" "root";
</CodeView>
<Oul>
<li>"myButton" is the widget identifier.</li>
<li>"button" is the widget type.</li>
<li>"0" is the weight.</li>
<li>"max/min" is the size.</li>
<li>"root" is the parent widget.</li>
</Oul>
</li>
<li>Set a property:
<CodeView>
scr set "myButton" "title" "Click Me";
</CodeView>
<Oul>
<li>"myButton" is the widget identifier.</li>
<li>"title" is the property.</li>
<li>"Click Me" is the value.</li>
</Oul>
</li>
<li>Get a property:
<CodeView>
scr get "myButton" "title" buttonTitle;
csl write buttonTitle;
</CodeView>
</li>
</Oul>

<Oh2>Practical Example</Oh2>
<Op>Objective: Create an input field and retrieve its value.</Op>

<Oh3>Steps:</Oh3>
<Oul>
<li>Create an input field:
<CodeView>
scr new "myInput" "input" "0" "max/min" "root";
scr set "myInput" "value" "Enter text";
</CodeView>
</li>
<li>Get and display the input value:
<CodeView>
scr get "myInput" "value" inputValue;
csl write inputValue;
</CodeView>
</li>
</Oul>

<Oh2>Tips</Oh2>
<Oul>
<li>Use unique widget identifiers to avoid conflicts.</li>
<li>Manage widget hierarchy with parent-child relationships.</li>
<li>Clear or delete unused widgets to optimize performance.</li>
</Oul>

<Oh2>Conclusion</Oh2>
<Op>Screen commands like <Ocode>scr new</Ocode>, <Ocode>scr set</Ocode>, and <Ocode>scr get</Ocode> allow you to create and manage dynamic user interfaces in Virtel Steps.</Op>


<Oh1>Supported Widget Types in Virtel Steps</Oh1>

<Op>In Virtel Steps, various widget types are available for creating user interfaces. Each type has its own purpose and set of properties that can be configured using the commands <Ocode>scr new</Ocode> and <Ocode>scr set</Ocode>. Below is a list of all supported widget types with descriptions and examples.</Op>

<Oh2>1. VIEW</Oh2>
<Op>A basic container that can hold other widgets. It is used as a foundation for more complex structures.</Op>
<Oh3>Example:</Oh3>
<CodeView>
scr new "mainView" "view" "0" "max/max" "root";
</CodeView>

<Oh2>2. TEXT</Oh2>
<Op>A widget for displaying text content. It supports different styles through the <Ocode>variant</Ocode> property (e.g., "super", "primary", "secondary", "tertiary").</Op>
<Oh3>Example:</Oh3>
<CodeView>
scr new "titleText" "text" "0" "min/min" "mainView";
scr set "titleText" "title" "Welcome!";
scr set "titleText" "variant" "primary";
</CodeView>

<Oh2>3. BUTTON</Oh2>
<Op>An interactive widget that responds to clicks. It can contain text or other widgets and supports styles like "primary" and "secondary".</Op>
<Oh3>Example:</Oh3>
<CodeView>
scr new "actionButton" "button" "0" "min/min" "mainView";
scr set "actionButton" "title" "Click Me";
scr set "actionButton" "onClick" "/action.steps";
</CodeView>

<Oh2>4. INPUT</Oh2>
<Op>A field for user text input. It can have a label and store the entered value.</Op>
<Oh3>Example:</Oh3>
<CodeView>
scr new "userInput" "input" "0" "max/min" "mainView";
scr set "userInput" "title" "Enter your name";
</CodeView>

<Oh2>5. COLUMN</Oh2>
<Op>A container that arranges child widgets vertically. It supports scrolling and alignment.</Op>
<Oh3>Example:</Oh3>
<CodeView>
scr new "verticalList" "column" "1" "max/max" "mainView";
scr set "verticalList" "scrollable" "true";
scr set "verticalList" "justify" "spaceBetween";
</CodeView>

<Oh2>6. ROW</Oh2>
<Op>A container that arranges child widgets horizontally. It supports scrolling and alignment.</Op>
<Oh3>Example:</Oh3>
<CodeView>
scr new "horizontalMenu" "row" "0" "max/min" "mainView";
scr set "horizontalMenu" "align" "center";
</CodeView>

<Oh2>7. ADAPTIVE</Oh2>
<Op>An adaptive container that automatically adjusts the layout of child widgets based on available space (horizontally or vertically).</Op>
<Oh3>Example:</Oh3>
<CodeView>
scr new "adaptiveLayout" "adaptive" "1" "max/max" "mainView";
</CodeView>

<Oh2>8. CARD</Oh2>
<Op>A container with rounded corners and a background color, often used to group related elements.</Op>
<Oh3>Example:</Oh3>
<CodeView>
scr new "infoCard" "card" "0" "min/min" "mainView";
scr set "infoCard" "padding" "20";
</CodeView>

<Oh2>9. IMAGE</Oh2>
<Op>A widget for displaying images. It can load images from a local file or URL.</Op>
<Oh3>Example:</Oh3>
<CodeView>
scr new "logoImage" "image" "0" "min/min" "mainView";
scr set "logoImage" "value" "https://example.com/logo.png";
</CodeView>

<Oh2>10. TOP_BAR</Oh2>
<Op>A top bar typically used for headers, navigation buttons, or other controls.</Op>
<Oh3>Example:</Oh3>
<CodeView>
scr new "headerBar" "topBar" "0" "max/min" "mainView";
scr set "headerBar" "background" "blue";
</CodeView>

<Oh2>11. BOTTOM_BAR</Oh2>
<Op>A bottom bar often containing navigation buttons or actions, such as a FAB (Floating Action Button).</Op>
<Oh3>Example:</Oh3>
<CodeView>
scr new "footerBar" "bottomBar" "0" "max/min" "mainView";
scr new "menuButton" "button" "0" "min/min" "footerBar";
scr set "menuButton" "foreground" "menuIcon";
</CodeView>

<Oh2>12. LIST</Oh2>
<Op>A widget for displaying lists of items, supporting scrolling and configurable for vertical or horizontal layout.</Op>
<Oh3>Example:</Oh3>
<CodeView>
scr new "itemList" "list" "1" "max/max" "mainView";
scr set "itemList" "scrollable" "true";
</CodeView>

<Oh2>Widget Properties</Oh2>
<Op>Each widget supports a set of properties that can be configured using the <Ocode>scr set</Ocode> command. Here are the main properties available for most widgets:</Op>
<Oul>
<li><strong>weight</strong> — The widget's weight for space distribution in a container.</li>
<li><strong>variant</strong> — The widget's style (e.g., "primary", "secondary").</li>
<li><strong>title</strong> — The text label or title.</li>
<li><strong>value</strong> — The value stored by the widget (e.g., text in an input field).</li>
<li><strong>foreground</strong> — The foreground color or icon.</li>
<li><strong>background</strong> — The background color.</li>
<li><strong>onClick</strong> — The path to a <Ocode>.steps</Ocode> file to run when clicked.</li>
<li><strong>paddingTop</strong>, <strong>paddingRight</strong>, <strong>paddingBottom</strong>, <strong>paddingLeft</strong> — Internal padding.</li>
<li><strong>marginTop</strong>, <strong>marginRight</strong>, <strong>marginBottom</strong>, <strong>marginLeft</strong> — External margins.</li>
<li><strong>scrollable</strong> — Enables scrolling for containers.</li>
<li><strong>size</strong> — The widget's size (e.g., "max/min", "100/50").</li>
<li><strong>align</strong> — Alignment of child elements (e.g., "center", "start", "end").</li>
<li><strong>justify</strong> — Space distribution between child elements (e.g., "spaceBetween", "spaceAround").</li>
</Oul>

<Oh2>Practical Example</Oh2>
<Op>Creating a screen with navigation and a form:</Op>
<Oh3>Steps:</Oh3>
<Oul>
<li>Create the main container:
<CodeView>
scr new "screen" "column" "0" "max/max" "root";
</CodeView>
</li>
<li>Add the top bar:
<CodeView>
scr new "topBar" "topBar" "0" "max/min" "screen";
scr set "topBar" "background" "gray";
</CodeView>
</li>
<li>Add a settings button to the top bar:
<CodeView>
scr new "settingsBtn" "button" "0" "min/min" "topBar";
scr set "settingsBtn" "title" "Settings";
scr set "settingsBtn" "onClick" "/settings.steps";
</CodeView>
</li>
<li>Add the main content:
<CodeView>
scr new "content" "column" "1" "max/max" "screen";
scr set "content" "padding" "15";
</CodeView>
</li>
<li>Add an input field:
<CodeView>
scr new "nameInput" "input" "0" "max/min" "content";
scr set "nameInput" "title" "Your Name";
</CodeView>
</li>
<li>Add a submit button:
<CodeView>
scr new "submitBtn" "button" "0" "min/min" "content";
scr set "submitBtn" "title" "Submit";
scr set "submitBtn" "onClick" "/submit.steps";
</CodeView>
</li>
</Oul>

<Oh2>Tips</Oh2>
<Oul>
<li>Each widget must have a unique name (<Ocode>idName</Ocode>) to avoid conflicts.</li>
<li>Use containers (<Ocode>column</Ocode>, <Ocode>row</Ocode>, <Ocode>adaptive</Ocode>) to organize widgets.</li>
<li>Configure <Ocode>variant</Ocode>, <Ocode>foreground</Ocode>, and <Ocode>background</Ocode> to match the design.</li>
<li>Use <Ocode>onClick</Ocode> to bind actions to widgets.</li>
<li>Enable <Ocode>scrollable</Ocode> only for containers with a lot of content.</li>
</Oul>

<Oh2>Conclusion</Oh2>
<Op>The supported widget types in Virtel Steps provide extensive capabilities for creating complex and adaptive user interfaces. From basic text and button widgets to containers and navigation bars, each widget type has its purpose and set of properties, allowing flexible customization of the appearance and behavior of applications.</Op>




<Oh2>Commands</Oh2>
<div class="h-5"></div>

<div class="flex flex-col gap-5 *:px-5 *:pb-5">

<Card>
<Oh3 class="notranslate">scr new</Oh3>
<Op>Creates a new widget on the screen with a specified type, weight, size, and parent widget.</Op>
<CodeView>scr new (idName) (viewType) (weight) (size) (parent)</CodeView>
<Oul>
    <li><Ocode>idName</Ocode>: The unique identifier of the widget (type: VAR).</li>
    <li><Ocode>viewType</Ocode>: The type of widget ("view", "text", "button", "input", etc.) (type: VAR).</li>
    <li><Ocode>weight</Ocode>: The weight for space distribution (number, 0 if none) (type: VAR).</li>
    <li><Ocode>size</Ocode>: The size in "width/height" format (e.g., "max/min") (type: VAR).</li>
    <li><Ocode>parent</Ocode>: The identifier of the parent widget (type: VAR).</li>
</Oul>
<CodeView>
scr new "myButton" "button" "0" "max/min" "root";
scr set "myButton" "title" "Click Me";
</CodeView>
<Op>
    This example creates a button "myButton" in "root" and sets its title to "Click Me".
</Op>
</Card>

<Card>
<Oh3 class="notranslate">scr stop</Oh3>
<Op>Pauses a widget, stopping its updates.</Op>
<CodeView>scr stop (idName)</CodeView>
<Oul>
    <li><Ocode>idName</Ocode>: The identifier of the widget to pause (type: VAR).</li>
</Oul>
<CodeView>
scr new "myButton" "button" "0" "max/min" "root";
scr stop "myButton";
</CodeView>
<Op>
    This example creates a button and pauses it.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">scr resume</Oh3>
<Op>Resumes a paused widget.</Op>
<CodeView>scr resume (idName)</CodeView>
<Oul>
    <li><Ocode>idName</Ocode>: The identifier of the widget to resume (type: VAR).</li>
</Oul>
<CodeView>
scr new "myButton" "button" "0" "max/min" "root";
scr stop "myButton";
scr resume "myButton";
</CodeView>
<Op>
    This example creates a button, pauses it, and then resumes it.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">scr clear</Oh3>
<Op>Clears all child widgets from a specified widget, removing them recursively.</Op>
<CodeView>scr clear (idName)</CodeView>
<Oul>
    <li><Ocode>idName</Ocode>: The identifier of the widget to clear (type: VAR).</li>
</Oul>
<CodeView>
scr new "container" "column" "0" "max/max" "root";
scr new "child" "text" "0" "max/min" "container";
scr clear "container";
</CodeView>
<Op>
    This example creates a container with a child text widget and then clears the container.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">scr del</Oh3>
<Op>Deletes a widget from the system.</Op>
<CodeView>scr del (idName)</CodeView>
<Oul>
    <li><Ocode>idName</Ocode>: The identifier of the widget to delete (type: VAR).</li>
</Oul>
<CodeView>
scr new "myButton" "button" "0" "max/min" "root";
scr del "myButton";
</CodeView>
<Op>
    This example creates a button and then deletes it.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">scr set</Oh3>
<Op>Sets a property of a widget by its identifier.</Op>
<CodeView>scr set (idName) (property) (value)</CodeView>
<Oul>
    <li><Ocode>idName</Ocode>: The identifier of the widget (type: VAR).</li>
    <li><Ocode>property</Ocode>: The property to set (e.g., "title", "onClick", "weight") (type: VAR).</li>
    <li><Ocode>value</Ocode>: The value for the property (type: VAR).</li>
</Oul>
<CodeView>
scr new "myButton" "button" "0" "max/min" "root";
scr set "myButton" "title" "Click Me";
</CodeView>
<Op>
    This example creates a button and sets its title to "Click Me".
</Op>
</Card>

<Card>
<Oh3 class="notranslate">scr get</Oh3>
<Op>Gets the value of a widget’s property and stores it in a new variable.</Op>
<CodeView>scr get (idName) (property) (newVarName)</CodeView>
<Oul>
    <li><Ocode>idName</Ocode>: The identifier of the widget (type: VAR).</li>
    <li><Ocode>property</Ocode>: The property to get (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the new variable to store the value (type: VAR).</li>
</Oul>
<CodeView>
scr new "myInput" "input" "0" "max/min" "root";
scr set "myInput" "value" "Hello";
scr get "myInput" "value" inputValue;
csl write inputValue;
</CodeView>
<Op>
    This example sets an input value to "Hello", retrieves it, and prints it.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">scr nav</Oh3>
<Op>Sets up navigation for system buttons (settings, home, back) by assigning a file to run when clicked.</Op>
<CodeView>scr nav (file) (navName)</CodeView>
<Oul>
    <li><Ocode>file</Ocode>: The path to the file to run (type: VAR).</li>
    <li><Ocode>navName</Ocode>: The navigation button name ("settings", "home", "back") (type: VAR).</li>
</Oul>
<CodeView>
scr nav "/settings.steps" "settings";
</CodeView>
<Op>
    This example assigns "/settings.steps" to the "settings" navigation button.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">scr page</Oh3>
<Op>Creates a new page in the system for displaying widgets.</Op>
<CodeView>scr page</CodeView>
<Oul>
</Oul>
<CodeView>
scr page;
scr new "title" "text" "0" "max/min" "root";
scr set "title" "title" "New Page";
</CodeView>
<Op>
    This example creates a new page and adds a title widget to it.
</Op>
</Card>



</div>