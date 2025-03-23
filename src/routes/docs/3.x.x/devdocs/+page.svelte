<script>
	import FeatureCard from "$lib/components/feature-card.svelte";
	import Oh2 from "$lib/components/typography/oh2.svelte";
	import Op from "$lib/components/typography/op.svelte";

</script>

<Oh2>Virtel Development</Oh2>

<Op>
    Virtel is a platform that includes the Steps language and its Complex extension. 
    Virtel allows you to create programs with support for the console, 
    file system, network, GUI, and other functions. It has a modular structure, 
    where each module is responsible for a specific type of operation. 
    For example, the csl module is used to work with the console, 
    fls is for files, srv is for creating servers, tts is for text-to-speech, 
    and scr is for a graphical interface. Each module has a set of commands that 
    allow you to perform the necessary actions, from simple operators to complex tasks. 
    This makes Virtel a versatile tool for developing various programs.
</Op>

<div class="flex flex-wrap gap-5 p-5">
<FeatureCard title="Console/Terminal"
description="The csl module allows you to interact with the console. 
With the csl write command, you can display messages, 
and with csl read, you can read user input. 
These are basic functions for any script."></FeatureCard>
<FeatureCard title="Files"
description="The fls module is responsible for working with files. 
The fls read and fls write commands allow you to read and write data to files, 
which is useful for saving and loading information."></FeatureCard>
<FeatureCard title="HTTP Server"
description="The srv module allows you to create HTTP servers. 
With the srv new, srv add, and srv run commands, you can configure the server, add handlers 
for different HTTP methods, and run it to process requests."></FeatureCard>
<FeatureCard title="Text-to-Speech"
description="The tts module is responsible for converting text to speech. 
The tts say command allows you to play text aloud, 
which is useful for creating voice notifications or interfaces."></FeatureCard>
<FeatureCard title="Graphical interface"
description="The scr module allows you to create a graphical interface. 
With the scr new, scr set, and scr get commands, you can create interface elements, 
configure their properties, and handle events."></FeatureCard>
<FeatureCard title="Execution management"
description="The run module controls the execution of the program. 
The run if, run while, and run flow commands allow you 
to create conditional constructs, loops, and control the flow of execution, 
which allows you to write complex scripts."></FeatureCard>
</div>