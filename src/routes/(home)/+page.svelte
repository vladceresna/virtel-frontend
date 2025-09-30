<script lang="ts">
	import CodeView from '$lib/components/code-view.svelte';
	import Oh4 from '$lib/components/typography/oh4.svelte';
	import { Button } from '$lib/components/ui/button';
	import * as Card from '$lib/components/ui/card';
</script>

<div class="grid grid-cols-1 gap-5 py-12 text-center">
	<h1 class="scroll-m-20 text-4xl font-extrabold tracking-tight lg:text-5xl">
		Virtel. Universal Runtime
	</h1>
	<h4
		class="mx-auto max-w-4xl scroll-m-20 text-xl font-semibold tracking-tight text-muted-foreground"
	>
		Build full-fledged applications that run everywhere in a clean system.
		<br />Work and websurf in clean and vibe ecosystem.
	</h4>
	<div class="align-center flex flex-wrap justify-center gap-2">
		<Button href="/download">Download</Button>
		<Button href="/docs" variant="secondary">Docs</Button>
        <a class="dbox-donation-page-button" href="https://donorbox.org/help-buy-macbook-for-building-virtel-on-macos-and-ios?default_interval=o" style="background: rgb(46, 204, 113); color: rgb(255, 255, 255); text-decoration: none; font-family: Verdana, sans-serif; display: flex; gap: 8px; width: fit-content; font-size: 14px; border-radius: 15px; line-height: 21px; padding: 6px 16px;"><img src="https://donorbox.org/images/white_logo.svg">Donate</a>
	</div>
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
</div>
<iframe
	class="mx-10 rounded-2xl border md:h-[30rem]"
	src="https://www.youtube.com/embed/88I7QsRG0v8?si=t131GGXnhHGaqphF"
	title="YouTube video player"
	frameborder="0"
	allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
	referrerpolicy="strict-origin-when-cross-origin"
	allowfullscreen
>
</iframe>

<div class="flex flex-col place-content-center justify-center gap-10 p-10 align-middle md:flex-row">
	<Card.Root class="w-full flex-1 justify-center rounded-lg border align-middle">
		<Card.Header>
			<Card.Title class="text-3xl">Simple. Expressive. Fast.</Card.Title>
			<Card.Description class="text-xl"
				>Build beautiful, complex UIs with code that reads like a sentence. Virtel combines a
				declarative component system with a utility-first design philosophy.</Card.Description
			>
		</Card.Header>
		<Card.Content>
			<div>
				- This is not just a website. It's a real app.<br />
				- Every element is a native, high-performance component.<br />
				<br />
				<CodeView>csl write "Welcome to the next evolution of apps!";</CodeView>
			</div>
		</Card.Content>
		<Card.Footer>
			<Button href="/docs/3.x.x/devdocs/steps/screen">Explore the UI Framework</Button>
		</Card.Footer>
	</Card.Root>
	<div
		class="w-full flex-1 justify-center rounded-lg border bg-[#2A7B9B] bg-gradient-to-r from-[#2A7B9B] via-[#57C785] to-[#EDDD53] align-middle"
	></div>
</div>
<div
	class="flex flex-col place-content-center justify-center gap-10 p-10 align-middle md:flex-row-reverse"
>
	<Card.Root class="w-full flex-1 justify-center rounded-lg border align-middle">
		<Card.Header>
			<Card.Title class="text-3xl">One Platform. Any Application.</Card.Title>
			<Card.Description class="text-xl"
				>Stop choosing between a "website," a "desktop app," or a "game engine." Virtel's multi-API
				architecture lets you build anything you can imagine.</Card.Description
			>
		</Card.Header>
		<Card.Content></Card.Content>
		<Card.Footer>
			<Button href="/docs">Learn About the Architecture</Button>
		</Card.Footer>
	</Card.Root>
	<div
		class="w-full flex-1 justify-center rounded-lg border bg-[#833AB4] bg-gradient-to-r from-[#833AB4] via-[#FD1D1D] to-[#FCB045] align-middle"
	></div>
</div>
<div class="flex flex-col place-content-center justify-center gap-10 p-10 align-middle md:flex-row">
	<Card.Root class="w-full flex-1 justify-center rounded-lg border align-middle">
		<Card.Header>
			<Card.Title class="text-3xl">Get ready parts of Steps code!</Card.Title>
			<Card.Description class="text-xl"
				>Learn Steps with Skills! Open source components on our website</Card.Description
			>
		</Card.Header>
		<Card.Footer>
			<Button href="/skills">Learn more about Skills</Button>
		</Card.Footer>
	</Card.Root>
	<div class="w-full flex-1 justify-center rounded-lg border align-middle">
		<img alt="skills-preview" src="skills-preview.png" class="h-full w-full rounded-lg" />
	</div>
</div>
<video controls autoplay name="media" class="mx-10 rounded-2xl border md:h-[30rem]">
	<source src="/linux-virtel-preview.webm" type="video/webm" />
	<track kind="captions" label="English" src="/english.vtt" srclang="en" default />
</video>
<div class="flex flex-col place-content-center justify-center gap-10 p-10 align-middle md:flex-row">
	<Card.Root class="w-full flex-1 justify-center rounded-lg border align-middle">
		<Card.Header>
			<Card.Title class="text-3xl">Safe execution enviroment!</Card.Title>
			<Card.Description class="text-xl"
				>Isolated. Open Source.<br />
				Your powerful, safe and secure isolated crossplatform virtual environment
			</Card.Description>
		</Card.Header>
		<Card.Footer>
			<Button href="/docs">Learn more about Virtel</Button>
		</Card.Footer>
	</Card.Root>
	<div class="w-full flex-1 justify-center rounded-lg border align-middle">
		<img alt="virtel-preview" src="virtel-preview.png" class="h-full w-full rounded-lg" />
	</div>
</div>
