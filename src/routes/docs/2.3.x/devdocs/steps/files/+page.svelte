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






<Oh2>File Operations in a Text Editor</Oh2>
<Op>Objective: Implement file operations (save and open) in a text editor.</Op>

<Oh3>Steps:</Oh3>
<Oul>
<li>Save File:
<CodeView>
scr get editor "text" content;
var set "$/data/document.txt" filePath;
fls write filePath content;
csl write "File saved successfully!";
</CodeView>
<Oul>
<li>Retrieves the text from the editor.</li>
<li>Sets the file path.</li>
<li>Writes the content to the file.</li>
<li>Informs the user that the file was saved.</li>
</Oul>
</li>

<li>Open File:
<CodeView>
var set "$/data/document.txt" filePath;
fls read filePath content;
scr set editor "text" content;
csl write "File opened successfully!";
</CodeView>
<Oul>
<li>Sets the file path.</li>
<li>Reads the content from the file.</li>
<li>Displays the content in the editor.</li>
<li>Informs the user that the file was opened.</li>
</Oul>
</li>
</Oul>

<Op>Full Code:</Op>
<CodeView>
// Save file
scr get editor "text" content;
var set "$/data/document.txt" filePath;
fls write filePath content;
csl write "File saved successfully!";

// Open file
var set "$/data/document.txt" filePath;
fls read filePath content;
scr set editor "text" content;
csl write "File opened successfully!";
</CodeView>

<Op>Result:</Op>
<Op>A text editor with functionality to save and open files.</Op>

<Oh2>Conclusion</Oh2>
<Op>By integrating file operations, you've enhanced the text editor's functionality. 
    Users can now save their work and open existing files.</Op>















<Oh2>Commands</Oh2>
<div class="h-5"></div>

<div class="flex flex-col gap-5 *:px-5 *:pb-5">

	    <Card>
    <Oh3 class="notranslate">fls read</Oh3>
    <Op>Reads the contents of a file from the specified path.</Op>
    <CodeView>fls read (path) (newVarName)</CodeView>
    <Oul>
        <li><Ocode>path</Ocode>: The path to the file.</li>
        <li><Ocode>newVarName</Ocode>: The new variable to store the file content.</li>
    </Oul>
    <CodeView>
var set "$/data/file.txt" filePath;
fls read filePath fileContent;
csl write fileContent;
    </CodeView>
    <Op>
        This example reads the contents of the "file.txt" file from the "data" directory and prints it to the console.
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">fls write</Oh3>
    <Op>Writes text to a file with the specified path.</Op>
    <CodeView>fls write (path) (value)</CodeView>
    <Oul>
        <li><Ocode>path</Ocode>: The path to the file.</li>
        <li><Ocode>value</Ocode>: The text to write.</li>
    </Oul>
    <CodeView>
var set "$/data/file.txt" filePath;
var set "Привіт, світ!" content;
fls write filePath content;
    </CodeView>
    <Op>
        This example writes the text "Привіт, світ!" to the "file.txt" file in the "data" directory.
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">fls del</Oh3>
    <Op>Deletes a file or directory with the specified path.</Op>
    <CodeView>fls del (path)</CodeView>
    <Oul>
        <li><Ocode>path</Ocode>: The path to the file or directory.</li>
    </Oul>
    <CodeView>
var set "$/data/file.txt" filePath;
fls del filePath;
    </CodeView>
    <Op>
        This example deletes the "file.txt" file from the "data" directory.
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">fls dir</Oh3>
    <Op>Creates a directory with the specified path.</Op>
    <CodeView>fls dir (path)</CodeView>
    <Oul>
        <li><Ocode>path</Ocode>: The path to the directory.</li>
    </Oul>
    <CodeView>
var set "$/data/newDir" dirPath;
fls dir dirPath;
    </CodeView>
    <Op>
        This example creates a "newDir" directory in the "data" directory.
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">fls list</Oh3>
    <Op>Returns a list of files and directories in the specified directory.</Op>
    <CodeView>fls list (path) (newListName)</CodeView>
    <Oul>
        <li><Ocode>path</Ocode>: The path to the directory.</li>
        <li><Ocode>newListName</Ocode>: The new list variable to store the result.</li>
    </Oul>
    <CodeView>
var set "$/data" dirPath;
fls list dirPath fileList;
lst get fileList "0" firstItem;
csl write firstItem;
    </CodeView>
    <Op>
        This example returns a list of items in the "data" directory and prints the first item of the list to the console.
    </Op>
    </Card>

    <Card>
    <Oh3 class="notranslate">fls xst</Oh3>
    <Op>Checks if a file or directory with the specified path exists.</Op>
    <CodeView>fls xst (path) (newVarName)</CodeView>
    <Oul>
        <li><Ocode>path</Ocode>: The path to the file or directory.</li>
        <li><Ocode>newVarName</Ocode>: The new variable to store the result (boolean as a string).</li>
    </Oul>
    <CodeView>
var set "$/data/file.txt" filePath;
fls xst filePath exists;
csl write exists;
    </CodeView>
    <Op>
        This example checks if the "file.txt" file exists in the "data" directory and prints the result to the console.
    </Op>
    </Card>
    
</div>