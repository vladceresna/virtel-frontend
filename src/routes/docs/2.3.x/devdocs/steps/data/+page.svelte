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
<Oh1>Data</Oh1>
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
    <Oh3 class="notranslate">str cut</Oh3>
    <Op>Extracts a substring from a string with a given range of indices.</Op>
    <CodeView>str cut (first) (last) (value) (newVarName)</CodeView>
    <Oul>
        <li><Ocode>first</Ocode>: The starting index of the substring.</li>
        <li><Ocode>last</Ocode>: The ending index of the substring.</li>
        <li><Ocode>value</Ocode>: The original string.</li>
        <li><Ocode>newVarName</Ocode>: The new variable to store the result.</li>
    </Oul>
    <CodeView>
var set "Hello!" greeting;
str cut "2" "5" greeting result;
csl write result;
    </CodeView>
    <Op>
        This example will output "llo".
    </Op>
    </Card>


    <Card>
    <Oh3 class="notranslate">str add</Oh3>
    <Op>Combines two strings into one.</Op>
    <CodeView>str add (firstStr) (secondStr) (newVarName)</CodeView>
    <Oul>
        <li><Ocode>firstStr</Ocode>: The first string.</li>
        <li><Ocode>secondStr</Ocode>: The second string.</li>
        <li><Ocode>newVarName</Ocode>: The new variable to store the result.</li>
    </Oul>
    <CodeView>
var set "Привіт" greeting;
var set " Світ" hello;
str add greeting hello result;
csl write result;
    </CodeView>
    <Op>
        This example combines two strings "Привіт" and " Світ" into one string "Привіт Світ".
    </Op>
    </Card>


    <Card>
    <Oh3 class="notranslate">str len</Oh3>
    <Op>Returns the length of the original string.</Op>
    <CodeView>str len (value) (newVarName)</CodeView>
    <Oul>
        <li><Ocode>value</Ocode>: The original string.</li>
        <li><Ocode>newVarName</Ocode>: The new variable to store the result.</li>
    </Oul>
    <CodeView>
var set "Привіт" greeting;
str len greeting result;
csl write result;
    </CodeView>
    <Op>
        This example sets the length of the string "Привіт" (which is 6 characters) into the <Ocode>result</Ocode> variable and prints it to the console.
    </Op>
    </Card>


    <Card>
    <Oh3 class="notranslate">str get</Oh3>
    <Op>Returns the character at the specified index from the original string.</Op>
    <CodeView>str get (index) (value) (newVarName)</CodeView>
    <Oul>
        <li><Ocode>index</Ocode>: The index of the character to retrieve.</li>
        <li><Ocode>value</Ocode>: The original string.</li>
        <li><Ocode>newVarName</Ocode>: The new variable to store the result.</li>
    </Oul>
    <CodeView>
var set "Привіт" greeting;
str get "3" greeting result;
csl write result;
    </CodeView>
    <Op>
        This example gets the fourth character (index 3) from the string "Привіт", which is "і", and stores it in the <Ocode>result</Ocode> variable.
    </Op>
    </Card>


    <Card>
    <Oh3 class="notranslate">str eqs</Oh3>
    <Op>Checks if two original strings are equal.</Op>
    <CodeView>str eqs (first) (second) (newVarName)</CodeView>
    <Oul>
        <li><Ocode>first</Ocode>: The first string to compare.</li>
        <li><Ocode>second</Ocode>: The second string to compare.</li>
        <li><Ocode>newVarName</Ocode>: The new variable to store the result (boolean as a string).</li>
    </Oul>
    <CodeView>
var set "Привіт" greeting;
var set "Привіт" hello;
str eqs greeting hello isEqual;
csl write isEqual;
    </CodeView>
    <Op>
        This example checks if two strings "Привіт" and "Привіт" are equal, and stores the result in the <Ocode>isEqual</Ocode> variable, which will be "true".
    </Op>
    </Card>


    <Card>
    <Oh3 class="notranslate">str split</Oh3>
    <Op>Splits the original string by a regular expression and saves the result as a list.</Op>
    <CodeView>str split (regex) (value) (newVarListName)</CodeView>
    <Oul>
        <li><Ocode>regex</Ocode>: The regular expression for splitting.</li>
        <li><Ocode>value</Ocode>: The original string.</li>
        <li><Ocode>newVarListName</Ocode>: The new list variable to store the result.</li>
    </Oul>
    <CodeView>
var set "a,b,c" listStr;
str split "," listStr result;
lst get result "0" result; 
csl write result;
    </CodeView>
    <Op>
        This example splits the string "a,b,c" by the "," character and saves the result into the <Ocode>result</Ocode> list, which contains the elements ["a", "b", "c"].
    </Op>
    </Card>



    <Card>
    <Oh3 class="notranslate">mat plus</Oh3>
    <Op>Adds two numbers.</Op>
    <CodeView>mat plus (a) (b) (newVarName)</CodeView>
    <Oul>
        <li><Ocode>a</Ocode>: The first number.</li>
        <li><Ocode>b</Ocode>: The second number.</li>
        <li><Ocode>newVarName</Ocode>: The new variable to store the result.</li>
    </Oul>
    <CodeView>
var set "5" a;
var set "10" b;
mat plus a b result;
csl write result;
    </CodeView>
    <Op>
        This example adds the numbers 5 and 10, stores the result in the <Ocode>result</Ocode> variable, and prints it to the console.
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">mat minus</Oh3>
    <Op>Subtracts the second number from the first number.</Op>
    <CodeView>mat minus (a) (b) (newVarName)</CodeView>
    <Oul>
        <li><Ocode>a</Ocode>: The first number.</li>
        <li><Ocode>b</Ocode>: The second number.</li>
        <li><Ocode>newVarName</Ocode>: The new variable to store the result.</li>
    </Oul>
    <CodeView>
var set "10" a;
var set "5" b;
mat minus a b result;
csl write result;
    </CodeView>
    <Op>
        This example subtracts 5 from 10, stores the result in the <Ocode>result</Ocode> variable, and prints it to the console.
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">mat mult</Oh3>
    <Op>Multiplies two numbers.</Op>
    <CodeView>mat mult (a) (b) (newVarName)</CodeView>
    <Oul>
        <li><Ocode>a</Ocode>: The first number.</li>
        <li><Ocode>b</Ocode>: The second number.</li>
        <li><Ocode>newVarName</Ocode>: The new variable to store the result.</li>
    </Oul>
    <CodeView>
var set "5" a;
var set "10" b;
mat mult a b result;
csl write result;
    </CodeView>
    <Op>
        This example multiplies the numbers 5 and 10, stores the result in the <Ocode>result</Ocode> variable, and prints it to the console.
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">mat div</Oh3>
    <Op>Divides the first number by the second number.</Op>
    <CodeView>mat div (a) (b) (newVarName)</CodeView>
    <Oul>
        <li><Ocode>a</Ocode>: The first number.</li>
        <li><Ocode>b</Ocode>: The second number.</li>
        <li><Ocode>newVarName</Ocode>: The new variable to store the result.</li>
    </Oul>
    <CodeView>
var set "10" a;
var set "5" b;
mat div a b result;
csl write result;
    </CodeView>
    <Op>
        This example divides 10 by 5, stores the result in the <Ocode>result</Ocode> variable, and prints it to the console.
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">mat eqs</Oh3>
    <Op>Checks if two numbers are equal.</Op>
    <CodeView>mat eqs (a) (b) (newVarName)</CodeView>
    <Oul>
        <li><Ocode>a</Ocode>: The first number.</li>
        <li><Ocode>b</Ocode>: The second number.</li>
        <li><Ocode>newVarName</Ocode>: The new variable to store the result (boolean as a string).</li>
    </Oul>
    <CodeView>
var set "5" a;
var set "5" b;
mat eqs a b isEqual;
csl write isEqual;
    </CodeView>
    <Op>
        This example checks if the numbers 5 and 5 are equal, and stores the result in the <Ocode>isEqual</Ocode> variable, which will be "true".
    </Op>
    </Card>


    <Card>
    <Oh3 class="notranslate">mat grtr</Oh3>
    <Op>Checks if the first number is greater than the second number.</Op>
    <CodeView>mat grtr (a) (b) (newVarName)</CodeView>
    <Oul>
        <li><Ocode>a</Ocode>: The first number.</li>
        <li><Ocode>b</Ocode>: The second number.</li>
        <li><Ocode>newVarName</Ocode>: The new variable to store the result (boolean as a string).</li>
    </Oul>
    <CodeView>
var set "10" a;
var set "5" b;
mat grtr a b isGreater;
csl write isGreater;
    </CodeView>
    <Op>
        This example checks if 10 is greater than 5, and stores the result in the <Ocode>isGreater</Ocode> variable, which will be "true".
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">mat less</Oh3>
    <Op>Checks if the first number is less than the second number.</Op>
    <CodeView>mat less (a) (b) (newVarName)</CodeView>
    <Oul>
        <li><Ocode>a</Ocode>: The first number.</li>
        <li><Ocode>b</Ocode>: The second number.</li>
        <li><Ocode>newVarName</Ocode>: The new variable to store the result (boolean as a string).</li>
    </Oul>
    <CodeView>
var set "5" a;
var set "10" b;
mat less a b isLess;
csl write isLess;
    </CodeView>
    <Op>
        This example checks if 5 is less than 10, and stores the result in the <Ocode>isLess</Ocode> variable, which will be "true".
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">mat grtreqs</Oh3>
    <Op>Checks if the first number is greater than or equal to the second number.</Op>
    <CodeView>mat grtreqs (a) (b) (newVarName)</CodeView>
    <Oul>
        <li><Ocode>a</Ocode>: The first number.</li>
        <li><Ocode>b</Ocode>: The second number.</li>
        <li><Ocode>newVarName</Ocode>: The new variable to store the result (boolean as a string).</li>
    </Oul>
    <CodeView>
var set "10" a;
var set "5" b;
mat grtreqs a b isGreaterOrEqual;
csl write isGreaterOrEqual;
    </CodeView>
    <Op>
        This example checks if 10 is greater than or equal to 5, and stores the result in the <Ocode>isGreaterOrEqual</Ocode> variable, which will be "true".
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">mat lesseqs</Oh3>
    <Op>Checks if the first number is less than or equal to the second number.</Op>
    <CodeView>mat lesseqs (a) (b) (newVarName)</CodeView>
    <Oul>
        <li><Ocode>a</Ocode>: The first number.</li>
        <li><Ocode>b</Ocode>: The second number.</li>
        <li><Ocode>newVarName</Ocode>: The new variable to store the result (boolean as a string).</li>
    </Oul>
    <CodeView>
var set "5" a;
var set "10" b;
mat lesseqs a b isLessOrEqual;
csl write isLessOrEqual;
    </CodeView>
    <Op>
        This example checks if 5 is less than or equal to 10, and stores the result in the <Ocode>isLessOrEqual</Ocode> variable, which will be "true".
    </Op>
    </Card>


    <Card>
    <Oh3 class="notranslate">mat random</Oh3>
    <Op>Generates a random number within a given range.</Op>
    <CodeView>mat random (min) (max) (newVarName)</CodeView>
    <Oul>
        <li><Ocode>min</Ocode>: The minimum value.</li>
        <li><Ocode>max</Ocode>: The maximum value.</li>
        <li><Ocode>newVarName</Ocode>: The new variable to store the result.</li>
    </Oul>
    <CodeView>
mat random 1 10 randomNumber;
csl write randomNumber;
    </CodeView>
    <Op>
        This example generates a random number between 1 and 10 and prints it to the console.
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">mat int</Oh3>
    <Op>Converts a floating-point number to an integer.</Op>
    <CodeView>mat int (numberDouble) (newVarName)</CodeView>
    <Oul>
        <li><Ocode>numberDouble</Ocode>: The floating-point number.</li>
        <li><Ocode>newVarName</Ocode>: The new variable to store the result.</li>
    </Oul>
    <CodeView>
var set "5.9" doubleNumber;
mat int doubleNumber result;
csl write result;
    </CodeView>
    <Op>
        This example converts 5.9 to 5 and stores the result in the <Ocode>result</Ocode> variable.
    </Op>
    </Card>


    <Card>
    <Oh3 class="notranslate">bln and</Oh3>
    <Op>Performs a logical "AND" operation on two boolean values.</Op>
    <CodeView>bln and (a) (b) (newVarName)</CodeView>
    <Oul>
        <li><Ocode>a</Ocode>: The first boolean value.</li>
        <li><Ocode>b</Ocode>: The second boolean value.</li>
        <li><Ocode>newVarName</Ocode>: The new variable to store the result (boolean as a string).</li>
    </Oul>
    <CodeView>
var set "true" a;
var set "true" b;
bln and a b result;
csl write result;
    </CodeView>
    <Op>
        This example checks if both values "true" and "true" are true, and stores the result in the <Ocode>result</Ocode> variable, which will be "true".
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">bln or</Oh3>
    <Op>Performs a logical "OR" operation on two boolean values.</Op>
    <CodeView>bln or (a) (b) (newVarName)</CodeView>
    <Oul>
        <li><Ocode>a</Ocode>: The first boolean value.</li>
        <li><Ocode>b</Ocode>: The second boolean value.</li>
        <li><Ocode>newVarName</Ocode>: The new variable to store the result (boolean as a string).</li>
    </Oul>
    <CodeView>
var set "true" a;
var set "false" b;
bln or a b result;
csl write result;
    </CodeView>
    <Op>
        This example checks if at least one of the values "true" or "false" is true, and stores the result in the <Ocode>result</Ocode> variable, which will be "true".
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">bln xor</Oh3>
    <Op>Performs an exclusive "OR" operation on two boolean values.</Op>
    <CodeView>bln xor (a) (b) (newVarName)</CodeView>
    <Oul>
        <li><Ocode>a</Ocode>: The first boolean value.</li>
        <li><Ocode>b</Ocode>: The second boolean value.</li>
        <li><Ocode>newVarName</Ocode>: The new variable to store the result (boolean as a string).</li>
    </Oul>
    <CodeView>
var set "true" a;
var set "false" b;
bln xor a b result;
csl write result;
    </CodeView>
    <Op>
        This example checks if the values "true" and "false" are different, and stores the result in the <Ocode>result</Ocode> variable, which will be "true".
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">bln not</Oh3>
    <Op>Performs a logical negation on a boolean value.</Op>
    <CodeView>bln not (a) (newVarName)</CodeView>
    <Oul>
        <li><Ocode>a</Ocode>: The boolean value to negate.</li>
        <li><Ocode>newVarName</Ocode>: The new variable to store the result (boolean as a string).</li>
    </Oul>
    <CodeView>
var set "true" a;
bln not a result;
csl write result;
    </CodeView>
    <Op>
        This example negates the value "true", stores the result in the <Ocode>result</Ocode> variable, which will be "false".
    </Op>
    </Card>


    
</div>