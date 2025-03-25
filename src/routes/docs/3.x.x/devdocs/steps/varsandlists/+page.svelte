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


<Oh1>Variables and Lists</Oh1>

<Oh2>Creating and Managing Variables</Oh2>
<Op>Objective: Create and manipulate variables to store and retrieve data.</Op>

<Oh3>Steps:</Oh3>
<Oul>
<li>Create a variable:
<CodeView>
var set "Hello" greeting;
</CodeView>
<Oul>
<li>"Hello" is the value to store.</li>
<li>"greeting" is the variable name.</li>
</Oul>
</li>
<li>Get a variable:
<CodeView>
var get "greeting" message;
</CodeView>
<Oul>
<li>"greeting" is the variable to retrieve.</li>
<li>"message" is the new variable to store the value.</li>
</Oul>
</li>
<li>Display the variable:
<CodeView>
csl write message;
</CodeView>
</li>
</Oul>

<Oh2>Working with Lists</Oh2>
<Op>Objective: Create and manipulate lists to work with data collections.</Op>

<Oh3>Steps:</Oh3>
<Oul>
<li>Create a new list:
<CodeView>
lst new myList;
</CodeView>
<Oul>
<li>"myList" is the name of the list.</li>
</Oul>
</li>
<li>Add items to the list:
<CodeView>
lst set myList "0" "apple";
lst set myList "1" "banana";
</CodeView>
<Oul>
<li>"0" and "1" are the indices.</li>
<li>"apple" and "banana" are the values.</li>
</Oul>
</li>
<li>Get an item:
<CodeView>
lst get myList "0" fruit;
csl write fruit;
</CodeView>
</li>
</Oul>

<Oh2>Practical Example</Oh2>
<Op>Objective: Create a list of fruits and retrieve the first item.</Op>

<Oh3>Steps:</Oh3>
<Oul>
<li>Create a list of fruits:
<CodeView>
lst new fruits;
lst set fruits "0" "orange";
lst set fruits "1" "grape";
</CodeView>
</li>
<li>Get and display the first fruit:
<CodeView>
lst get fruits "0" firstFruit;
csl write firstFruit;
</CodeView>
</li>
</Oul>

<Oh2>Tips</Oh2>
<Oul>
<li>Use clear variable and list names for better readability.</li>
<li>Remember that lists are zero-indexed.</li>
<li>Delete unused variables and lists to free up resources.</li>
</Oul>

<Oh2>Conclusion</Oh2>
<Op>Variables and lists are the foundation for data storage and management in Virtel Steps. Use commands like <Ocode>var set</Ocode>, <Ocode>var get</Ocode>, <Ocode>lst new</Ocode>, and <Ocode>lst set</Ocode> to efficiently work with data.</Op>













<Oh2>Commands</Oh2>
<div class="h-5"></div>

<div class="flex flex-col gap-5 *:px-5 *:pb-5">


    
<Card>
<Oh3 class="notranslate">var set</Oh3>
<Op>Sets a value to a new variable.</Op>
<CodeView>var set (value) (newVarName)</CodeView>
<Oul>
    <li><Ocode>value</Ocode>: The value to set (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the new variable (type: VAR).</li>
</Oul>
<CodeView>
var set "Hello" greeting;
csl write greeting;
</CodeView>
<Op>
    This example sets "Hello" to "greeting" and prints it to the console.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">var get</Oh3>
<Op>Gets the value of a variable whose name is stored in another variable and stores it in a new variable.</Op>
<CodeView>var get (valueVarName) (newVarName)</CodeView>
<Oul>
    <li><Ocode>valueVarName</Ocode>: The variable containing the name of the target variable (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the new variable to store the retrieved value (type: VAR).</li>
</Oul>
<CodeView>
var set "Hello" greeting;
var set "greeting" varName;
var get varName retrievedValue;
csl write retrievedValue;
</CodeView>
<Op>
    This example retrieves "Hello" from "greeting" via "varName" and prints it.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">var del</Oh3>
<Op>Deletes a variable from the store.</Op>
<CodeView>var del (newVarName)</CodeView>
<Oul>
    <li><Ocode>newVarName</Ocode>: The name of the variable to delete (type: VAR).</li>
</Oul>
<CodeView>
var set "Hello" greeting;
var del "greeting";
</CodeView>
<Op>
    This example deletes the "greeting" variable from the store.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">var import</Oh3>
<Op>Imports a variable from another flow into the current flow.</Op>
<CodeView>var import (valueFlowName) (varName)</CodeView>
<Oul>
    <li><Ocode>valueFlowName</Ocode>: The name of the flow to import from (type: VAR).</li>
    <li><Ocode>varName</Ocode>: The name of the variable to import (type: VAR).</li>
</Oul>
<CodeView>
var import "flow-1" sharedVar;
csl write sharedVar;
</CodeView>
<Op>
    This example imports "sharedVar" from "flow-1" and prints its value.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">var export</Oh3>
<Op>Exports a variable from the current flow to another flow.</Op>
<CodeView>var export (valueFlowName) (varName)</CodeView>
<Oul>
    <li><Ocode>valueFlowName</Ocode>: The name of the flow to export to (type: VAR).</li>
    <li><Ocode>varName</Ocode>: The name of the variable to export (type: VAR).</li>
</Oul>
<CodeView>
var set "Hello" sharedVar;
var export "flow-1" sharedVar;
</CodeView>
<Op>
    This example exports "sharedVar" with value "Hello" to "flow-1".
</Op>
</Card>

<Card>
<Oh3 class="notranslate">var list</Oh3>
<Op>Converts a JSON string into a list and stores it in a new list variable.</Op>
<CodeView>var list (varName) (newListVarName)</CodeView>
<Oul>
    <li><Ocode>varName</Ocode>: The variable containing the JSON string (type: VAR).</li>
    <li><Ocode>newListVarName</Ocode>: The name of the new list variable to store the parsed list (type: LIST).</li>
</Oul>
<CodeView>
var set "[\"a\", \"b\"]" jsonString;
var list jsonString parsedList;
lst get parsedList "0" firstItem;
csl write firstItem;
</CodeView>
<Op>
    This example converts "[\"a\", \"b\"]" into a list and prints "a" from it.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">lst new</Oh3>
<Op>Creates a new empty list.</Op>
<CodeView>lst new (lstName)</CodeView>
<Oul>
    <li><Ocode>lstName</Ocode>: The name of the new list (type: LIST).</li>
</Oul>
<CodeView>
lst new myList;
lst set myList "0" "item1";
</CodeView>
<Op>
    This example creates an empty list "myList" and adds "item1" at index 0.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">lst set</Oh3>
<Op>Sets a value at a specific index in a list (inserts the value at that position).</Op>
<CodeView>lst set (lstName) (index) (value)</CodeView>
<Oul>
    <li><Ocode>lstName</Ocode>: The name of the list (type: LIST).</li>
    <li><Ocode>index</Ocode>: The index where the value will be inserted (type: VAR).</li>
    <li><Ocode>value</Ocode>: The value to insert (type: VAR).</li>
</Oul>
<CodeView>
lst new myList;
lst set myList "0" "apple";
lst set myList "1" "banana";
</CodeView>
<Op>
    This example creates a list and sets "apple" at index 0 and "banana" at index 1.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">lst get</Oh3>
<Op>Gets a value from a list at a specific index and stores it in a new variable.</Op>
<CodeView>lst get (lstName) (index) (newVarName)</CodeView>
<Oul>
    <li><Ocode>lstName</Ocode>: The name of the list (type: LIST).</li>
    <li><Ocode>index</Ocode>: The index of the value to retrieve (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the new variable to store the value (type: VAR).</li>
</Oul>
<CodeView>
lst new myList;
lst set myList "0" "apple";
lst get myList "0" fruit;
csl write fruit;
</CodeView>
<Op>
    This example retrieves "apple" from "myList" at index 0 and prints it.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">lst del</Oh3>
<Op>Deletes an element from a list at a specific index.</Op>
<CodeView>lst del (lstName) (index)</CodeView>
<Oul>
    <li><Ocode>lstName</Ocode>: The name of the list (type: LIST).</li>
    <li><Ocode>index</Ocode>: The index of the element to delete (type: VAR).</li>
</Oul>
<CodeView>
lst new myList;
lst set myList "0" "apple";
lst del myList "0";
</CodeView>
<Op>
    This example creates a list, adds "apple", and then deletes it from index 0.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">lst len</Oh3>
<Op>Gets the length of a list (number of elements) and stores it in a new variable.</Op>
<CodeView>lst len (lstName) (newVarName)</CodeView>
<Oul>
    <li><Ocode>lstName</Ocode>: The name of the list (type: LIST).</li>
    <li><Ocode>newVarName</Ocode>: The name of the new variable to store the length (type: VAR).</li>
</Oul>
<CodeView>
lst new myList;
lst set myList "0" "apple";
lst len myList length;
csl write length;
</CodeView>
<Op>
    This example creates a list with one item and prints its length ("1").
</Op>
</Card>

<Card>
<Oh3 class="notranslate">lst var</Oh3>
<Op>Converts a list into a JSON string and stores it in a new variable.</Op>
<CodeView>lst var (lstName) (newVarName)</CodeView>
<Oul>
    <li><Ocode>lstName</Ocode>: The name of the list (type: LIST).</li>
    <li><Ocode>newVarName</Ocode>: The name of the new variable to store the JSON string (type: VAR).</li>
</Oul>
<CodeView>
lst new myList;
lst set myList "0" "apple";
lst var myList jsonString;
csl write jsonString;
</CodeView>
<Op>
    This example converts a list with "apple" into a JSON string (e.g., "[\"apple\"]") and prints it.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">lst import</Oh3>
<Op>Imports a list from another flow into the current flow.</Op>
<CodeView>lst import (valueFlowName) (varName)</CodeView>
<Oul>
    <li><Ocode>valueFlowName</Ocode>: The name of the flow to import from (type: VAR).</li>
    <li><Ocode>varName</Ocode>: The name of the list to import (type: LIST).</li>
</Oul>
<CodeView>
lst import "flow-1" sharedList;
lst get sharedList "0" item;
csl write item;
</CodeView>
<Op>
    This example imports "sharedList" from "flow-1" and prints its first item.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">lst export</Oh3>
<Op>Exports a list from the current flow to another flow.</Op>
<CodeView>lst export (valueFlowName) (varName)</CodeView>
<Oul>
    <li><Ocode>valueFlowName</Ocode>: The name of the flow to export to (type: VAR).</li>
    <li><Ocode>varName</Ocode>: The name of the list to export (type: LIST).</li>
</Oul>
<CodeView>
lst new myList;
lst set myList "0" "apple";
lst export "flow-1" myList;
</CodeView>
<Op>
    This example exports "myList" with "apple" to "flow-1".
</Op>
</Card>

<Card>
<Oh3 class="notranslate">ref set</Oh3>
<Op>Creates a reference to a variable by storing its name in a new variable of type REF.</Op>
<CodeView>ref set (varName) (newRefName)</CodeView>
<Oul>
    <li><Ocode>varName</Ocode>: The name of the variable to reference (type: VAR).</li>
    <li><Ocode>newRefName</Ocode>: The name of the new reference variable (type: REF).</li>
</Oul>
<CodeView>
var set "Hello" greeting;
ref set "greeting" myRef;
</CodeView>
<Op>
    This example creates a reference to the "greeting" variable, storing it in "myRef".
</Op>
</Card>

<Card>
<Oh3 class="notranslate">ref name</Oh3>
<Op>Creates a reference to a variable name stored in another variable.</Op>
<CodeView>ref name (valueVarName) (newRefName)</CodeView>
<Oul>
    <li><Ocode>valueVarName</Ocode>: The variable containing the name of the target variable (type: VAR).</li>
    <li><Ocode>newRefName</Ocode>: The name of the new reference variable (type: REF).</li>
</Oul>
<CodeView>
var set "targetVar" varName;
ref name "varName" myRef;
</CodeView>
<Op>
    This example creates a reference to "targetVar" (stored in "varName") in "myRef".
</Op>
</Card>

<Card>
<Oh3 class="notranslate">ref get</Oh3>
<Op>Gets the name of the variable pointed to by a reference (not its value).</Op>
<CodeView>ref get (newRefName)</CodeView>
<Oul>
    <li><Ocode>newRefName</Ocode>: The name of the reference variable (type: REF).</li>
</Oul>
<CodeView>
var set "Hello" greeting;
ref set "greeting" myRef;
ref get myRef;
</CodeView>
<Op>
    This example retrieves "greeting" from "myRef" (returns the variable name, not "Hello").
</Op>
</Card>

<Card>
<Oh3 class="notranslate">ref del</Oh3>
<Op>Deletes a reference from the store.</Op>
<CodeView>ref del (newRefName)</CodeView>
<Oul>
    <li><Ocode>newRefName</Ocode>: The name of the reference to delete (type: REF).</li>
</Oul>
<CodeView>
ref set "greeting" myRef;
ref del "myRef";
</CodeView>
<Op>
    This example deletes the reference "myRef" from the store.
</Op>
</Card>



</div>