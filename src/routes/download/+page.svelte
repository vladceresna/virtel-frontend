<script lang="ts">
  import { Button } from "$lib/components/ui/button";
  import Terminal from "lucide-svelte/icons/terminal";
  import * as Alert from "$lib/components/ui/alert/index.js";
  import GitCommitHorizontal from "lucide-svelte/icons/git-commit-horizontal";
  import MemoryStick from "lucide-svelte/icons/memory-stick";
  import * as Avatar from "$lib/components/ui/avatar/index.js";
  import * as HoverCard from "$lib/components/ui/hover-card/index.js";
</script>

<div class="text-center gap-5 py-12 flex flex-wrap flex-col">
  <h1 class="scroll-m-20 text-4xl font-extrabold tracking-tight lg:text-5xl">
    Download Virtel
  </h1>
  <h4 class="text-muted-foreground scroll-m-20 text-xl font-semibold tracking-tight">
      In future for every platform. Open Source.
      <br>
      Your best virtual enviroment
  </h4>
</div>
<div class="md:flex">
  <div class="md:flex-1 w-full p-5 text-center">
    <h3 class="scroll-m-20 text-2xl font-semibold tracking-tight p-5">Windows</h3>
    <div class="justify-center">
      
      <HoverCard.Root>
        <HoverCard.Trigger>
          <Button href="https://github.com/vladceresna/virtel/releases/download/0.1.4/virtel-0.1.4.exe" class="mr-2">
            Download
          </Button>
        </HoverCard.Trigger>
        <HoverCard.Content class="flex place-items-center gap-2 w-fit">
            <Avatar.Root class="flex-1">
              <Avatar.Image src="/favicon.png" />
              <Avatar.Fallback>VT</Avatar.Fallback>
            </Avatar.Root>
            <div class="flex-1 flex-col flex gap-1">
              <div class="text-lg font-semibold whitespace-nowrap">Latest version</div>
              <div class="flex gap-2">
                <GitCommitHorizontal class="h-4 w-4" />
                <small class="text-sm font-medium leading-none whitespace-nowrap">
                  0.1.2
                </small>
                <MemoryStick class="h-4 w-4" />
                <small class="text-sm font-medium leading-none whitespace-nowrap">
                  1.27 MB
                </small>
              </div>
            </div>
        </HoverCard.Content>
      </HoverCard.Root>
      <Button href="https://github.com/vladceresna/virtel/releases" variant="secondary">
        See releases
      </Button>
    </div>
  </div>
  <div class="md:flex-1 w-full p-5 text-center">
    <h3 class="scroll-m-20 text-2xl font-semibold tracking-tight p-5">Linux</h3>
    <p class="text-muted-foreground text-sm">Support will be added soon</p>
  </div>
  <div class="md:flex-1 w-full p-5 text-center">
    <h3 class="scroll-m-20 text-2xl font-semibold tracking-tight p-5">Android</h3>
    <p class="text-muted-foreground text-sm">Support will be added soon</p>
  </div>
  

</div>
<Alert.Root>
  <Terminal class="h-4 w-4" />
  <Alert.Title>Virtel now is in Alpha version</Alert.Title>
  <Alert.Description>
    Please use this with caution. But you are welcome to test Virtel. 
    If you see bugs, feel free to contact me by email or create a problem on the github repository
  </Alert.Description>
</Alert.Root>