<script>
	import CodeView from "$lib/components/code-view.svelte";
	import Ocode from "$lib/components/typography/ocode.svelte";
	import Oh2 from "$lib/components/typography/oh2.svelte";
	import Oh3 from "$lib/components/typography/oh3.svelte";
	import Oh4 from "$lib/components/typography/oh4.svelte";
	import Op from "$lib/components/typography/op.svelte";
	import Oul from "$lib/components/typography/oul.svelte";

</script>

<Oh2>
	Quick overview of Steps
</Oh2>
<Oh4>What is "Steps"?</Oh4>
<Op>
    ❓ Steps is a programming language made specifically to run on Virtel. As have been said before, Steps also lacks lots of functionality, but is constantly improved - creating programs in Steps isn't that far away from reality. The file extension that Steps uses is pretty straightforward: .steps. The same thing can be said about the language itself, as the syntax is pretty easy to learn. If you don't like Steps, in the near future you will be able to write code via another language that compiles into Steps.
</Op>

<Oh3>Algorithm for Interpreting Steps Code in Virtel</Oh3>

<Oul>
    <li><strong>File Reading:</strong> Reads the code file from the specified path.</li>
    <li><strong>Lexical Analysis:</strong> Breaks the code into tokens (modules, commands, arguments).</li>
    <li><strong>Parsing:</strong> Combines tokens into commands.</li>
    <li><strong>Execution:</strong> Calls the corresponding functions for each module and command.</li>
    <li><strong>Error Handling:</strong> Catches exceptions and forms error messages.</li>
    <li><strong>Output:</strong> Displays results in the console or other output devices.</li>
</Oul>


<Oh4>Example:</Oh4>

<CodeView>
csl write "Hello world!";
</CodeView>

<Op>Virtel interprets Steps code through lexical analysis, parsing, and command execution, ensuring correct program execution.</Op>

<Oul>
    <li><strong>Lexical Analysis:</strong> Identifies tokens <Ocode>csl</Ocode>, <Ocode>write</Ocode>, <Ocode>"Hello world!"</Ocode>.</li>
    <li><strong>Parsing:</strong> Forms a command with module <Ocode>csl</Ocode>, command <Ocode>write</Ocode>, and argument.</li>
    <li><strong>Execution:</strong> Calls the <Ocode>cslWrite</Ocode> function with the argument.</li>
    <li><strong>Output:</strong> Prints "Hello world!" to the console.</li>
</Oul>

<Oh3>Code example</Oh3>
<Op>
Example, working with math commmands:
This example briefly shows how you can use mathematics in Steps.
<br>
Steps Code
</Op>
<CodeView>
var set a "5";
var set b "5";
mat plus a b c;
csl write c;
</CodeView>
<Op>
Output of the code
</Op>
<CodeView>10</CodeView>