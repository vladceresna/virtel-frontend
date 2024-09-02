<script lang="ts">
    import { ScrollArea } from "$lib/components/ui/scroll-area/index.js";
</script>


<div class="mx-auto grid w-full max-w-6xl gap-2">
    <h1 class="scroll-m-20 text-4xl font-extrabold tracking-tight lg:text-5xl">Virtel Docs</h1>
  </div>
  <div class="mx-auto w-full max-w-6xl gap-2 grid md:grid-cols-5 ">
    <ScrollArea class="h-[350px] md:col-span-1">
        <nav class="text-muted-foreground grid gap-4 text-sm">
            <a href="/docs" class="text-primary font-semibold"> Getting Started </a>
            <a href="/docs">Introduction</a>
            <a href="/docs/installing">Installing</a>
            <a href="/docs/steps" class="text-primary font-semibold">Steps Overview</a>
            <a href="/docs/cmds">Commands</a>
        </nav>
    </ScrollArea>
    <div class="md:col-span-3">
        <slot />
    </div>
    
  </div>



