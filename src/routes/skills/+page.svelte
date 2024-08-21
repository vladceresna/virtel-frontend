<script lang="ts">
	import axios from 'axios';
	import { onMount } from 'svelte';
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
        <Card.Root class="flex-auto flex flex-col">
			<Card.Header>
				<Card.Title>
					<Skeleton class="h-4 w-1/5" />
				</Card.Title>
				<Card.Description>
					<Skeleton class="h-4 w-full" />
				</Card.Description>
			</Card.Header>
            <Card.Content class="flex-1">
                <div class="h-full whitespace-break-spaces rounded-2xl border bg-stone-200 px-3 py-2 font-mono dark:bg-stone-800">
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

	{#each skillsList as skill(skill.id)}
		<Card.Root class="flex-auto flex flex-col">
			<Card.Header>
				<Card.Title>{skill.name}</Card.Title>
				<Card.Description>{skill.description}</Card.Description>
			</Card.Header>
			<Card.Content class="flex-1">
				<div class="max-h-[64px] rounded-2xl border bg-stone-200 px-3 py-2 font-mono dark:bg-stone-800">
					<div class="max-h-[20px] truncate overflow-hidden whitespace-break-spaces">
                        {skill.code}
                    </div>
                    {`...`}
                </div>
			</Card.Content>
			<Card.Footer class="flex justify-between">
				<p class="text-muted-foreground text-sm mr-4">{skill.authorEmail}</p>
				<div>
					<Button href={`/skills/${skill.id}`}>
                        View
					</Button>
				</div>
			</Card.Footer>
		</Card.Root>
	{/each}
</div>
