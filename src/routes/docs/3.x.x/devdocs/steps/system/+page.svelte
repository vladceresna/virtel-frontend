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



<Oh1>System</Oh1>

<Oh2>Managing System Operations</Oh2>
<Op>Objective: Manage system functions like program management and logging.</Op>

<Oh3>Steps:</Oh3>
<Oul>
<li>Get a list of installed programs:
<CodeView>
sys apps programsList;
lst len programsList count;
csl write count;
</CodeView>
<Oul>
<li>"programsList" is the list of program identifiers.</li>
<li>"count" is the number of programs.</li>
</Oul>
</li>
<li>Start a program:
<CodeView>
sys start "vladceresna.virtel.textly";
</CodeView>
<Oul>
<li>"vladceresna.virtel.textly" is the program identifier.</li>
</Oul>
</li>
<li>Log a message:
<CodeView>
csl write "Program started";
</CodeView>
</li>
</Oul>

<Oh2>Practical Example</Oh2>
<Op>Objective: Install a program from a VAR file.</Op>

<Oh3>Steps:</Oh3>
<Oul>
<li>Read and install a program:
<CodeView>
fls read "$/app.var" varContent;
sys install "vladceresna.virtel.textly" varContent;
</CodeView>
</li>
</Oul>

<Oh2>Tips</Oh2>
<Oul>
<li>Use <Ocode>sys log</Ocode> to retrieve all logs for debugging.</li>
<li>Regularly back up the system with <Ocode>sys backup</Ocode>.</li>
<li>Set <Ocode>sys inlife "true"</Ocode> for critical flows that shouldn’t stop.</li>
</Oul>

<Oh2>Conclusion</Oh2>
<Op>System commands provide essential tools for managing programs, logs, and system state, ensuring a stable Virtel environment.</Op>










<Oh2>Commands</Oh2>
<div class="h-5"></div>

<div class="flex flex-col gap-5 *:px-5 *:pb-5">



<Card>
<Oh3 class="notranslate">sys apps</Oh3>
<Op>Gets a list of all available programs in the system and stores their identifiers in a new list.</Op>
<CodeView>sys apps (newListName)</CodeView>
<Oul>
    <li><Ocode>newListName</Ocode>: The name of the new list variable where the program identifiers will be stored (type: LIST).</li>
</Oul>
<CodeView>
sys apps programsList;
lst len programsList count;
csl write count;
</CodeView>
<Op>
    This example retrieves the list of installed programs, gets its length, and prints the number of programs to the console.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">sys files</Oh3>
<Op>Gets the path to the user's files directory and stores it in a new variable.</Op>
<CodeView>sys files (newVarName)</CodeView>
<Oul>
    <li><Ocode>newVarName</Ocode>: The name of the new variable where the path will be stored (type: VAR).</li>
</Oul>
<CodeView>
sys files userFilesPath;
csl write userFilesPath;
</CodeView>
<Op>
    This Medicaid example retrieves the user files path and prints it to the console.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">sys flowname</Oh3>
<Op>Gets the name of the current flow and stores it in a new variable.</Op>
<CodeView>sys flowname (newVarName)</CodeView>
<Oul>
    <li><Ocode>newVarName</Ocode>: The name of the new variable where the flow name will be stored (type: VAR).</li>
</Oul>
<CodeView>
sys flowname currentFlowName;
csl write currentFlowName;
</CodeView>
<Op>
    This example retrieves the current flow name (e.g., "flow-0") and prints it to the console.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">sys log</Oh3>
<Op>Gets all program logs as a single string, separated by newlines, and stores it in a new variable.</Op>
<CodeView>sys log (newVarName)</CodeView>
<Oul>
    <li><Ocode>newVarName</Ocode>: The name of the new variable where the logs will be stored (type: VAR).</li>
</Oul>
<CodeView>
sys log logs;
fls write "$/logs.txt" logs;
</CodeView>
<Op>
    This example retrieves the logs and saves them to a file at "/system/logs.txt".
</Op>
</Card>

<Card>
<Oh3 class="notranslate">sys start</Oh3>
<Op>Starts a program by its appId.</Op>
<CodeView>sys start (appId)</CodeView>
<Oul>
    <li><Ocode>appId</Ocode>: The identifier of the program to start (type: VAR).</li>
</Oul>
<CodeView>
sys start "vladceresna.virtel.textly";
</CodeView>
<Op>
    This example starts the "vladceresna.virtel.textly" program.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">sys homedir</Oh3>
<Op>Gets the path to the system's home directory and stores it in a new variable.</Op>
<CodeView>sys homedir (newVarName)</CodeView>
<Oul>
    <li><Ocode>newVarName</Ocode>: The name of the new variable where the path will be stored (type: VAR).</li>
</Oul>
<CodeView>
sys homedir homeDir;
csl write homeDir;
</CodeView>
<Op>
    This example retrieves the system home directory path (e.g., "/system") and prints it to the console.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">sys install</Oh3>
<Op>Installs a program from a VAR file contained in a variable.</Op>
<CodeView>sys install (appId) (contentVAR)</CodeView>
<Oul>
    <li><Ocode>appId</Ocode>: The identifier of the program to install (type: VAR).</li>
    <li><Ocode>contentVAR</Ocode>: The variable containing the VAR file content of the program (type: VAR).</li>
</Oul>
<CodeView>
fls read "$/app.var" varContent;
sys install "vladceresna.virtel.textly" varContent;
</CodeView>
<Op>
    This example reads a VAR file from "/system/app.var" and installs it as "vladceresna.virtel.textly".
</Op>
</Card>

<Card>
<Oh3 class="notranslate">sys pack</Oh3>
<Op>Packages a program by its appId into a VAR file and stores it in a new variable.</Op>
<CodeView>sys pack (appId) (contentVARNewVarName)</CodeView>
<Oul>
    <li><Ocode>appId</Ocode>: The identifier of the program to package (type: VAR).</li>
    <li><Ocode>contentVARNewVarName</Ocode>: The name of the new variable where the VAR file content will be stored (type: VAR).</li>
</Oul>
<CodeView>
sys pack "vladceresna.virtel.textly" packedVar;
fls write "$/packedApp.var" packedVar;
</CodeView>
<Op>
    This example packages "vladceresna.virtel.textly" into a VAR file and saves it to "/system/packedApp.var".
</Op>
</Card>

<Card>
<Oh3 class="notranslate">sys clear</Oh3>
<Op>Clears the current flow's data and removes it from the program.</Op>
<CodeView>sys clear (newVarName)</CodeView>
<Oul>
    <li><Ocode>newVarName</Ocode>: The name of a variable (not used in the current implementation but required by syntax).</li>
</Oul>
<CodeView>
sys clear "unusedVar";
</CodeView>
<Op>
    This example clears the current flow's data and removes it from the program.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">sys backup</Oh3>
<Op>Creates a backup of the system to a specified file.</Op>
<CodeView>sys backup (filePath)</CodeView>
<Oul>
    <li><Ocode>filePath</Ocode>: The path to the file where the backup will be stored (type: VAR).</li>
</Oul>
<CodeView>
sys backup "$/backup/system.bak";
</CodeView>
<Op>
    This example creates a system backup at "/system/backup/system.bak".
</Op>
</Card>

<Card>
<Oh3 class="notranslate">sys restore</Oh3>
<Op>Restores the system from a backup file.</Op>
<CodeView>sys restore (filePath)</CodeView>
<Oul>
    <li><Ocode>filePath</Ocode>: The path to the backup file (type: VAR).</li>
</Oul>
<CodeView>
sys restore "$/backup/system.bak";
</CodeView>
<Op>
    This example restores the system from "/system/backup/system.bak".
</Op>
</Card>

<Card>
<Oh3 class="notranslate">sys inlife</Oh3>
<Op>Sets the "inlife" mode for the flow, determining whether it can be stopped (true prevents stopping).</Op>
<CodeView>sys inlife (value)</CodeView>
<Oul>
    <li><Ocode>value</Ocode>: A boolean value ("true" or "false") to set the mode (type: VAR).</li>
</Oul>
<CodeView>
sys inlife "true";
run pause "5000";
sys inlife "false";
</CodeView>
<Op>
    This example sets the flow to "inlife" mode for 5 seconds, making it unstoppable, then disables it.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">sys settings</Oh3>
<Op>Opens the system settings interface.</Op>
<CodeView>sys settings</CodeView>
<Oul>
</Oul>
<CodeView>
sys settings;
</CodeView>
<Op>
    This example opens the Virtel system settings window.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">sys open-app</Oh3>
<Op>Opens a program by its appId.</Op>
<CodeView>sys open-app (appId)</CodeView>
<Oul>
    <li><Ocode>appId</Ocode>: The identifier of the program to open (type: VAR).</li>
</Oul>
<CodeView>
sys open-app "vladceresna.virtel.textly";
</CodeView>
<Op>
    This example opens the "vladceresna.virtel.textly" program.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">dtm now</Oh3>
<Op>Gets the current time in milliseconds since the epoch and stores it in a new variable.</Op>
<CodeView>dtm now (newVarName)</CodeView>
<Oul>
    <li><Ocode>newVarName</Ocode>: The name of the new variable where the time will be stored (type: VAR).</li>
</Oul>
<CodeView>
dtm now currentTime;
csl write currentTime;
</CodeView>
<Op>
    This example retrieves the current time (e.g., "1698777600000") and prints it to the console.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">dtm format</Oh3>
<Op>Formats a time in milliseconds into a string based on a pattern and optionally a timezone, storing the result in a new variable.</Op>
<CodeView>dtm format (now) (format) [/timezone/] (contentVARNewVarName)</CodeView>
<Oul>
    <li><Ocode>now</Ocode>: The time in milliseconds (type: VAR).</li>
    <li><Ocode>format</Ocode>: The date format pattern (e.g., "yyyy-MM-dd") (type: VAR).</li>
    <li><Ocode>/timezone/</Ocode>: Optional timezone (e.g., "UTC", "Europe/Kiev") (type: VAR).</li>
    <li><Ocode>contentVARNewVarName</Ocode>: The name of the new variable for the formatted string (type: VAR).</li>
</Oul>
<CodeView>
dtm now currentTime;
dtm format currentTime "yyyy-MM-dd" "UTC" formattedDate;
csl write formattedDate;
</CodeView>
<Op>
    This example gets the current time, formats it as "yyyy-MM-dd" in UTC (e.g., "2023-10-31"), and prints it.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">csl error</Oh3>
<Op>Logs an error message and throws an exception, stopping the flow execution.</Op>
<CodeView>csl error (text)</CodeView>
<Oul>
    <li><Ocode>text</Ocode>: The error message to log and throw (type: VAR).</li>
</Oul>
<CodeView>
csl error "Something went wrong";
</CodeView>
<Op>
    This example logs "Something went wrong" as an error and stops the flow with an exception.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">csl write</Oh3>
<Op>Writes a message to the program logs.</Op>
<CodeView>csl write (text)</CodeView>
<Oul>
    <li><Ocode>text</Ocode>: The message to write to the logs (type: VAR).</li>
</Oul>
<CodeView>
csl write "Program started";
</CodeView>
<Op>
    This example writes "Program started" to the logs.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">csl read</Oh3>
<Op>Reads user input from the console and stores it in a variable. It allows you to interact with the user.</Op>
<CodeView>csl read (newVarName)</CodeView>
<Oul>
    <li><Ocode>newVarName</Ocode>: The name of the variable where the read value will be stored (type: VAR).</li>
</Oul>
<CodeView>
csl read userInput;
csl write userInput;
</CodeView>
<Op>
    This example reads user input (e.g., "Hello") and prints it back to the console.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">stg set</Oh3>
<Op>Stores a value in the program's storage under a specified key.</Op>
<CodeView>stg set (name) (value)</CodeView>
<Oul>
    <li><Ocode>name</Ocode>: The key to store the value under (type: VAR).</li>
    <li><Ocode>value</Ocode>: The value to store (type: VAR).</li>
</Oul>
<CodeView>
stg set "userName" "John";
</CodeView>
<Op>
    This example stores "John" under the key "userName" in the program's storage.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">stg get</Oh3>
<Op>Retrieves a value from the program's storage by key and stores it in a new variable.</Op>
<CodeView>stg get (name) (newVarName)</CodeView>
<Oul>
    <li><Ocode>name</Ocode>: The key to retrieve the value from (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the new variable to store the value (type: VAR).</li>
</Oul>
<CodeView>
stg set "userName" "John";
stg get "userName" retrievedName;
csl write retrievedName;
</CodeView>
<Op>
    This example retrieves "John" from "userName" and prints it.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">stg del</Oh3>
<Op>Deletes a value from the program's storage by key.</Op>
<CodeView>stg del (name)</CodeView>
<Oul>
    <li><Ocode>name</Ocode>: The key to delete (type: VAR).</li>
</Oul>
<CodeView>
stg set "userName" "John";
stg del "userName";
</CodeView>
<Op>
    This example deletes the "userName" key from the storage.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">tts say2</Oh3>
<Op>Speaks text using cached MP3 files in "/virtel/tts-cache", generating the file if it doesn’t exist.</Op>
<CodeView>tts say2 (text)</CodeView>
<Oul>
    <li><Ocode>text</Ocode>: The text to speak (type: VAR).</li>
</Oul>
<CodeView>
tts say2 "Hello";
</CodeView>
<Op>
    This example speaks "Hello" through audio output.
</Op>
</Card>


    
</div>