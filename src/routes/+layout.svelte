<script lang="ts">
	import '../app.css';
	import Activity from 'lucide-svelte/icons/activity';
	import ArrowUpRight from 'lucide-svelte/icons/arrow-up-right';
	import CircleUser from 'lucide-svelte/icons/circle-user';
	import CreditCard from 'lucide-svelte/icons/credit-card';
	import DollarSign from 'lucide-svelte/icons/dollar-sign';
	import Menu from 'lucide-svelte/icons/menu';
	import Package2 from 'lucide-svelte/icons/package-2';
	import Search from 'lucide-svelte/icons/search';
	import Users from 'lucide-svelte/icons/users';

	import * as Avatar from '$lib/components/ui/avatar/index.js';
	import { Badge } from '$lib/components/ui/badge/index.js';
	import { Button } from '$lib/components/ui/button/index.js';
	import * as Card from '$lib/components/ui/card/index.js';
	import * as DropdownMenu from '$lib/components/ui/dropdown-menu/index.js';
	import { Input } from '$lib/components/ui/input/index.js';
	import * as Sheet from '$lib/components/ui/sheet/index.js';
	import * as Table from '$lib/components/ui/table/index.js';
	import { ModeWatcher } from 'mode-watcher';
	import ModeToggle from '$lib/components/mode-toggle.svelte';
	import { Toaster } from '$lib/components/ui/sonner';

	let searchQuery = '';
</script>

<svelte:head>
	<title>Virtel | Universal Runtime | Your apps running truly natively everywhere</title>
	<meta
		name="description"
		content="Truly crossplatform and open source universal runtime environment - the way to new generation of Web 3.0 Internet. Virtualize your world! Download Virtel!"
	/>
	<meta name="google-site-verification" content="E6ni2ZbK0IHj84kPBZ7Tw7_9iZn_QbpW7TNQMa8IPX0" />
</svelte:head>

<ModeWatcher />
<Toaster />

<div class="flex min-h-screen w-full flex-col font-inter">
	<div
		class="relative flex flex-col items-center justify-center gap-1 border-b bg-primary p-2 px-4 backdrop-blur supports-backdrop-filter:bg-primary md:flex-row md:px-6"
	>
		<h4 class="leading-0 font-bold text-white">
			Meet Virtel 4 Alpha Larix! Rewrited to Rust. Faster. Unstable (WIP) (for testing).
		</h4>
		<Button href="/download" variant="outline" class="h-7 rounded-sm p-3">Download</Button>
	</div>
	<div class="sticky top-0 z-50">
		<header
			class="sticky flex h-16 items-center gap-4 border-b bg-background/95 px-4 backdrop-blur supports-backdrop-filter:bg-background/60 md:px-6"
		>
			<nav
				class="hidden flex-col gap-6 text-lg font-medium md:flex md:flex-row md:items-center md:gap-5 md:text-sm lg:gap-6"
			>
				<a
					href="/"
					class="notranslate mr-10 flex items-center gap-2 text-lg font-semibold md:text-base"
				>
					<img src="/favicon.png" alt="Logo" class="h-8 w-8" />
					<span>Virtel</span>
				</a>
				<a href="/" class="text-muted-foreground transition-colors hover:text-foreground"> Home </a>
				<a href="/download" class="text-muted-foreground transition-colors hover:text-foreground">
					Download
				</a>
				<a href="/docs" class="text-muted-foreground transition-colors hover:text-foreground">
					Docs
				</a>
				<a href="/skills" class="text-muted-foreground transition-colors hover:text-foreground">
					Skills
				</a>
				<a href="/about" class="text-muted-foreground transition-colors hover:text-foreground">
					About
				</a>
			</nav>
			<Sheet.Root>
				<Sheet.Trigger asChild let:builder>
					<Button variant="outline" size="icon" class="shrink-0 md:hidden" builders={[builder]}>
						<Menu class="h-5 w-5" />
						<span class="sr-only">Toggle navigation menu</span>
					</Button>
				</Sheet.Trigger>
				<Sheet.Content side="left">
					<nav class="grid gap-6 text-lg font-medium">
						<a href="##" class="notranslate flex items-center gap-2 text-lg font-semibold">
							<img src="/favicon.png" alt="Virtel Logo" class="h-8 w-8" />
							<span>Virtel</span>
						</a>
						<a href="/" class="text-muted-foreground hover:text-foreground"> Home </a>
						<a href="/download" class="text-muted-foreground hover:text-foreground"> Download </a>
						<a href="/docs" class="text-muted-foreground hover:text-foreground"> Docs </a>
						<a href="/skills" class="text-muted-foreground hover:text-foreground"> Skills </a>
						<a href="/about" class="text-muted-foreground hover:text-foreground"> About </a>
					</nav>
				</Sheet.Content>
			</Sheet.Root>
			<div class="flex w-full items-center gap-4 md:ml-auto md:gap-2 lg:gap-4">
				<form class="ml-auto flex-1 sm:flex-initial">
					<div class="relative">
						<Search class="absolute left-2.5 top-2.5 h-4 w-4 text-muted-foreground" />
						<Input
							type="search"
							placeholder="Search skills..."
							class="pl-8 sm:w-[300px] md:w-[200px] lg:w-[300px]"
							bind:value={searchQuery}
							on:keydown={(e) => {
								if (e.key === 'Enter') {
									javascript: location.href = '/skills/search/' + searchQuery;
								}
							}}
						/>
					</div>
				</form>
				<ModeToggle />

				<!-- <DropdownMenu.Root>
					<DropdownMenu.Trigger asChild let:builder>
						<Button builders={[builder]} variant="secondary" size="icon" class="rounded-full">
							<CircleUser class="h-5 w-5" />
							<span class="sr-only">Toggle user menu</span>
						</Button>
					</DropdownMenu.Trigger>
					<DropdownMenu.Content align="end">
						<DropdownMenu.Label>My Account</DropdownMenu.Label>
						<DropdownMenu.Separator />
						<DropdownMenu.Item>Settings</DropdownMenu.Item>
						<DropdownMenu.Item>Support</DropdownMenu.Item>
						<DropdownMenu.Separator />
						<DropdownMenu.Item>Logout</DropdownMenu.Item>
					</DropdownMenu.Content>
				</DropdownMenu.Root> -->
			</div>
		</header>
	</div>

	<main class="flex flex-1 flex-col gap-4 p-4 md:gap-8 md:p-8">
		<slot />
	</main>
	<footer class="p-10">
		<p class="text-sm text-muted-foreground">
			Built & designed by <a class="border-b" href="https://vladceresna.netlify.app/">vladceresna</a
			>. The source code is available on
			<a class="border-b" href="https://github.com/vladceresna/virtel">GitHub</a>.
		</p>
	</footer>
</div>

<style lang="postcss">  @reference "tailwindcss";</style>