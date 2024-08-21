<script lang="ts">
	import { page } from '$app/stores';
	import { onMount } from 'svelte';
	import axios from 'axios';
	import { Button } from '$lib/components/ui/button';
	import * as Card from '$lib/components/ui/card';
	import Heart from 'lucide-svelte/icons/heart';
	import Trash from 'lucide-svelte/icons/trash';
	import { mediaQuery } from 'svelte-legos';
	import * as Dialog from '$lib/components/ui/dialog/index.js';
	import * as Drawer from '$lib/components/ui/drawer/index.js';
	import { Input } from '$lib/components/ui/input/index.js';
	import { Label } from '$lib/components/ui/label/index.js';
	import { toast } from 'svelte-sonner';

	let open = false;
	const isDesktop = mediaQuery('(min-width: 768px)');

	let skill: any;

	let id = $page.params.id;
	let isLoaded = false;
	let token = '';

	onMount(async () => {
		const res = await axios
			.get('https://virtel-backend.onrender.com/skill?id=' + id)
			.then((response) => response.data)
			.catch((error) => console.error(error));
		skill = res;
		isLoaded = true;
	});

	const delSkill = async () => {
		await axios
			.delete('https://virtel-backend.onrender.com/skill?id=' + skill.id + '&adminToken=' + token)
			.then((response) => {
				if (response.status === 200) {
					toast.success('Skill deleted', {
						description: 'This is ' + skill.name
					});
				}
			})
			.catch((error) => {
				if (!(error.status === 200)) {
					toast.error('Thats undefined error', {
						description: 'This is ' + skill.name
					});
				}
			});
	};
</script>

<div class="grid grid-cols-1 gap-5 py-12 text-center">
	<h1 class="scroll-m-20 text-4xl font-extrabold tracking-tight lg:text-5xl">Virtel Skill</h1>
	<h4 class="text-muted-foreground scroll-m-20 text-xl font-semibold tracking-tight">
		Get started with ready part of Steps code. Simple. Open Source.
		<br />
		Copy & Paste in your Steps files
	</h4>
	<div class="align-center justify-center">
		<Button href="/skills" class="mr-2">See other Steps Skills</Button>
		<Button href="/docs" variant="outline">Learn More</Button>
	</div>
</div>
{#if !isLoaded}{:else}
	<Card.Root class="flex flex-auto flex-col">
		<Card.Header>
			<Card.Title>{skill.name}</Card.Title>
			<Card.Description>{skill.description}</Card.Description>
		</Card.Header>
		<Card.Content class="flex-1">
			<div
				class="whitespace-break-spaces rounded-2xl border bg-stone-200 px-3 py-2 font-mono dark:bg-stone-800"
			>
				{skill.code}
			</div>
		</Card.Content>
		<Card.Footer class="flex justify-between">
			<p class="text-muted-foreground mr-4 text-sm">{skill.authorEmail}</p>
			<div>
				<Button variant="outline">
					<Heart class="mr-2 h-4 w-4" />
					Like
				</Button>
				{#if $isDesktop}
					<Dialog.Root bind:open>
						<Dialog.Trigger asChild let:builder>
							<Button class="ml-4" variant="destructive" size="icon" builders={[builder]}>
								<Trash class="h-4 w-4" />
							</Button>
						</Dialog.Trigger>
						<Dialog.Content class="sm:max-w-[425px]">
							<Dialog.Header>
								<Dialog.Title>Your want to delete skill: {skill.name}</Dialog.Title>
								<Dialog.Description>But really you is admin?</Dialog.Description>
							</Dialog.Header>
							<form class="grid items-start gap-4">
								<div class="grid gap-2">
									<Label for="token">Enter admin token</Label>
									<Input bind:value={token} type="password" id="token" placeholder="Token" />
								</div>
								<Button type="submit" variant="destructive" on:click={delSkill}>Delete</Button>
							</form>
						</Dialog.Content>
					</Dialog.Root>
				{:else}
					<Drawer.Root bind:open>
						<Drawer.Trigger asChild let:builder>
							<Button class="ml-4" variant="destructive" size="icon" builders={[builder]}>
								<Trash class="h-4 w-4" />
							</Button>
						</Drawer.Trigger>
						<Drawer.Content>
							<Drawer.Header class="text-left">
								<Drawer.Title>Your want to delete skill</Drawer.Title>
								<Drawer.Description>But really you is admin?</Drawer.Description>
							</Drawer.Header>
							<form class="grid items-start gap-4 px-4">
								<div class="grid gap-2">
									<Label for="token">Enter admin token</Label>
									<Input bind:value={token} type="password" id="token" placeholder="Token" />
								</div>
								<Drawer.Close asChild let:builder>
									<Button
										builders={[builder]}
										type="submit"
										variant="destructive"
										on:click={delSkill}>Delete</Button
									>
								</Drawer.Close>
							</form>
						</Drawer.Content>
					</Drawer.Root>
				{/if}
			</div>
		</Card.Footer>
	</Card.Root>
{/if}
