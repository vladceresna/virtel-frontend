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

<Oh1>Network</Oh1>

<Oh2>Creating and Running a Server</Oh2>
<Op>Objective: Create a server that responds to GET requests.</Op>

<Oh3>Steps:</Oh3>
<Oul>
<li>Create the server:
<CodeView>
srv new "8080" server;
</CodeView>
<Oul>
<li>"8080" is the server port.</li>
<li>"server" is the variable name to store the server object.</li>
</Oul>
</li>
<li>Add a route:
<CodeView>
srv add "get" "/" "/index.steps" response server;
</CodeView>
<Oul>
<li>"get" is the HTTP request method.</li>
<li>"/" is the route path.</li>
<li>"/index.steps" is the file to handle the request.</li>
<li>"response" is the variable to store the result.</li>
<li>"server" is the variable with the server object.</li>
</Oul>
</li>
<li>Run the server:
<CodeView>
srv run server;
</CodeView>
</li>
</Oul>

<Op>File "/index.steps":</Op>
<CodeView>
var set "Hello, World!" response;
</CodeView>
<Oul>
<li>This file returns "Hello, World!" in response to the request.</li>
</Oul>

<Oh2>Making HTTP Requests</Oh2>
<Op>Objective: Perform a GET request to an external API.</Op>

<Oh3>Steps:</Oh3>
<Oul>
<li>Define request parameters:
<CodeView>
var set "get" method;
var set "https://api.example.com/data" url;
var set "" body;
</CodeView>
<Oul>
<li>"method" is the request method.</li>
<li>"url" is the URL address.</li>
<li>"body" is the request body.</li>
</Oul>
</li>
<li>Execute the request:
<CodeView>
clt req method url body status bodyResult;
</CodeView>
<Oul>
<li>"status" is the variable to store the response status.</li>
<li>"bodyResult" is the variable to store the response body.</li>
</Oul>
</li>
<li>Display the result:
<CodeView>
str add "Status: " status status;
str add ", Body: " bodyResult bodyResult;
str add status bodyResult message;
csl write message;
</CodeView>
</li>
</Oul>

<Oh2>Practical Example</Oh2>
<Op>Objective: Create a server that handles GET requests and returns a greeting.</Op>

<Oh3>Steps:</Oh3>
<Oul>
<li>Create the server:
<CodeView>
srv new "8080" server;
</CodeView>
</li>
<li>Add a route:
<CodeView>
srv add "get" "/hello" "/hello.steps" response server;
</CodeView>
</li>
<li>Run the server:
<CodeView>
srv run server;
</CodeView>
</li>
</Oul>

<Op>File "/hello.steps":</Op>
<CodeView>
var set "Hello, User!" response;
</CodeView>

<Op>Result:</Op>
<Oul>
<li>Open a browser and navigate to <Ocode>http://localhost:8080/hello</Ocode>.</li>
<li>You will see the message "Hello, User!".</li>
</Oul>

<Oh2>Tips</Oh2>
<Oul>
<li>Test your servers and requests regularly to avoid errors.</li>
<li>Choose ports and routes carefully to avoid conflicts.</li>
<li>Comment your code for better understanding.</li>
</Oul>

<Oh2>Conclusion</Oh2>
<Op>Virtel Steps offers simple and convenient tools for networking. Use the commands <Ocode>srv new</Ocode>, <Ocode>srv add</Ocode>, <Ocode>srv run</Ocode> to create servers, and <Ocode>clt req</Ocode> to make HTTP requests. This allows you to quickly develop network applications.</Op>









<Oh2>Commands</Oh2>
<div class="h-5"></div>

<div class="flex flex-col gap-5 *:px-5 *:pb-5">

<Card>
<Oh3 class="notranslate">srv new</Oh3>
<Op>Creates a new server and stores it in a variable of type SERVER.</Op>
<CodeView>srv new (newVarName)</CodeView>
<Oul>
    <li><Ocode>newVarName</Ocode>: The name of the variable for the server (type: SERVER).</li>
</Oul>
<CodeView>
srv new myServer;
</CodeView>
<Op>
    This example creates a new server and stores it in "myServer".
</Op>
</Card>

<Card>
<Oh3 class="notranslate">srv add</Oh3>
<Op>Adds a route to a server that runs a file to handle requests, storing the response in a variable.</Op>
<CodeView>srv add (method) (route) (file) (resVarName) (newVarName)</CodeView>
<Oul>
    <li><Ocode>method</Ocode>: The HTTP method ("get", "post", "delete") (type: VAR).</li>
    <li><Ocode>route</Ocode>: The route path (e.g., "/all") (type: VAR).</li>
    <li><Ocode>file</Ocode>: The file to handle the request (type: VAR).</li>
    <li><Ocode>resVarName</Ocode>: The variable name for the response in the handling flow (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the server variable (type: SERVER).</li>
</Oul>
<CodeView>
srv new myServer;
srv add "get" "/all" "/all.steps" allRes myServer;
</CodeView>
<Op>
    This example adds a GET route "/all" to "myServer" that runs "/all.steps".
</Op>
</Card>

<Card>
<Oh3 class="notranslate">srv run</Oh3>
<Op>Runs a server on a specified port to handle requests based on added routes.</Op>
<CodeView>srv run (port) (newVarName)</CodeView>
<Oul>
    <li><Ocode>port</Ocode>: The port to run the server on (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the server variable (type: SERVER).</li>
</Oul>
<CodeView>
srv new myServer;
srv add "get" "/all" "/all.steps" allRes myServer;
srv run "8080" myServer;
</CodeView>
<Op>
    This example runs "myServer" on port 8080 with a "/all" route.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">srv stop</Oh3>
<Op>Stops a server running on a specified port.</Op>
<CodeView>srv stop (port) (newVarName)</CodeView>
<Oul>
    <li><Ocode>port</Ocode>: The port of the server to stop (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the server variable (type: SERVER).</li>
</Oul>
<CodeView>
srv new myServer;
srv run "8080" myServer;
run pause "5000";
srv stop "8080" myServer;
</CodeView>
<Op>
    This example runs a server for 5 seconds and then stops it.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">clt req</Oh3>
<Op>Performs an HTTP request and stores the status and response body in new variables.</Op>
<CodeView>clt req (method) (url) (body) /type/ (newVarNameStatus) (newVarNameBody)</CodeView>
<Oul>
    <li><Ocode>method</Ocode>: The HTTP method ("get", "post", "delete") (type: VAR).</li>
    <li><Ocode>url</Ocode>: The URL for the request (type: VAR).</li>
    <li><Ocode>body</Ocode>: The request body (empty string for GET/DELETE) (type: VAR).</li>
    <li><Ocode>type</Ocode>: Optional, only for "json" body value "json"</li>
    <li><Ocode>newVarNameStatus</Ocode>: The variable for the response status (type: VAR).</li>
    <li><Ocode>newVarNameBody</Ocode>: The variable for the response body (type: VAR).</li>
</Oul>
<CodeView>
clt req "get" "http://example.com" "" status body;
csl write body;
</CodeView>
<Op>
    This example sends a GET request to "http://example.com" and prints the response body.
</Op>
</Card>
    
</div>