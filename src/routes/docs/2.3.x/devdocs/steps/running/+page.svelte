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




<Oh2>Practical Examples of File Execution and Flow Control</Oh2>

<Op>Objective: Execute different files based on user input.</Op>

<Oh3>Steps:</Oh3>
<Oul>
<li>Read user input:
<CodeView>
csl read userInput;
</CodeView>
<li>Check input and execute appropriate file:
<CodeView>
str eqs userInput "yes" isYes;
run if isYes "/yes.steps";
run if "false" isYes "/no.steps";
</CodeView>
</li>
</Oul>

<Op>Result:</Op>
<Op>Executes "/yes.steps" if input is "yes", otherwise executes "/no.steps".</Op>

<Oh2>Loop with Delay</Oh2>
<Op>Objective: Continuously execute a file with a delay between iterations.</Op>

<Oh3>Steps:</Oh3>
<Oul>
<li>Set loop condition:
<CodeView>
var set "true" loopCondition;
</CodeView>
<li>Execute file in a loop with delay:
<CodeView>
run while loopCondition "/task.steps";
[/task.steps]
run pause "5000";
</CodeView>
</li>
</Oul>

<Op>Result:</Op>
<Op>Executes "/task.steps" every 5 seconds until `loopCondition` is set to "false".</Op>

<Oh2>Full Example: Conditional Execution with Loop and Delay</Oh2>
<Op>Objective: Combine conditional execution with a loop and delay.</Op>

<Oh3>Steps:</Oh3>
<Oul>
<li>Set loop condition:
<CodeView>
var set "true" loopCondition;
</CodeView>
<li>Set execution flag:
<CodeView>
var set "true" runExample;
</CodeView>
<li>Execute file in a loop with delay:
<CodeView>
run while runExample "/task.steps";
[/task.steps]
run pause "5000";
</CodeView>
</li>
</Oul>

<Op>Result:</Op>
<Op>Executes "/task.steps" every 5 seconds while `runExample` is "true".</Op>

<Oh2>Tips</Oh2>
<Oul>
<li>Test your code regularly to ensure there are no errors.</li>
<li>Choose ports and names carefully to avoid conflicts.</li>
<li>Comment your code for better understanding.</li>
</Oul>

<Oh2>Conclusion</Oh2>
<Op>Virtel Steps offers versatile commands for executing
     files and controlling program flow. Use <Ocode>run one</Ocode> 
     for simple execution, <Ocode>run if</Ocode> and <Ocode>run while</Ocode> 
     for conditional and loop execution, <Ocode>run flow</Ocode> for background 
     tasks, and <Ocode>run pause</Ocode> for adding delays.
     These commands allow you to create dynamic and responsive programs.</Op>












<Oh2>Commands</Oh2>
<div class="h-5"></div>

<div class="flex flex-col gap-5 *:px-5 *:pb-5">

	<Card>
    <Oh3 class="notranslate">run one</Oh3>
    <Op>Executes a file with the specified path.</Op>
    <CodeView>run one (file)</CodeView>
    <Oul>
        <li><Ocode>file</Ocode>: The path to the file to execute.</li>
    </Oul>
    <CodeView>
run one "/example.steps";
    </CodeView>
    <Op>
        This example executes the "example.steps" file.
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">run if</Oh3>
    <Op>Executes a file if the boolean value is true.</Op>
    <CodeView>run if (boolValue) (file)</CodeView>
    <Oul>
        <li><Ocode>boolValue</Ocode>: The boolean value ("true" or "false").</li>
        <li><Ocode>file</Ocode>: The path to the file to execute.</li>
    </Oul>
    <CodeView>
var set "true" condition;
run if condition "/example.steps";
    </CodeView>
    <Op>
        This example executes the "example.steps" file if the value of the <Ocode>condition</Ocode> variable is true.
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">run while</Oh3>
    <Op>Executes a file while the boolean value is true.</Op>
    <CodeView>run while (boolValue) (file)</CodeView>
    <Oul>
        <li><Ocode>boolValue</Ocode>: The boolean value ("true" or "false").</li>
        <li><Ocode>file</Ocode>: The path to the file to execute.</li>
    </Oul>
    <CodeView>
var set "true" condition;
run while condition "/example.steps";
    </CodeView>
    <Op>
        This example executes the "example.steps" file as long as the value of the <Ocode>condition</Ocode> variable is true.
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">run flow</Oh3>
    <Op>Starts the execution flow of the file.</Op>
    <CodeView>run flow (file)</CodeView>
    <Oul>
        <li><Ocode>file</Ocode>: The path to the file to start the flow.</li>
    </Oul>
    <CodeView>
run flow "/background.steps";
    </CodeView>
    <Op>
        This example starts the "background.steps" file as a flow.
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">run pause</Oh3>
    <Op>Pauses execution for a specified time.</Op>
    <CodeView>run pause (time)</CodeView>
    <Oul>
        <li><Ocode>time</Ocode>: The delay time in milliseconds.</li>
    </Oul>
    <CodeView>
run pause "1000";
    </CodeView>
    <Op>
        This example pauses execution for 1 second (1000 milliseconds).
    </Op>
    </Card>
    
</div>