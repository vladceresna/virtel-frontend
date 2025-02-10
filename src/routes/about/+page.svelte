<script lang="ts">
    import { Button } from "$lib/components/ui/button";
</script>

<div class="text-center grid gap-5 grid-cols-1 py-12 ">
    <div class="w-full flex justify-center">
        <img src="favicon.png" class="w-10 h-10"/>
    </div>
    <h1 class="scroll-m-20 text-4xl font-extrabold tracking-tight lg:text-5xl">
      Virtel
    </h1>
    <h4 class="text-muted-foreground scroll-m-20 text-xl font-semibold tracking-tight">
        Made with ❤ by vladceresna
        <br>
        Your best crossplatform virtual enviroment
    </h4>
    <Button class="mx-auto" variant="secondary" href="https://discord.gg/hNSyTvuy2v">Join our Discord Community!</Button>
    <h4 class="scroll-m-20 text-xl font-semibold tracking-tight">
        This is Open Source Project! Contains 3 projects: 
        <br>
        this backend, frontend, and Virtel application (platform)
    </h4>
    <div class="flex flex-col justify-center items-center">
        <Button href="https://github.com/vladceresna/virtel-frontend" class="m-2">It Frontend Sources</Button>
        <Button href="https://github.com/vladceresna/virtel" class="m-2">Virtel Sources</Button>
        <Button href="https://github.com/vladceresna/virtel-backend" class="m-2">It Backend Sources</Button>
    </div>
    <h3 class="scroll-m-20 text-2xl font-semibold tracking-tight">
        Made with and thanks for:
    </h3>
        <Button class="mx-auto" href="https://kit.svelte.dev/">
            Svelte
        </Button>
        <Button class="mx-auto" href="https://www.jetbrains.com/compose-multiplatform/">
            Compose 
            Multiplatform
        </Button>
        <Button class="mx-auto" href="https://www.rust-lang.org/">
            Rust
        </Button>
        <Button class="mx-auto" href="https://spring.io/">
            Spring
        </Button>
    
</div>