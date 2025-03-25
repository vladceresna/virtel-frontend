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

<Oh1>Files</Oh1>

<Oh2>Managing File System Operations</Oh2>
<Op>Objective: Read, write, and manage files and directories.</Op>

<Oh3>Steps:</Oh3>
<Oul>
<li>Write to a file:
<CodeView>
fls write "$/files/data.txt" "Hello World";
</CodeView>
<Oul>
<li>"$/files/data.txt" is the file path.</li>
<li>"Hello World" is the content to write.</li>
</Oul>
</li>
<li>Read from a file:
<CodeView>
fls read "$/files/data.txt" fileContent;
csl write fileContent;
</CodeView>
<Oul>
<li>"$/files/data.txt" is the file path.</li>
<li>"fileContent" is the variable to store the content.</li>
</Oul>
</li>
<li>Check if a file exists:
<CodeView>
fls xst "$/files/data.txt" exists;
csl write exists;
</CodeView>
</li>
</Oul>

<Oh2>Practical Example</Oh2>
<Op>Objective: Create a directory and write a file to it.</Op>

<Oh3>Steps:</Oh3>
<Oul>
<li>Create a directory:
<CodeView>
fls dir "$/files/newFolder";
</CodeView>
</li>
<li>Write a file to the directory:
<CodeView>
fls write "$/files/newFolder/info.txt" "New file";
</CodeView>
</li>
</Oul>

<Oh2>Tips</Oh2>
<Oul>
<li>Use "$" to reference the system path.</li>
<li>Ensure directories exist before writing files.</li>
<li>Delete unnecessary files to free up space.</li>
</Oul>

<Oh2>Conclusion</Oh2>
<Op>File commands like <Ocode>fls write</Ocode>, <Ocode>fls read</Ocode>, and <Ocode>fls dir</Ocode> enable interaction with the file system, ensuring data storage and management.</Op>












<Oh2>Commands</Oh2>
<div class="h-5"></div>

<div class="flex flex-col gap-5 *:px-5 *:pb-5">

<Card>
<Oh3 class="notranslate">fls read</Oh3>
<Op>Reads the content of a file at a specified path and stores it in a new variable.</Op>
<CodeView>fls read (path) (newVarName)</CodeView>
<Oul>
    <li><Ocode>path</Ocode>: The path to the file (replaces "$" with the system path) (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the new variable to store the content (type: VAR).</li>
</Oul>
<CodeView>
fls read "$/files/data.txt" fileContent;
csl write fileContent;
</CodeView>
<Op>
    This example reads the content of "/system/files/data.txt" and prints it.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">fls write</Oh3>
<Op>Writes a value to a file at a specified path, creating directories if they don’t exist.</Op>
<CodeView>fls write (path) (value)</CodeView>
<Oul>
    <li><Ocode>path</Ocode>: The path to the file (replaces "$" with the system path) (type: VAR).</li>
    <li><Ocode>value</Ocode>: The value to write (type: VAR).</li>
</Oul>
<CodeView>
fls write "$/files/data.txt" "Hello World";
</CodeView>
<Op>
    This example writes "Hello World" to "/system/files/data.txt".
</Op>
</Card>

<Card>
<Oh3 class="notranslate">fls del</Oh3>
<Op>Deletes a file or directory recursively at a specified path.</Op>
<CodeView>fls del (path)</CodeView>
<Oul>
    <li><Ocode>path</Ocode>: The path to the file or directory (replaces "$" with the system path) (type: VAR).</li>
</Oul>
<CodeView>
fls del "$/files/oldData.txt";
</CodeView>
<Op>
    This example deletes the file "/system/files/oldData.txt".
</Op>
</Card>

<Card>
<Oh3 class="notranslate">fls dir</Oh3>
<Op>Creates a new directory at a specified path.</Op>
<CodeView>fls dir (path)</CodeView>
<Oul>
    <li><Ocode>path</Ocode>: The path to the new directory (replaces "$" with the system path) (type: VAR).</li>
</Oul>
<CodeView>
fls dir "$/files/newFolder";
</CodeView>
<Op>
    This example creates a new directory "/system/files/newFolder".
</Op>
</Card>

<Card>
<Oh3 class="notranslate">fls list</Oh3>
<Op>Gets a list of files in a directory and stores it in a new list variable.</Op>
<CodeView>fls list (path) (newListName)</CodeView>
<Oul>
    <li><Ocode>path</Ocode>: The path to the directory (replaces "$" with the system path) (type: VAR).</li>
    <li><Ocode>newListName</Ocode>: The name of the new list to store the file names (type: LIST).</li>
</Oul>
<CodeView>
fls list "$/files" fileList;
lst get fileList "0" firstFile;
csl write firstFile;
</CodeView>
<Op>
    This example lists files in "/system/files" and prints the first file name.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">fls xst</Oh3>
<Op>Checks if a file or directory exists at a specified path and stores the result ("true" or "false") in a new variable.</Op>
<CodeView>fls xst (path) (newVarName)</CodeView>
<Oul>
    <li><Ocode>path</Ocode>: The path to check (replaces "$" with the system path) (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the new variable to store the result (type: VAR).</li>
</Oul>
<CodeView>
fls xst "$/files/data.txt" exists;
csl write exists;
</CodeView>
<Op>
    This example checks if "/system/files/data.txt" exists and prints "true" or "false".
</Op>
</Card>

<Card>
<Oh3 class="notranslate">zip archive</Oh3>
<Op>Archives a folder into a ZIP file.</Op>
<CodeView>zip archive (folderPath) (newZipFilePath)</CodeView>
<Oul>
    <li><Ocode>folderPath</Ocode>: The path to the folder to archive (type: VAR).</li>
    <li><Ocode>newZipFilePath</Ocode>: The path to the new ZIP file (type: VAR).</li>
</Oul>
<CodeView>
zip archive "$/files/myfolder" "$/files/archive.zip";
</CodeView>
<Op>
    This example archives the folder "/system/files/myfolder" into "/system/files/archive.zip".
</Op>
</Card>

<Card>
<Oh3 class="notranslate">zip extract</Oh3>
<Op>Extracts a ZIP file into a specified folder.</Op>
<CodeView>zip extract (zipFilePath) (folderPath)</CodeView>
<Oul>
    <li><Ocode>zipFilePath</Ocode>: The path to the ZIP file (type: VAR).</li>
    <li><Ocode>folderPath</Ocode>: The path to the folder where the archive will be extracted (type: VAR).</li>
</Oul>
<CodeView>
zip extract "$/files/archive.zip" "$/files/extracted";
</CodeView>
<Op>
    This example extracts "/system/files/archive.zip" into "/system/files/extracted".
</Op>
</Card>
    
</div>