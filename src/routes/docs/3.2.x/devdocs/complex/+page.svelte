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

<Oh1>Complex</Oh1>

<Oh2>Basic Principles</Oh2>
<Op>Complex is a powerful format in Virtel that allows you to combine multiple steps into a single file, simplifying the management of complex projects. Here are the basic principles:</Op>
<Oul>
  <li>Multiple commands are combined into one file using curly braces <Ocode>{`{}`}</Ocode>.</li>
  <li>Each command in Complex ends with a semicolon <Ocode>;</Ocode>.</li>
  <li>Nested blocks are supported, enabling the creation of complex logic structures.</li>
</Oul>

<Oh2>Steps to Rewrite Code</Oh2>
<Oul>
  <li><strong>Define Block Boundaries</strong>: Each block starts with <Ocode>{`{`}</Ocode> and ends with <Ocode>{`}`}</Ocode>. Blocks can be nested to create complex structures.</li>
  <li><strong>Replace File References</strong>: In Steps, each step is stored in a separate file. In Complex, the code is written directly between curly braces instead of referencing external files.</li>
  <li><strong>Add Semicolons</strong>: Ensure that each command ends with a semicolon <Ocode>;</Ocode>.</li>
  <li><strong>Use Nested Blocks</strong>: For loops, conditional statements, or other structures, use nested blocks appropriately.</li>
</Oul>

<Oh2>Examples</Oh2>

<Oh3>Example 1: Simple Counter</Oh3>
<Op><strong>Steps Code:</strong></Op>
<CodeView>
[/start.steps]
scr new text "text" "0" "max/min" root;
var set "0.0" num;
mat eqs num "10000000.0" cond;
bln not cond cond;
run while cond "/iter.steps";
[/iter.steps]
mat plus num "1.0" num;
mat eqs num "10000000.0" cond;
bln not cond cond;
scr set text "title" num;
[end]
</CodeView>

<Op><strong>Complex Code:</strong></Op>
<CodeView>
{`scr new text "text" "0" "max/min" root;
var set "0.0" num;
mat eqs num "10000000.0" cond;
bln not cond cond;
run while cond {
	mat plus num "1.0" num;
	mat eqs num "10000000.0" cond;
	bln not cond cond;
	scr set text "title" num;
};
`}
</CodeView>

<Oh3>Example 2: HTTP Server</Oh3>
<Op><strong>Steps Code:</strong></Op>
<CodeView>
[/start.steps]
srv new "8080" server;
srv add "get" "/" "/response.steps" slashres server;
srv run server;
[/response.steps]
tts say "Hello!";
str add "Hello, World!" slashres;
[end]
</CodeView>

<Op><strong>Complex Code:</strong></Op>
<CodeView>
{`srv new "8080" server;
srv add "get" "/" {
	tts say "Hello!";
	str add "Hello, World!" slashres;
} slashres server;
srv run server;
`}
</CodeView>

<Oh3>Example 3: Nested Blocks</Oh3>
<Op><strong>Steps Code:</strong></Op>
<CodeView>
[/start.steps]
run if "true" "/if.steps";
[/if.steps]
tts say "Hello!";
[end]
</CodeView>

<Op><strong>Complex Code:</strong></Op>
<CodeView>
{`run if "true" {
	tts say "Hello!";
};
`}
</CodeView>

<Oh2>Tips for Working with Complex</Oh2>
<Oul>
  <li><strong>Clear Structure</strong>: Use nested blocks to organize your code. Each block should have an opening <Ocode>{`{`}</Ocode> and closing <Ocode>{`}`}</Ocode>.</li>
  <li><strong>Proper Semicolons</strong>: Ensure that every command ends with a semicolon <Ocode>;</Ocode>.</li>
  <li><strong>Test Your Code</strong>: Test individual blocks regularly to avoid errors.</li>
  <li><strong>Comments</strong>: Anything after a semicolon at the end of a file can be used as a comment.</li>
</Oul>

<Oh2>Conclusion</Oh2>
<Op>Rewriting code from Steps to Complex makes your programs more compact and easier 
	to manage. Use Complex for complex projects requiring coordination of multiple 
	components, and Steps for simpler tasks.</Op>