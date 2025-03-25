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



<Oh1>Running</Oh1>

<Oh2>Controlling Execution Flow</Oh2>
<Op>Objective: Control code execution with conditionals and loops.</Op>

<Oh3>Steps:</Oh3>
<Oul>
<li>Run a file conditionally:
<CodeView>
var set "true" condition;
run if condition "/action.steps";
</CodeView>
<Oul>
<li>"condition" is the boolean variable.</li>
<li>"/action.steps" is the file to run if the condition is true.</li>
</Oul>
</li>
<li>Run a file in a loop:
<CodeView>
var set "true" isRunning;
run while isRunning "/loop.steps";
</CodeView>
<Oul>
<li>"isRunning" is the loop condition.</li>
<li>"/loop.steps" is the file to run repeatedly.</li>
</Oul>
</li>
<li>Stop the flow:
<CodeView>
run stop;
</CodeView>
</li>
</Oul>

<Oh2>Practical Example</Oh2>
<Op>Objective: Run a file for each item in a list.</Op>

<Oh3>Steps:</Oh3>
<Oul>
<li>Create and populate a list:
<CodeView>
lst new items;
lst set items "0" "apple";
lst set items "1" "banana";
</CodeView>
</li>
<li>Run a file for each item:
<CodeView>
run each items item "/processItem.steps";
</CodeView>
</li>
</Oul>

<Oh2>Tips</Oh2>
<Oul>
<li>Use <Ocode>run pause</Ocode> to introduce delays in execution.</li>
<li>Be cautious with loops to avoid infinite execution.</li>
<li>Use <Ocode>run break</Ocode> to exit loops when needed.</li>
</Oul>

<Oh2>Conclusion</Oh2>
<Op>Execution control commands like <Ocode>run if</Ocode>, <Ocode>run while</Ocode>, and <Ocode>run each</Ocode> provide powerful ways to manage flow execution in your Virtel Steps programs.</Op>










<Oh2>Commands</Oh2>
<div class="h-5"></div>

<div class="flex flex-col gap-5 *:px-5 *:pb-5">

<Card>
<Oh3 class="notranslate">run one</Oh3>
<Op>Runs a file once in the current flow.</Op>
<CodeView>run one (file)</CodeView>
<Oul>
    <li><Ocode>file</Ocode>: The path to the file to run (type: VAR).</li>
</Oul>
<CodeView>
run one "/init.steps";
</CodeView>
<Op>
    This example runs the code in "/init.steps" once.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">run if</Oh3>
<Op>Runs a file if a boolean value is "true".</Op>
<CodeView>run if (boolValue) (file)</CodeView>
<Oul>
    <li><Ocode>boolValue</Ocode>: The boolean value to check ("true" or "false") (type: VAR).</li>
    <li><Ocode>file</Ocode>: The path to the file to run (type: VAR).</li>
</Oul>
<CodeView>
var set "true" condition;
run if condition "/action.steps";
</CodeView>
<Op>
    This example runs "/action.steps" because "condition" is "true".
</Op>
</Card>

<Card>
<Oh3 class="notranslate">run while</Oh3>
<Op>Runs a file in a loop while a boolean value is "true".</Op>
<CodeView>run while (boolValue) (file)</CodeView>
<Oul>
    <li><Ocode>boolValue</Ocode>: The boolean value to check (type: VAR).</li>
    <li><Ocode>file</Ocode>: The path to the file to run (type: VAR).</li>
</Oul>
<CodeView>
var set "true" isRunning;
run while isRunning "/loop.steps";
</CodeView>
<Op>
    This example runs "/loop.steps" repeatedly until "isRunning" becomes "false".
</Op>
</Card>

<Card>
<Oh3 class="notranslate">run each</Oh3>
<Op>Runs a file for each element in a list, storing the current element in a variable.</Op>
<CodeView>run each (valueList) (itemVarName) (file)</CodeView>
<Oul>
    <li><Ocode>valueList</Ocode>: The list to iterate over (type: LIST).</li>
    <li><Ocode>itemVarName</Ocode>: The name of the variable for the current element (type: VAR).</li>
    <li><Ocode>file</Ocode>: The path to the file to run (type: VAR).</li>
</Oul>
<CodeView>
lst new items;
lst set items "0" "apple";
lst set items "1" "banana";
run each items item "/processItem.steps";
</CodeView>
<Op>
    This example runs "/processItem.steps" for "apple" and "banana".
</Op>
</Card>

<Card>
<Oh3 class="notranslate">run for</Oh3>
<Op>Runs a file for each index in a range from first to last, storing the index in a variable.</Op>
<CodeView>run for (first) (last) (indexVarName) (file)</CodeView>
<Oul>
    <li><Ocode>first</Ocode>: The starting index (type: VAR).</li>
    <li><Ocode>last</Ocode>: The ending index (type: VAR).</li>
    <li><Ocode>indexVarName</Ocode>: The name of the variable for the current index (type: VAR).</li>
    <li><Ocode>file</Ocode>: The path to the file to run (type: VAR).</li>
</Oul>
<CodeView>
run for "0" "2" i "/printIndex.steps";
</CodeView>
<Op>
    This example runs "/printIndex.steps" for i = 0, 1, and 2.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">run flow</Oh3>
<Op>Starts a new flow from a file and stores its name in a new variable.</Op>
<CodeView>run flow (file) (varNewFlowName)</CodeView>
<Oul>
    <li><Ocode>file</Ocode>: The path to the file to run in a new flow (type: VAR).</li>
    <li><Ocode>varNewFlowName</Ocode>: The name of the variable to store the flow name (type: VAR).</li>
</Oul>
<CodeView>
run flow "/background.steps" flowName;
csl write flowName;
</CodeView>
<Op>
    This example starts a new flow with "/background.steps" and prints its name (e.g., "flow-1").
</Op>
</Card>

<Card>
<Oh3 class="notranslate">run pause</Oh3>
<Op>Pauses the execution of the flow for a specified time in milliseconds.</Op>
<CodeView>run pause (time)</CodeView>
<Oul>
    <li><Ocode>time</Ocode>: The pause duration in milliseconds (type: VAR).</li>
</Oul>
<CodeView>
csl write "Starting";
run pause "1000";
csl write "Done";
</CodeView>
<Op>
    This example prints "Starting", waits 1 second, and then prints "Done".
</Op>
</Card>

<Card>
<Oh3 class="notranslate">run break</Oh3>
<Op>Breaks the current loop (while, each, for) if the flow is not in "inlife" mode.</Op>
<CodeView>run break</CodeView>
<Oul>
</Oul>
<CodeView>
var set "true" isRunning;
run while isRunning "/loop.steps";
run break;
</CodeView>
<Op>
    This example breaks out of a while loop immediately.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">run stop</Oh3>
<Op>Stops the current flow if it is not in "inlife" mode.</Op>
<CodeView>run stop</CodeView>
<Oul>
</Oul>
<CodeView>
csl write "Running";
run stop;
csl write "This won’t print";
</CodeView>
<Op>
    This example stops the flow after printing "Running".
</Op>
</Card>


</div>