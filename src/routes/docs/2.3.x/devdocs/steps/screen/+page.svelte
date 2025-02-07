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
<Op>
    This is work
</Op>

<Oh3>Example</Oh3>
<CodeView>

</CodeView>
<Op>
    
</Op>
<Oh2>Commands</Oh2>
<div class="h-5"></div>

<div class="flex flex-col gap-5 *:px-5 *:pb-5">

<Card>
<Oh3 class="notranslate">scr new</Oh3>
<Op>Creates a new widget in the interface with specified properties.</Op>
<CodeView>scr new (newVarName) (viewType) (weight) (size) (parent)</CodeView>
<Oul>
<li><Ocode>newVarName</Ocode>: The name of the new widget.</li>
<li><Ocode>viewType</Ocode>: The type of the widget. Possible values:
<Oul>
<li><Ocode>"view"</Ocode>: Basic view.</li>
<li><Ocode>"text"</Ocode>: Text display.</li>
<li><Ocode>"button"</Ocode>: Button.</li>
<li><Ocode>"input"</Ocode>: Text input.</li>
<li><Ocode>"column"</Ocode>: Vertical layout container.</li>
<li><Ocode>"adaptive"</Ocode>: Adaptive layout container.</li>
<li><Ocode>"row"</Ocode>: Horizontal layout container.</li>
<li><Ocode>"card"</Ocode>: Card view with default padding.</li>
<li><Ocode>"topBar"</Ocode>: Top bar.</li>
<li><Ocode>"bottomBar"</Ocode>: Bottom bar.</li>
</Oul>
</li>
<li><Ocode>weight</Ocode>: The weight of the widget. Must be greater than 0 or 0 if no weight is needed.</li>
<li><Ocode>size</Ocode>: The size of the widget (e.g., "max/min", "min/min", "50/20").</li>
<li><Ocode>parent</Ocode>: The name of the parent widget to which this widget will be added.</li>
</Oul>
<CodeView>
scr new myButton "button" "1" "max/min" root;
</CodeView>
<Op>
This example creates a new button widget named "myButton" with weight 1, size "max/min", and adds it to the system parent widget "root".
</Op>
</Card>


<Card>
<Oh3 class="notranslate">scr del</Oh3>
<Op>Deletes a widget from the interface.</Op>
<CodeView>scr del (newVarName)</CodeView>
<Oul>
<li><Ocode>newVarName</Ocode>: The name of the widget to delete.</li>
</Oul>
<CodeView>
scr new myButton "button" "1" "max/min" root;
scr del myButton;
</CodeView>
<Op>
This example first creates a button widget named "myButton" and then deletes it from the interface.
</Op>
</Card>



<Card>
<Oh3 class="notranslate">scr set</Oh3>
<Op>Sets a property of a widget in the interface.</Op>
<CodeView>scr set (newVarName) (property) (value)</CodeView>
<Oul>
<li><Ocode>newVarName</Ocode>: The name of the widget whose property will be set.</li>
<li><Ocode>property</Ocode>: The property to modify. Possible values:
<Oul>
<li><Ocode>"weight"</Ocode>: The weight of the widget.</li>
<li><Ocode>"variant"</Ocode>: The variant of the widget (e.g., "primary" for buttons).</li>
<li><Ocode>"title"</Ocode>: The title or text of the widget.</li>
<li><Ocode>"value"</Ocode>: The value of the widget (e.g., input text).</li>
<li><Ocode>"foreground"</Ocode>: The text color.</li>
<li><Ocode>"background"</Ocode>: The background color.</li>
<li><Ocode>"onClick"</Ocode>: The click handler file.</li>
<li><Ocode>"parent"</Ocode>: The parent widget to which this widget belongs.</li>
<li><Ocode>"paddingTop"</Ocode>: Top padding.</li>
<li><Ocode>"paddingRight"</Ocode>: Right padding.</li>
<li><Ocode>"paddingBottom"</Ocode>: Bottom padding.</li>
<li><Ocode>"paddingLeft"</Ocode>: Left padding.</li>
<li><Ocode>"padding"</Ocode>: Sets all padding properties at once.</li>
<li><Ocode>"marginTop"</Ocode>: Top margin.</li>
<li><Ocode>"marginRight"</Ocode>: Right margin.</li>
<li><Ocode>"marginBottom"</Ocode>: Bottom margin.</li>
<li><Ocode>"marginLeft"</Ocode>: Left margin.</li>
<li><Ocode>"margin"</Ocode>: Sets all margin properties at once.</li>
<li><Ocode>"scrollable"</Ocode>: Enables or disables scrolling.</li>
<li><Ocode>"size"</Ocode>: Sets the size of the widget (e.g., "max/min").</li>
<li><Ocode>"align"</Ocode>: Sets the alignment of the widget.</li>
<li><Ocode>"justify"</Ocode>: Sets the justification of the widget.</li>
</Oul>
</li>
<li><Ocode>value</Ocode>: The new value for the specified property.</li>
</Oul>
<CodeView>
scr new myButton "button" "1" "max/min" root;
scr set myButton "title" "Click Me";
scr set myButton "onClick" "/click.steps";
</CodeView>
<Op>
This example creates a button widget named "myButton" and sets its title to "Click Me", and on click listener.
</Op>
</Card>


<Card>
<Oh3 class="notranslate">scr get</Oh3>
<Op>Retrieves the value of a specified property from a widget in the interface.</Op>
<CodeView>scr get (newVarName) (viewVarName) (property)</CodeView>
<Oul>
<li><Ocode>newVarName</Ocode>: The name of the variable where the property value will be stored.</li>
<li><Ocode>viewVarName</Ocode>: The name of the widget whose property will be retrieved.</li>
<li><Ocode>property</Ocode>: The property to retrieve. Possible values:
<Oul>
<li><Ocode>"weight"</Ocode>: The weight of the widget.</li>
<li><Ocode>"variant"</Ocode>: The variant of the widget (e.g., "primary" for buttons).</li>
<li><Ocode>"title"</Ocode>: The title or text of the widget.</li>
<li><Ocode>"value"</Ocode>: The value of the widget (e.g., input text).</li>
<li><Ocode>"foreground"</Ocode>: The text color.</li>
<li><Ocode>"background"</Ocode>: The background color.</li>
<li><Ocode>"onClick"</Ocode>: The click handler file.</li>
<li><Ocode>"parent"</Ocode>: The name of the parent widget.</li>
<li><Ocode>"paddingTop"</Ocode>: Top padding.</li>
<li><Ocode>"paddingRight"</Ocode>: Right padding.</li>
<li><Ocode>"paddingBottom"</Ocode>: Bottom padding.</li>
<li><Ocode>"paddingLeft"</Ocode>: Left padding.</li>
<li><Ocode>"marginTop"</Ocode>: Top margin.</li>
<li><Ocode>"marginRight"</Ocode>: Right margin.</li>
<li><Ocode>"marginBottom"</Ocode>: Bottom margin.</li>
<li><Ocode>"marginLeft"</Ocode>: Left margin.</li>
<li><Ocode>"scrollable"</Ocode>: Whether the widget is scrollable.</li>
<li><Ocode>"size"</Ocode>: The size of the widget (e.g., "max/min").</li>
<li><Ocode>"align"</Ocode>: The alignment of the widget.</li>
<li><Ocode>"justify"</Ocode>: The justification of the widget.</li>
</Oul>
</li>
</Oul>
<CodeView>
scr get myButtonWeight myButton "weight";
csl write myButtonWeight;
</CodeView>
<Op>
This example retrieves the weight of the widget named "myButton" and stores it in the variable "myButtonWeight".
</Op>
</Card>
    

<Card>
<Oh3 class="notranslate">scr nav</Oh3>
<Op>Configures system navigation for the interface.</Op>
<CodeView>scr nav (file) (navName)</CodeView>
<Oul>
<li><Ocode>file</Ocode>: The Steps file to execute when the navigation action is triggered.</li>
<li><Ocode>navName</Ocode>: The type of navigation action. Possible values:
<Oul>
<li><Ocode>"settings"</Ocode>: Triggers when the settings button is clicked.</li>
<li><Ocode>"home"</Ocode>: Triggers when the home button is clicked.</li>
<li><Ocode>"back"</Ocode>: Triggers when the back button is clicked.</li>
</Oul>
</li>
</Oul>
<CodeView>
scr nav "/settings.steps" "settings";
</CodeView>
<Op>
This example sets the "/settings.steps" file to execute when the settings button is clicked.
</Op>
</Card>


<Card>
<Oh3 class="notranslate">scr page</Oh3>
<Op>Creates a new page in the interface.</Op>
<CodeView>scr page (empty)</CodeView>
<Oul>
	<li><Ocode>empty</Ocode>: is important for normal working</li>
</Oul>
<CodeView>
scr page "";
</CodeView>
<Op>
This example creates a new empty page in the interface.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">scr theme</Oh3>
<Op>Changes the interface theme.</Op>
<CodeView>scr theme (themeName)</CodeView>
<Oul>
<li><Ocode>themeName</Ocode>: The name of the theme to apply. Possible values:
<Oul>
<li><Ocode>"light"</Ocode>: Sets the light theme.</li>
<li><Ocode>"dark"</Ocode>: Sets the dark theme.</li>
</Oul>
</li>
</Oul>
<CodeView>
scr theme "light";
</CodeView>
<Op>
This example sets the interface theme to light.
</Op>
</Card>



</div>