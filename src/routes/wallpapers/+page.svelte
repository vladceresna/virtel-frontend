<script lang="ts">
	import CodeView from '$lib/components/code-view.svelte';
	import Oh4 from '$lib/components/typography/oh4.svelte';
	import { Button } from '$lib/components/ui/button';
	import * as Card from '$lib/components/ui/card';
</script>

<div class="grid grid-cols-1 gap-5 py-12 text-center">
	<h1
		class="scroll-m-20 bg-gradient-to-b from-foreground to-muted-foreground/70 bg-clip-text text-4xl font-extrabold tracking-tight text-transparent lg:text-5xl"
	>
		Wallpapers
	</h1>
	<h4
		class="mx-auto max-w-xl scroll-m-20 text-xl font-semibold tracking-tight text-muted-foreground"
	>
		Tell everyone about Virtel with our awesome wallpapers and share your desktop screen with us on
		our social media ;)
	</h4>
	<div class="mx-auto flex flex-wrap justify-center gap-2">
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
</div>

<div class="grid grid-cols-1 gap-4 md:grid-cols-4">
	<img src="wallpapers-src/Desktop - 3.png" alt="Wallpaper" class="rounded-xl" />
	<img src="wallpapers-src/Desktop - 4.png" alt="Wallpaper" class="rounded-xl" />
	<img src="wallpapers-src/Desktop - 5.png" alt="Wallpaper" class="rounded-xl" />
	<img src="wallpapers-src/Desktop - 6.png" alt="Wallpaper" class="rounded-xl" />
	<img src="wallpapers-src/Desktop - 7.png" alt="Wallpaper" class="rounded-xl" />
	<img src="wallpapers-src/Desktop - 8.png" alt="Wallpaper" class="rounded-xl" />
	<img src="wallpapers-src/Desktop - 9.png" alt="Wallpaper" class="rounded-xl" />
	<img src="wallpapers-src/Desktop - 10.png" alt="Wallpaper" class="rounded-xl" />
	<img src="wallpapers-src/Desktop - 11.png" alt="Wallpaper" class="rounded-xl" />
	<img src="wallpapers-src/Desktop - 12.png" alt="Wallpaper" class="rounded-xl" />
	<img src="wallpapers-src/Desktop - 13.png" alt="Wallpaper" class="rounded-xl" />
	<img src="wallpapers-src/Desktop - 14.png" alt="Wallpaper" class="rounded-xl" />
</div>
