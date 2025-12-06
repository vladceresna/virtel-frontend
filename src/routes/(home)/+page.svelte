<script lang="ts">
	import CodeView from '$lib/components/code-view.svelte';
	import Oh4 from '$lib/components/typography/oh4.svelte';
	import { Button } from '$lib/components/ui/button';
	import * as Card from '$lib/components/ui/card';
</script>

<div class="m-auto h-fit w-8/12" aria-disabled="true">
	<section aria-label="hero" class="grid grid-cols-2 grid-rows-1 gap-10">
		<div class="flex flex-col gap-5" aria-disabled="true">
			<Card.Card class="h-full">
				<Card.CardContent class="relative flex h-full flex-col gap-5">
					<div class="flex flex-col gap-5 p-6">
						<h1
							class="scroll-m-20 bg-linear-to-b from-primary to-muted-foreground/70 bg-clip-text text-4xl font-extrabold tracking-tight text-transparent lg:text-5xl"
						>
							Virtel - Universal Box for Apps
						</h1>
						<h4 class=" scroll-m-20 text-xl font-semibold tracking-tight text-muted-foreground">
							Build full-fledged applications that run everywhere in a clean system.
							<br />Work and websurf in really clean and vibe ecosystem.
						</h4>
						<div class="flex flex-wrap gap-2">
							<Button href="/download" size="lg">Download</Button>
							<Button href="/docs" variant="secondary">Docs</Button>
						</div>
					</div>

					<Card.CardFooter class="absolute bottom-0 -ml-6 flex w-full flex-col items-start gap-5">
						<div class="flex flex-wrap gap-2">
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
					</Card.CardFooter>
				</Card.CardContent>
			</Card.Card>
		</div>
		<div class="h-full">
			<iframe
				class="mx-10 w-full rounded-2xl border md:h-[30rem]"
				src="https://www.youtube.com/embed/88I7QsRG0v8?si=t131GGXnhHGaqphF"
				title="YouTube video player"
				frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
				referrerpolicy="strict-origin-when-cross-origin"
				allowfullscreen
			>
			</iframe>
		</div>
	</section>
</div>

<hr />

<div class="grid grid-cols-1 gap-5 py-12 text-center">
	<h1 class="scroll-m-20 text-4xl font-extrabold tracking-tight lg:text-5xl">
		Apps shouldn’t weigh 300 MB in 2025 😤
	</h1>
	<h4
		class="mx-auto max-w-4xl scroll-m-20 text-xl font-semibold tracking-tight text-muted-foreground"
	>
		Virtel lets you build or use real apps that are 20-50 KB and run literally everywhere. No
		"node_modules". No battery drain. No bullshit.
	</h4>
	<div class="align-center flex flex-wrap justify-center gap-2">
		<Button size="lg" href="/download">Download Alpha →</Button>
		<Button size="lg" variant="secondary" href="https://t.me/virtelx">Join the vibe</Button>
	</div>
</div>

<hr />

<section class="px-6 py-20">
	<div class="mx-auto grid max-w-7xl items-center gap-12 md:grid-cols-2">
		<div>
			<h3 class="text-4xl font-bold">Finally… UI code that doesn’t hurt your brain 🤯</h3>
			<p class="mt-6 text-xl leading-relaxed text-muted-foreground">
				Write beautiful, complex screens in plain sentences.<br />
				Zero useEffect-hell, zero 2 GB node_modules, zero pain.
			</p>
			<CodeView>csl write "Welcome to sanity 👋";</CodeView>
			<Button class="mt-6" href="/docs/3.x.x/devdocs/steps/screen">Explore Steps UI →</Button>
		</div>
		<div class="overflow-hidden rounded-2xl border shadow-2xl">
			<img src="/simplicity.png" alt="Steps UI preview" class="w-full" />
		</div>
	</div>
</section>

<hr />

<section class="py-20">
	<div class="mx-auto grid max-w-7xl items-center gap-12 px-6 md:grid-cols-2">
		<div class="order-2 overflow-hidden rounded-2xl border shadow-2xl md:order-1">
			<img src="/crossplatform.png" alt="Same app on phone & desktop" />
		</div>
		<div class="order-1 md:order-2">
			<h3 class="text-4xl font-bold">One file. Every device. 🚀</h3>
			<p class="mt-6 text-xl leading-relaxed text-muted-foreground">
				Phone, Tablet, Laptop, Old PC - same 30 KB file just works.<br />
				No “Android version”, no “Windows build”, no excuses.
			</p>
			<Button class="mt-6" href="/docs/architecture">How it actually works</Button>
		</div>
	</div>
</section>

<hr />

<section class="py-20">
	<div class="mx-auto grid max-w-7xl items-center gap-12 px-6 md:grid-cols-2">
		<div>
			<h3 class="text-4xl font-bold">Steal code like a pro 🧩</h3>
			<p class="mt-6 text-xl leading-relaxed text-muted-foreground">
				Skills = 100% open-source ready components.<br />
				Copy 5 lines → instant chat, timer, meme generator, todo, etc.
			</p>
			<Button class="mt-6" href="/skills">Browse all Skills →</Button>
		</div>
		<div class="overflow-hidden rounded-2xl border">
			<img src="/skills-preview.png" alt="Skills gallery" class="w-full" />
		</div>
	</div>
</section>
<video controls autoplay class="mx-10 rounded-2xl border md:h-120">
	<source src="/linux-virtel-preview.webm" type="video/webm" />
	<track kind="captions" label="English" src="/english.vtt" srclang="en" default />
</video>

<section class="py-20">
	<div class="mx-auto grid max-w-7xl items-center gap-12 px-6 md:grid-cols-2">
		<div class="overflow-hidden rounded-2xl border shadow-2xl">
			<img src="/sandbox.png" alt="Sandbox illustration" />
		</div>
		<div>
			<h3 class="text-4xl font-bold">Apps you can actually trust 🛡</h3>
			<p class="mt-6 text-lg leading-relaxed text-muted-foreground">
				Every app runs in its own sandbox.<br />
				• Open source<br />
				• No creepy trackers<br />
				• Can’t touch your files without permission<br />
				• No hidden ads ever
			</p>
			<Button class="mt-6" href="/docs/">Security details</Button>
		</div>
	</div>
</section>

<div class="rounded-[4rem] bg-gradient-to-t from-background to-muted/30 py-32 text-center">
	<h2 class="text-5xl font-black md:text-7xl">
		A 17-year-old just cooked something<br />
		corporations are scared of 🤯
	</h2>
	<p class="mt-8 text-2xl text-muted-foreground">Be part of it before it’s mainstream.</p>
	<div class="mt-10 flex flex-wrap justify-center gap-6">
		<Button size="lg" class="px-8 text-lg" href="/download">Download Virtel Alpha</Button>
		<Button size="lg" variant="outline" class="px-8 text-lg" href="https://t.me/virtelx">
			Join 10+ early believers 🚀
		</Button>
	</div>
</div>
