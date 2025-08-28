<script lang="ts">
	import { Button } from '$lib/components/ui/button';
</script>

<div class="grid grid-cols-1 gap-5 py-12">
	<div class="flex w-full justify-center">
		<img alt="favicon" src="favicon.png" class="h-10 w-10" />
	</div>
	<h1 class="scroll-m-20 text-center text-4xl font-extrabold tracking-tight lg:text-5xl">Virtel</h1>
	<h4 class="scroll-m-20 text-center text-xl font-semibold tracking-tight text-muted-foreground">
		Made with ❤ by vladceresna
		<br />
		Your best crossplatform virtual enviroment
	</h4>
	<div class="mx-auto flex flex-wrap justify-center gap-2">
		<Button class="my-auto w-full font-bold md:w-auto" variant="outline" href="/about"
			>Join us</Button
		>
		<Button variant="outline" size="icon" href="https://discord.gg/hNSyTvuy2v">
			<img src="discord.svg" alt="Discord" class="h-4 w-4 dark:invert" />
		</Button>
		<Button variant="outline" size="icon" href="https://t.me/virtelx">
			<img src="telegram.svg" alt="Telegram" class="h-4 w-4 dark:invert" />
		</Button>
		<Button variant="outline" size="icon" href="https://www.instagram.com/virtelx/">
			<img src="instagram.svg" alt="Instagram" class="h-4 w-4 dark:invert" />
		</Button>
		<Button variant="outline" size="icon" href="https://www.threads.com/@virtelx">
			<img src="threads.svg" alt="Threads" class="h-4 w-4 dark:invert" />
		</Button>
		<Button
			variant="outline"
			size="icon"
			href="https://www.youtube.com/channel/UCbc-wBJEVRRMLENSaFlSaxg"
		>
			<img src="youtube.svg" alt="Youtube" class="h-4 w-4 dark:invert" />
		</Button>
	</div>
	<h4 class="scroll-m-20 text-center text-lg font-semibold tracking-tight">
		This is Open Source Project! Contains 3 projects:
		<br />
		this backend, frontend, and Virtel application (platform)
	</h4>
	<div class="flex flex-col">
		<Button variant="link" href="https://github.com/vladceresna/virtel-frontend"
			>Website Frontend Sources</Button
		>
		<Button variant="link" href="https://github.com/vladceresna/virtel-backend"
			>Website Backend Sources</Button
		>
		<Button variant="link" href="https://github.com/vladceresna/virtel">Virtel Sources</Button>
	</div>
	<h3 class="scroll-m-20 text-center text-2xl font-semibold tracking-tight">
		Made with and thanks for:
	</h3>
	<div class="mx-auto max-w-xs *:text-left">
		<Button variant="link" href="https://kit.svelte.dev/">Svelte</Button>
		<Button variant="link" href="https://www.jetbrains.com/compose-multiplatform/">
			Compose Multiplatform
		</Button>
		<Button variant="link" href="https://www.rust-lang.org/">Rust</Button>
		<Button variant="link" href="https://spring.io/">Spring</Button>
	</div>
</div>
