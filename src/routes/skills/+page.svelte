<script lang="ts">
	import axios from 'axios';
	import { onMount } from 'svelte';
	import { Button } from '$lib/components/ui/button';
	import * as Card from '$lib/components/ui/card';
	import Heart from 'lucide-svelte/icons/heart';
	import Trash from 'lucide-svelte/icons/trash';
	import Copy from 'lucide-svelte/icons/copy';
	import { mediaQuery } from 'svelte-legos';
	import * as Dialog from '$lib/components/ui/dialog/index.js';
	import * as Drawer from '$lib/components/ui/drawer/index.js';
	import { Input } from '$lib/components/ui/input/index.js';
	import { Label } from '$lib/components/ui/label/index.js';
	import { toast } from 'svelte-sonner';
	import { Skeleton } from '$lib/components/ui/skeleton';

	let open = false;
	const isDesktop = mediaQuery('(min-width: 768px)');

	let skillsList: any = [];

    let isLoaded = false;

	onMount(async () => {
		const res = await axios
			.get('https://virtel-backend.onrender.com/skills/all')
			.then((response) => response.data)
			.catch((error) => console.error(error));
		skillsList = res;
        console.log(skillsList);
        isLoaded = true;
	});

	let token = '';
</script>

<div class="grid grid-cols-1 gap-5 py-12 text-center">
	<h1 class="scroll-m-20 text-4xl font-extrabold tracking-tight lg:text-5xl">Virtel Skills</h1>
	<h4 class="text-muted-foreground scroll-m-20 text-xl font-semibold tracking-tight">
		Get started with ready parts of Steps code. Simple. Open Source.
		<br />
		Copy & Paste in your Steps files
	</h4>
	<div class="align-center justify-center">
		<Button href="/skills/new" class="mr-2">Add Your Own</Button>
		<Button href="/docs" variant="outline">Learn More</Button>
	</div>
</div>

<div class="flex flex-wrap gap-4 w-full">
	{#if !isLoaded}
		<Card.Root class="flex-auto">
			<Card.Header>
				<Card.Title>
					<Skeleton class="h-4 w-1/5" />
				</Card.Title>
				<Card.Description>
					<Skeleton class="h-4 w-full" />
				</Card.Description>
			</Card.Header>
			<Card.Content>
				<div class="rounded-2xl border bg-stone-200 px-3 py-2 font-mono dark:bg-stone-800">
					<Skeleton class="h-16 w-full" />
				</div>
			</Card.Content>
			<Card.Footer class="flex justify-between">
				<Skeleton class="h-4 w-2/5" />
				<div>
					<Button variant="outline" size="icon">
						<Skeleton class="h-4 w-4" />
					</Button>
					<Button class="ml-4" variant="destructive" size="icon">
						<Skeleton class="h-4 w-4" />
					</Button>
				</div>
			</Card.Footer>
		</Card.Root>
	{/if}

	{#each skillsList as skill}
		<Card.Root class="flex-auto">
			<Card.Header>
				<Card.Title>{skill.name}</Card.Title>
				<Card.Description>{skill.description}</Card.Description>
			</Card.Header>
			<Card.Content>
				<div class="whitespace-break-spaces rounded-2xl border bg-stone-200 px-3 py-2 font-mono dark:bg-stone-800">
					<code>
                        {skill.code}
                    </code>
                </div>
			</Card.Content>
			<Card.Footer class="flex justify-between">
				<p class="text-muted-foreground text-sm mr-4">{skill.authorEmail}</p>
				<div>
					<Button variant="outline" size="icon" on:click={() => {}}>
						<Heart class="h-4 w-4" />
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
									<Dialog.Title>Your want to delete skill</Dialog.Title>
									<Dialog.Description>But really you is admin?</Dialog.Description>
								</Dialog.Header>
								<form class="grid items-start gap-4">
									<div class="grid gap-2">
										<Label for="token">Enter admin token</Label>
										<Input bind:value={token} type="password" id="token" placeholder="Token" />
									</div>
									<Button
										type="submit"
										variant="destructive"
										on:click={async () => {
											await axios
												.delete(
													'https://virtel-backend.onrender.com/skill?id=' +
														skill.id +
														'&adminToken=' +
														token
												)
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
										}}>Delete</Button
									>
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
											on:click={async () => {
												await axios
													.delete(
														'https://virtel-backend.onrender.com/skill?id=' +
															skill.id +
															'&adminToken=' +
															token
													)
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
											}}>Delete</Button
										>
									</Drawer.Close>
								</form>
							</Drawer.Content>
						</Drawer.Root>
					{/if}
				</div>
			</Card.Footer>
		</Card.Root>
	{/each}
</div>
