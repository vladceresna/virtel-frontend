<script lang="ts">
    import { ScrollArea } from "$lib/components/ui/scroll-area/index.js";
</script>


<div class="mx-auto grid w-full max-w-6xl gap-2">
    <h1 class="scroll-m-20 text-4xl font-extrabold tracking-tight lg:text-5xl">Virtel Docs</h1>
  </div>
  <div class="mx-auto w-full max-w-6xl gap-2 grid md:grid-cols-5 ">
    <ScrollArea class="h-[400px] md:col-span-1">
        <nav class="text-muted-foreground grid gap-4 text-sm">
            <a href="##" class="text-primary font-semibold"> Getting Started </a>
            <a href="/docs">Introduction</a>
            <a href="/docs/installing">Installing</a>
            <a href="/docs/modules" class="text-primary font-semibold">Modules</a>
            <a href="##">Organizations</a>
            <a href="##">Advanced</a>
        </nav>
    </ScrollArea>
    <slot />
  </div>



