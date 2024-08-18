<svelte:head>
	<title>Virtel Project | Full Control</title>
	<meta name="description" content="Fastest, the most secure and safe virtual enviroment. We call it the operating system. Best suited for mathematical calculations, home use, development or deployment of applications and servers, though can be used for any purpose.">
	<meta name="google-site-verification" content="E6ni2ZbK0IHj84kPBZ7Tw7_9iZn_QbpW7TNQMa8IPX0" />
</svelte:head>

<script lang="ts">
	import '../app.css';
	import Activity from "lucide-svelte/icons/activity";
	import ArrowUpRight from "lucide-svelte/icons/arrow-up-right";
	import CircleUser from "lucide-svelte/icons/circle-user";
	import CreditCard from "lucide-svelte/icons/credit-card";
	import DollarSign from "lucide-svelte/icons/dollar-sign";
	import Menu from "lucide-svelte/icons/menu";
	import Package2 from "lucide-svelte/icons/package-2";
	import Search from "lucide-svelte/icons/search";
	import Users from "lucide-svelte/icons/users";
  
	import * as Avatar from "$lib/components/ui/avatar/index.js";
	import { Badge } from "$lib/components/ui/badge/index.js";
	import { Button } from "$lib/components/ui/button/index.js";
	import * as Card from "$lib/components/ui/card/index.js";
	import * as DropdownMenu from "$lib/components/ui/dropdown-menu/index.js";
	import { Input } from "$lib/components/ui/input/index.js";
	import * as Sheet from "$lib/components/ui/sheet/index.js";
	import * as Table from "$lib/components/ui/table/index.js";
	import { ModeWatcher } from "mode-watcher";
	import ModeToggle from "$lib/components/mode-toggle.svelte";
	import { Toaster } from "$lib/components/ui/sonner";

</script>

  <ModeWatcher />
  <Toaster />

  <div class="flex min-h-screen w-full flex-col">
	<header class="bg-background sticky top-0 flex h-16 items-center gap-4 border-b px-4 md:px-6 bg-background/95 supports-[backdrop-filter]:bg-background/60 z-50 backdrop-blur">
	  <nav
		class="hidden flex-col gap-6 text-lg font-medium md:flex md:flex-row md:items-center md:gap-5 md:text-sm lg:gap-6"
	  >
		<a href="/" class="flex items-center gap-2 text-lg font-semibold md:text-base mr-10">
		  <img src="/favicon.png" alt="Logo" class="h-8 w-8" />
		  <span>Virtel</span>
		</a>
		<a href="/" class="text-muted-foreground hover:text-foreground transition-colors">
		  Home
		</a>
		<a href="/download" class="text-muted-foreground hover:text-foreground transition-colors">
		  Download
		</a>
		<a href="/docs" class="text-muted-foreground hover:text-foreground transition-colors">
		  Docs
		</a>
		<a href="/skills" class="text-muted-foreground hover:text-foreground transition-colors">
		  Skills
		</a>
		<a href="/about" class="text-muted-foreground hover:text-foreground transition-colors">
		  About
		</a>
	  </nav>
	  <Sheet.Root>
		<Sheet.Trigger asChild let:builder>
		  <Button
			variant="outline"
			size="icon"
			class="shrink-0 md:hidden"
			builders={[builder]}
		  >
			<Menu class="h-5 w-5" />
			<span class="sr-only">Toggle navigation menu</span>
		  </Button>
		</Sheet.Trigger>
		<Sheet.Content side="left">
		  <nav class="grid gap-6 text-lg font-medium">
			<a href="##" class="flex items-center gap-2 text-lg font-semibold">
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
			<Search class="text-muted-foreground absolute left-2.5 top-2.5 h-4 w-4" />
			<Input
			  type="search"
			  placeholder="Search skills..."
			  class="pl-8 sm:w-[300px] md:w-[200px] lg:w-[300px]"
			/>
		  </div>
		</form>
		<ModeToggle/>
		<DropdownMenu.Root>
		  <DropdownMenu.Trigger asChild let:builder>
			<Button
			  builders={[builder]}
			  variant="secondary"
			  size="icon"
			  class="rounded-full"
			>
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
		</DropdownMenu.Root>
	  </div>
	</header>
	<main class="flex flex-1 flex-col gap-4 p-4 md:gap-8 md:p-8">
		<slot/>
	</main>
  </div>
  