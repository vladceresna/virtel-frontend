<script lang="ts">
	 import { Button } from "$lib/components/ui/button";
  import Terminal from "lucide-svelte/icons/terminal";
  import * as Alert from "$lib/components/ui/alert/index.js";
  import GitCommitHorizontal from "lucide-svelte/icons/git-commit-horizontal";
  import MemoryStick from "lucide-svelte/icons/memory-stick";
  import * as Avatar from "$lib/components/ui/avatar/index.js";
  import * as HoverCard from "$lib/components/ui/hover-card/index.js";
	import DownloadOption from "$lib/components/download-option.svelte";

    export let url;
    export let os;
    export let format;
    export let version;
    export let weight;
</script>


<div class="md:flex-1 flex flex-col w-full p-5 gap-5 text-center rounded-md border">
    <h3 class="scroll-m-20 text-2xl font-semibold tracking-tight">{os}</h3>
    <div class="justify-center">
      
      <HoverCard.Root>
        <HoverCard.Trigger>
          <Button href={url} class="mr-2">
            Download {format}
          </Button>
        </HoverCard.Trigger>
        <HoverCard.Content class="flex place-items-center gap-2 w-fit">
            <Avatar.Root class="flex-1">
              <Avatar.Image src="/favicon.png" />
              <Avatar.Fallback>VT</Avatar.Fallback>
            </Avatar.Root>
            <div class="flex-1 flex-col flex gap-1">
              <div class="text-lg font-semibold whitespace-nowrap">Version</div>
              <div class="flex gap-2">
                <GitCommitHorizontal class="h-4 w-4" />
                <small class="text-sm font-medium leading-none whitespace-nowrap">
                  {version}
                </small>
                <MemoryStick class="h-4 w-4" />
                <small class="text-sm font-medium leading-none whitespace-nowrap">
                  {weight}
                </small>
              </div>
            </div>
        </HoverCard.Content>
      </HoverCard.Root>
    </div>
  </div>