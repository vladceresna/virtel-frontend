<svelte:head>
	<title>Documentation | The best system for operating your device | Virtel Project | Full Control</title>
	<meta name="description" content="Powerful, user-friendly and super-lightweight operating system - the way to new generation of Web 3.0 Internet. Virtualize your world! Download Virtel!">
</svelte:head>

<script lang="ts">
    import Combobox from "$lib/components/ui/combobox/combobox.svelte";
    import { ScrollArea } from "$lib/components/ui/scroll-area/index.js";
    let version = "2.3.x";
</script>

  <div class="mx-auto w-full max-w-6xl gap-2 grid md:grid-cols-5 ">
        <ScrollArea class="md:fixed md:h-[50%] h-svh md:col-span-1 rounded-lg border m-5 p-3 bg-background">
            <Combobox frameworks = {[{
            value: "2.3.x",
            label: "2.3.x"
            }]} value={version}></Combobox>
            <nav class="text-muted-foreground grid gap-4 text-sm mt-4 pb-5 w-min">
                <a href="/docs/2.3.x/" class="text-primary font-semibold">Getting Started</a>
                <a href="/docs/2.3.x/">Introduction</a>
                <a href="/docs/2.3.x/installing/">Installing</a>
                
                <!-- 
                <a href="/docs/2.3.x/userdocs/" class="text-primary font-semibold">User Docs</a>
                <a href="/docs/2.3.x/userdocs/">Virtel Structure</a>
                <a href="/docs/2.3.x/userdocs/navigation/">Navigation</a>
                <a href="/docs/2.3.x/userdocs/apps/">Apps</a>
                <a href="/docs/2.3.x/userdocs/dashboard/">Dashboard & Resource Monitoring</a>
                <a href="/docs/2.3.x/userdocs/terminal/">Terminal</a>
                 -->

                <a href="/docs/2.3.x/devdocs/" class="text-primary font-semibold">Developer Docs</a>
                <a href="/docs/2.3.x/devdocs/">Features</a>
                <a href="/docs/2.3.x/devdocs/steps/" class="text-primary">Steps</a>
                <a href="/docs/2.3.x/devdocs/steps/">Meaning</a>
                <a href="/docs/2.3.x/devdocs/steps/varsandlists/">Variables and Lists</a>
                <a href="/docs/2.3.x/devdocs/steps/data/">Data</a>
                <a href="/docs/2.3.x/devdocs/steps/screen/">Screen</a>
                <a href="/docs/2.3.x/devdocs/steps/running/">Running</a>
                <a href="/docs/2.3.x/devdocs/steps/files/">Files</a>
                <a href="/docs/2.3.x/devdocs/steps/system/">System</a>
                <a href="/docs/2.3.x/devdocs/steps/network/">Network</a>
                <a href="/docs/2.3.x/devdocs/complex/" class="text-primary">Complex</a>
            </nav>
        </ScrollArea>
        <div class="md:h-svh md:col-span-1 sm:col-span-0 rounded-lg m-5 p-3">
        </div>
    <div class="md:col-span-3">
        <slot />
    </div>
    
</div>



