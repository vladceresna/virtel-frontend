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
    <Oh3 class="notranslate">csl error</Oh3>
    <Op>Outputs an error message to the log and generates an exception. It is used for error handling in the program.</Op>
    <CodeView>csl error (text)</CodeView>
    <Oul>
        <li><Ocode>text</Ocode>: The error text to be displayed.</li>
    </Oul>
    <CodeView>
csl error "Check your input!";
    </CodeView>
    <Op>
        This example outputs the error message "Check your input!" and generates an exception.
    </Op>
    </Card>


    <Card>
    <Oh3 class="notranslate">csl write</Oh3>
    <Op>Outputs a text message to the console. It is used to display information to the user.</Op>
    <CodeView>csl write (text)</CodeView>
    <Oul>
        <li><Ocode>text</Ocode>: The text to be displayed.</li>
    </Oul>
    <CodeView>
csl write "Hello, world!";
    </CodeView>
    <Op>
        This example prints the greeting "Hello, world!" to the console.
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">csl read</Oh3>
    <Op>Reads user input from the console and stores it in a variable. It allows you to interact with the user.</Op>
    <CodeView>csl read (newVarName)</CodeView>
    <Oul>
        <li><Ocode>newVarName</Ocode>: The name of the variable where the read value will be stored.</li>
    </Oul>
    <CodeView>
csl read userInput;
csl write userInput;
    </CodeView>
    <Op>
        This example reads user input and prints it back to the console.
    </Op>
    </Card>




    <Card>
    <Oh3 class="notranslate">var set</Oh3>
    <Op>
        Sets the value of a variable. It allows you to assign the value of one variable to another.
    </Op>
    <CodeView>var set (value) (newVarName)</CodeView>
    <Oul>
        <li><Ocode>value</Ocode>: The value to be set.</li>
        <li><Ocode>newVarName</Ocode>: The new variable to which the value will be assigned.</li>
    </Oul>
    <CodeView>
var set "Hello, World!" greeting;
csl write greeting;
    </CodeView>
    <Op>
        This example sets the value <Ocode>"Hello, World!"</Ocode> for the <Ocode>greeting</Ocode> variable and prints it to the console.
    </Op>
    </Card>


    <Card>
    <Oh3 class="notranslate">var get</Oh3>
    <Op>Gets the value of a variable by its name. It allows you to read the value from a specific variable and store it in a new variable.</Op>
    <CodeView>var get (valueVarName) (newVarName)</CodeView>
    <Oul>
        <li><Ocode>valueVarName</Ocode>: The name of the variable from which to retrieve the value.</li>
        <li><Ocode>newVarName</Ocode>: The new variable where the retrieved value will be stored.</li>
    </Oul>
    <CodeView>
var set "Hello!" greeting;
var get "greeting" message;
csl write message;
    </CodeView>
    <Op>
        This example retrieves the value from the <Ocode>greeting</Ocode> variable and stores it in the <Ocode>message</Ocode> variable, then prints the value of <Ocode>message</Ocode> to the console.
    </Op>
    </Card>


    <Card>
    <Oh3 class="notranslate">var del</Oh3>
    <Op>Deletes a variable from the program. It allows you to free up memory by deleting unnecessary variables.</Op>
    <CodeView>var del (newVarName)</CodeView>
    <Oul>
        <li><Ocode>newVarName</Ocode>: The name of the variable to be deleted.</li>
    </Oul>
    <CodeView>
var set "Тест" testVar;
var del testVar;
    </CodeView>
    <Op>
        This example creates a variable <Ocode>testVar</Ocode> with the value "Тест", and then deletes it from the program.
    </Op>
    </Card>


    <Card>
    <Oh3 class="notranslate">lst new</Oh3>
    <Op>Creates a new list with the specified name. It initializes an empty list, ready for adding elements. This is useful for organizing data as collections.</Op>
    <CodeView>lst new (lstName)</CodeView>
    <Oul>
        <li><Ocode>lstName</Ocode>: The name of the list, which is used for further operations with it.</li>
    </Oul>
    <CodeView>
lst new myList;
lst set myList "0" "Перший елемент";
lst get myList "0" val;
csl write val;
    </CodeView>
    <Op>
        This example creates a list <Ocode>myList</Ocode>, adds the first element "Перший елемент" to it, and prints the first element of the list to the console.
    </Op>
    </Card>


    <Card>
    <Oh3 class="notranslate">lst set</Oh3>
    <Op>Adds or modifies an element in the list at the specified index. It allows you to modify the contents of the list.</Op>
    <CodeView>lst set (lstName) (index) (value)</CodeView>
    <Oul>
        <li><Ocode>lstName</Ocode>: The name of the list to which you want to add or modify an element.</li>
        <li><Ocode>index</Ocode>: The index at which to add the element.</li>
        <li><Ocode>value</Ocode>: The value to add or modify.</li>
    </Oul>
    <CodeView>
lst new myList;
lst set myList "0" "Перший елемент";
lst set myList "1" "Другий елемент";
lst var myList val;
csl write val;
    </CodeView>
    <Op>
        This example creates a list <Ocode>myList</Ocode>, adds two elements to it, and prints the list to the console.
    </Op>
    </Card>


    <Card>
    <Oh3 class="notranslate">lst get</Oh3>
    <Op>Gets an element from the list at the specified index. It allows you to read the value from a specific position in the list and store it in a variable.</Op>
    <CodeView>lst get (lstName) (index) (newVarName)</CodeView>
    <Oul>
        <li><Ocode>lstName</Ocode>: The name of the list from which to retrieve the element.</li>
        <li><Ocode>index</Ocode>: The index of the element to retrieve.</li>
        <li><Ocode>newVarName</Ocode>: The new variable where the retrieved value will be stored.</li>
    </Oul>
    <CodeView>
lst new myList;
lst set myList "0" "Перший елемент";
lst get myList "0" message;
csl write message;
    </CodeView>
    <Op>
        This example retrieves the first element of the <Ocode>myList</Ocode> list and stores it in the <Ocode>message</Ocode> variable, then prints this value to the console.
    </Op>
    </Card>


    <Card>
    <Oh3 class="notranslate">lst del</Oh3>
    <Op>Deletes an element from the list at the specified index. It allows you to remove a specific element from the collection.</Op>
    <CodeView>lst del (lstName) (index)</CodeView>
    <Oul>
        <li><Ocode>lstName</Ocode>: The name of the list from which to delete the element.</li>
        <li><Ocode>index</Ocode>: The index of the element to delete.</li>
    </Oul>
    <CodeView>
lst new myList;
lst set myList "0" "Перший елемент";
lst set myList "1" "Другий елемент";
lst del myList "0";
lst var myList val;
csl write val;
    </CodeView>
    <Op>
        This example creates a list <Ocode>myList</Ocode> with two elements, deletes the first element at index "0", and prints the updated list to the console.
    </Op>
    </Card>


    <Card>
    <Oh3 class="notranslate">lst len</Oh3>
    <Op>Returns the length of the list. It allows you to determine the number of elements in the list.</Op>
    <CodeView>lst len (lstName) (newVarName)</CodeView>
    <Oul>
        <li><Ocode>lstName</Ocode>: The name of the list whose length you want to determine.</li>
        <li><Ocode>newVarName</Ocode>: The new variable where the length of the list will be stored.</li>
    </Oul>
    <CodeView>
lst new myList;
lst set myList "0" "Перший елемент";
lst set myList "1" "Другий елемент";
lst len myList length;
csl write length;
    </CodeView>
    <Op>
        This example creates a list <Ocode>myList</Ocode> with two elements, determines its length, and prints it to the console.
    </Op>
    </Card>


    <Card>
    <Oh3 class="notranslate">lst var</Oh3>
    <Op>Saves the entire list as a string. It is useful for displaying or further processing the entire list.</Op>
    <CodeView>lst var (lstName) (newVarName)</CodeView>
    <Oul>
        <li><Ocode>lstName</Ocode>: The name of the list to be saved as a string.</li>
        <li><Ocode>newVarName</Ocode>: The new variable where the string representation of the list will be stored.</li>
    </Oul>
    <CodeView>
lst new myList;
lst set myList "0" "Перший елемент";
lst set myList "1" "Другий елемент";
lst var myList listStr;
csl write listStr;
    </CodeView>
    <Op>
        This example creates a list <Ocode>myList</Ocode>, adds two elements, saves the list as a string in the <Ocode>listStr</Ocode> variable, and prints it to the console.
    </Op>
    </Card>





    <Card>
    <Oh3 class="notranslate">ref set</Oh3>
    <Op>Sets a reference to a variable. It allows you to create references to existing variables for later use.</Op>
    <CodeView>ref set (varName) (newRefName)</CodeView>
    <Oul>
        <li><Ocode>varName</Ocode>: The name of the variable to which you want to create a reference.</li>
        <li><Ocode>newRefName</Ocode>: The name of the new reference.</li>
    </Oul>
    <CodeView>
var set "Test" testVar;
ref set testVar refTest;
    </CodeView>
    <Op>
        This example creates a reference <Ocode>refTest</Ocode> to the <Ocode>testVar</Ocode> variable.
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">ref name</Oh3>
    <Op>Creates a reference to a variable by its value. It allows you to get a reference to a variable through its value.</Op>
    <CodeView>ref name (valueVarName) (newRefName)</CodeView>
    <Oul>
        <li><Ocode>valueVarName</Ocode>: The name of the variable whose value is used to create the reference.</li>
        <li><Ocode>newRefName</Ocode>: The name of the new reference.</li>
    </Oul>
    <CodeView>
var set "Test" testVar;
ref name testVar refTest;
    </CodeView>
    <Op>
        This example creates a reference <Ocode>refTest</Ocode> to the <Ocode>testVar</Ocode> variable through its value.
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">ref get</Oh3>
    <Op>Returns the value of a variable by reference. It allows you to get the value of a variable through a reference.</Op>
    <CodeView>ref get (newRefName)</CodeView>
    <Oul>
        <li><Ocode>newRefName</Ocode>: The name of the reference by which to get the value.</li>
    </Oul>
    <CodeView>
var set "Test" testVar;
ref set testVar refTest;
csl write refTest;
    </CodeView>
    <Op>
        This example returns the value of the <Ocode>testVar</Ocode> variable through the <Ocode>refTest</Ocode> reference and prints it to the console.
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">ref del</Oh3>
    <Op>Deletes a reference. It allows you to free up memory by deleting unnecessary references.</Op>
    <CodeView>ref del (newRefName)</CodeView>
    <Oul>
        <li><Ocode>newRefName</Ocode>: The name of the reference to delete.</li>
    </Oul>
    <CodeView>
var set "Test" testVar;
ref set testVar refTest;
ref del refTest;
    </CodeView>
    <Op>
        This example creates a reference <Ocode>refTest</Ocode> and then deletes it.
    </Op>
    </Card>



</div>