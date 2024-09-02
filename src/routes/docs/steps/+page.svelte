
<h2 class="scroll-m-20 pb-2 text-3xl font-semibold tracking-tight transition-colors first:mt-0">
	Quick overview of Steps
</h2>
<div class="leading-7 [&:not(:first-child)]:mt-6">
What is "Steps"?
❓ Steps is a programming language made specifically to run on Virtel. As have been said before, Steps also lacks lots of functionality, but is constantly improved - creating programs in Steps isn't that far away from reality. The file extension that Steps uses is pretty straightforward: .steps. The same thing can be said about the language itself, as the syntax is pretty easy to learn. If you don't like Steps, in the near future you will be able to write code via another language that compiles into Steps.
</div>
<div class="leading-7 [&:not(:first-child)]:mt-6">
	🔬 In the future, there will be a dedicated Steps documentation, where you will be able to read and see lots of examples. This section exists only for the sole purpose of providing some basic information about the Steps language, as the documentation hasn't been written yet.

🛠️ List of currently available commands:
    <div class="my-5 whitespace-break-spaces rounded-2xl border bg-stone-200 px-3 py-2 font-mono dark:bg-stone-800">
    sys out /name of the variable or any text/
var set /var name/ /var value/
var get /var name/
var del /name of the variable/
bin run /name of the .steps script/
math plus /num as text or var name/ /num as text or var name/ /name of the var to store the result/
math min /num as text or var name/ /num as text or var name/ /name of the var to store the result/
math mult /num as text or var name/ /num as text or var name/ /name of the var to store the result/
math div /num as text or var name/ /num as text or var name/ /name of the var to store the result/
math exp /num as text or var name/ /num as text or var name/ /name of the var to store the result/
math root /num as text or var name/ /num as text or var name/ /name of the var to store the result/
math mod /num as text or var name/ /num as text or var name/ /name of the var to store the result/
math floor /num as text or var name/ /num as text or var name/ /name of the var to store the result/
math incr /name of the var to increment/
math decr /name of the var to decrement/
    </div>
</div>
<div class="leading-7 [&:not(:first-child)]:mt-6 ">
    Different code examples:
Basic example, working with bin run:
start.steps is always a starting point for any Steps application. In this example we also jump to the run.steps file.

Path of the file (may depend on the system): C:/Virtel/apps/vladceresna.virtel.launcher/bin/start.steps
<br>
Script in start.steps:
<div class="my-5 whitespace-break-spaces rounded-2xl border bg-stone-200 px-3 py-2 font-mono dark:bg-stone-800">
var set greet "Hello!";
sys out greet;
var set greet "Hi!";
sys out greet;
var del greet;
sys out greet;
bin run run.steps;
</div>
Script in run.steps:
<div class="my-5 whitespace-break-spaces rounded-2xl border bg-stone-200 px-3 py-2 font-mono dark:bg-stone-800">
sys out "Hello from run";
sys out "This is run";
</div>
Another example, working with math commmands:
This example briefly shows how you can use mathematics in Steps.
<br>
Steps Code:
<div class="my-5 whitespace-break-spaces rounded-2xl border bg-stone-200 px-3 py-2 font-mono dark:bg-stone-800">
var set a 5;
var set b 5;
math plus a b c;
sys out c;
</div>
Output of the code:
<div class="my-5 whitespace-break-spaces rounded-2xl border bg-stone-200 px-3 py-2 font-mono dark:bg-stone-800">
10
</div>
Here's another mathematical example showing the root command:
<div class="my-5 whitespace-break-spaces rounded-2xl border bg-stone-200 px-3 py-2 font-mono dark:bg-stone-800">
math root "27" "3" c;
sys out c;
</div>
Outputs:
<div class="my-5 whitespace-break-spaces rounded-2xl border bg-stone-200 px-3 py-2 font-mono dark:bg-stone-800">
3
</div>
</div>