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
    <Oh3 class="notranslate">spr play</Oh3>
    <Op>Plays an audio file with the specified path and type.</Op>
    <CodeView>spr play (type) (path)</CodeView>
    <Oul>
        <li><Ocode>type</Ocode>: The audio file type ("mp3" or "wav").</li>
        <li><Ocode>path</Ocode>: The path to the audio file. Can contain the special symbol `$`, which will be replaced with the system path.</li>
    </Oul>
    <CodeView>
spr play "mp3" "$/music/song.mp3";
    </CodeView>
    <Op>
        This example plays the "song.mp3" file from the "music" directory in MP3 format.
    </Op>
    </Card>
    
    <Card>
    <Oh3 class="notranslate">llm ask</Oh3>
    <Op>Gets an answer to a question or text.</Op>
    <CodeView>llm ask (text) (newResVarName)</CodeView>
    <Oul>
        <li><Ocode>text</Ocode>: The text or question to process.</li>
        <li><Ocode>newResVarName</Ocode>: The new variable to store the result.</li>
    </Oul>
    <CodeView>
var set "Яка погода сьогодні?" question;
llm ask question answer;
csl write answer;
    </CodeView>
    <Op>
        This example gets an answer to the question "Яка погода сьогодні?" and prints it to the console.
    </Op>
    </Card>


	<Card>
    <Oh3 class="notranslate">tts say2</Oh3>
    <Op>Converts text to speech and plays it.</Op>
	<Oul>
		<li>If no language is specified, the default system language is used.</li>
		<li>The text is cached in an MP3 file for quick access in the future.</li>
	</Oul>
    <CodeView>tts say2 (text)</CodeView>
    <Oul>
        <li><Ocode>text</Ocode>: The text to be synthesized into speech.</li>
    </Oul>
    <CodeView>
tts say2 "Привіт, світ!";
    </CodeView>
    <Op>
        This example synthesizes the text "Привіт, світ!" into speech and plays it.
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">tts say</Oh3>
    <Op>Converts text to speech with the option to select the language.</Op>
	<Oul>
		<li>If no language is specified, the default system language is used.</li>
		<li>The text is cached in an MP3 file for quick access in the future.</li>
	</Oul>
    <CodeView>tts say (text) [language]</CodeView>
    <Oul>
        <li><Ocode>text</Ocode>: The text to be synthesized into speech.</li>
        <li><Ocode>language</Ocode>: The language code (optional, the system language is used by default).</li>
    </Oul>
    <CodeView>
tts say "Hello, world!" "en-US";
    </CodeView>
    <Op>
        This example synthesizes the text "Hello, world!" in English and plays it.
    </Op>
    </Card>



	<Card>
    <Oh3 class="notranslate">sys apps</Oh3>
    <Op>Gets a list of applications in the system.</Op>
    <CodeView>sys apps (newListName)</CodeView>
    <Oul>
        <li><Ocode>newListName</Ocode>: The new list variable to store the application IDs.</li>
    </Oul>
    <CodeView>
sys apps appList;
lst get appList "0" firstApp;
csl write firstApp;
    </CodeView>
    <Op>
        This example gets a list of applications and prints the ID of the first application to the console.
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">sys files</Oh3>
    <Op>Gets the path to the user's files.</Op>
    <CodeView>sys files (newVarName)</CodeView>
    <Oul>
        <li><Ocode>newVarName</Ocode>: The new variable to store the path to the user's files.</li>
    </Oul>
    <CodeView>
sys files userFilesPath;
csl write userFilesPath;
    </CodeView>
    <Op>
        This example gets the path to the user's files and prints it to the console.
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">sys flowname</Oh3>
    <Op>Gets the name of the current flow.</Op>
    <CodeView>sys flowname (newVarName)</CodeView>
    <Oul>
        <li><Ocode>newVarName</Ocode>: The new variable to store the flow name.</li>
    </Oul>
    <CodeView>
sys flowname currentFlow;
csl write currentFlow;
    </CodeView>
    <Op>
        This example gets the name of the current flow and prints it to the console.
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">sys log</Oh3>
    <Op>Gets the logs as a string.</Op>
    <CodeView>sys log (newVarName)</CodeView>
    <Oul>
        <li><Ocode>newVarName</Ocode>: The new variable to store the logs.</li>
    </Oul>
    <CodeView>
sys log applicationLog;
csl write applicationLog;
    </CodeView>
    <Op>
        This example gets the logs and prints them to the console.
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">sys start</Oh3>
    <Op>Starts an application by its ID.</Op>
    <CodeView>sys start (appId)</CodeView>
    <Oul>
        <li><Ocode>appId</Ocode>: The ID of the application to start.</li>
    </Oul>
    <CodeView>
sys start "calculator";
    </CodeView>
    <Op>
        This example starts the application with the ID "calculator".
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">sys homedir</Oh3>
    <Op>Gets the system home path.</Op>
    <CodeView>sys homedir (newVarName)</CodeView>
    <Oul>
        <li><Ocode>newVarName</Ocode>: The new variable to store the system home path.</li>
    </Oul>
    <CodeView>
sys homedir homeDirectory;
csl write homeDirectory;
    </CodeView>
    <Op>
        This example gets the system home path and prints it to the console.
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">sys install</Oh3>
    <Op>Installs an application.</Op>
    <CodeView>sys install (appId) (contentVAR)</CodeView>
    <Oul>
        <li><Ocode>appId</Ocode>: The ID of the application to install.</li>
        <li><Ocode>contentVAR</Ocode>: The variable containing the application content.</li>
    </Oul>
    <CodeView>
var set "[/start.steps]
csl write \"Hello\";
[end]
" appContent;
sys install "author.group.appname" appContent;
    </CodeView>
    <Op>
        This example installs the application with the ID "helloApp" with content that prints "Hello".
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">sys pack</Oh3>
    <Op>Packs an application.</Op>
    <CodeView>sys pack (appId) (contentVARNewVarName)</CodeView>
    <Oul>
        <li><Ocode>appId</Ocode>: The ID of the application to pack.</li>
        <li><Ocode>contentVARNewVarName</Ocode>: The variable where the packed application content will be stored.</li>
    </Oul>
    <CodeView>
sys pack "helloApp" packedApp;
csl write packedApp;
    </CodeView>
    <Op>
        This example packs the application with the ID "helloApp" and prints the packed content to the console.
    </Op>
    </Card>


	<Card>
    <Oh3 class="notranslate">dtm now</Oh3>
    <Op>Gets the current time in milliseconds since the Unix epoch.</Op>
    <CodeView>dtm now (newVarName)</CodeView>
    <Oul>
        <li><Ocode>newVarName</Ocode>: The new variable to store the current time.</li>
    </Oul>
    <CodeView>
dtm now currentTime;
csl write currentTime;
    </CodeView>
    <Op>
        This example gets the current time and prints it to the console.
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">dtm format</Oh3>
    <Op>Formats the given time in the specified format and time zone. 
		The default time zone is used if not specified.
	</Op>
    <CodeView>dtm format (now) (format) [timezone] (newVarName)</CodeView>
    <Oul>
        <li><Ocode>now</Ocode>: The time in milliseconds since the Unix epoch.</li>
        <li><Ocode>format</Ocode>: The output format of the time.</li>
        <li><Ocode>timezone</Ocode>: The name of the time zone (optional, system default is used).</li>
        <li><Ocode>newVarName</Ocode>: The new variable to store the formatted time.</li>
    </Oul>
    <CodeView>
dtm now currentTime;
dtm format currentTime "yyyy-MM-dd HH:mm:ss" "UTC" formattedTime;
csl write formattedTime;
    </CodeView>
    <Op>
        This example formats the current time in the "yyyy-MM-dd HH:mm:ss" format in the UTC time zone and prints it to the console.
    </Op>
    </Card>



    
</div>