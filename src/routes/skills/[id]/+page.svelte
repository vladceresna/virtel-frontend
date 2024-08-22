<script lang="ts">
	import { page } from '$app/stores';
	import { onMount, onDestroy } from 'svelte';
	import axios from 'axios';
	import { Button } from '$lib/components/ui/button';
	import * as Card from '$lib/components/ui/card';
	import Heart from 'lucide-svelte/icons/heart';
	import Trash from 'lucide-svelte/icons/trash';
	import { mediaQuery } from 'svelte-legos';
	import * as Dialog from '$lib/components/ui/dialog/index.js';
	import * as Drawer from '$lib/components/ui/drawer/index.js';
    import { Skeleton } from '$lib/components/ui/skeleton';
    
    import { Input } from "$lib/components/ui/input/index.js";
    import { Label } from "$lib/components/ui/label/index.js";
    import { Textarea } from "$lib/components/ui/textarea/index.js";
    import { toast } from "svelte-sonner";

	let open = false;
	const isDesktop = mediaQuery('(min-width: 768px)');

	let skill: any;
    let comments: any = [];

	let id = $page.params.id;
	let isLoaded = true;
	let token = '';
    
    const updateComments = async () => {
        const res = await axios
            .get('https://virtel-backend.onrender.com/comments?skillId=' + skill.id)
			.then((response) => response.data)
			.catch((error) => console.error(error));
        comments = res;
    }
    const updateSkill = async () => {
        const res = await axios
			.get('https://virtel-backend.onrender.com/skill?id=' + id)
			.then((response) => response.data)
			.catch((error) => console.error(error));
        skill = res;
    }
    let intervalId:any;
	onMount(async () => {
        await updateSkill();
        await updateComments();
        isLoaded = false;
        intervalId = setInterval(async () => {
            await updateComments();
        }, 5 * 1000);
	});
    onDestroy(()=>{
        clearInterval(intervalId);
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


    let text = "";
    let authorEmail = "";

    let creation = false;

    const createComment = async () => {
        if (text.length < 8 || authorEmail.length < 5) {
            toast.warning("Comment not sent", {
                description: "Please, add more texts"
            });
        } else {
            let skillId = id;
            creation = true;
            const res = await axios.post(
                "https://virtel-backend.onrender.com/comment",{
                    skillId,
                    text,
                    authorEmail
                }
            )
            .then(response => {
                text = "";
                creation = false;
                updateComments();
            })
            .catch(error => {
                if(error.response.status === 200) {
                    console.error(error)
                } else {
                    toast.warning("Skill may be not created", {
                        description: "Undefined error. Please, try again"
                    });
                    console.error(error)
                }
                creation = false;
            });
            
        }
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
{#if isLoaded}
<Card.Root class="flex flex-auto flex-col">
    <Card.Header>
        <Card.Title><Skeleton class="h-4 w-1/4" /></Card.Title>
        <Card.Description><Skeleton class="h-4 w-1/3" /></Card.Description>
    </Card.Header>
    <Card.Content class="flex-1">
        <div class="whitespace-break-spaces rounded-2xl border bg-stone-200 px-3 py-2 font-mono dark:bg-stone-800">
            <Skeleton class="h-32 w-full" />
        </div>
    </Card.Content>
    <Card.Footer class="flex justify-between">
        <Skeleton class="h-4 w-2/5" />
        <div>
            <Button class="mr-2" variant="outline">
                <Skeleton class="h-4 w-8" />
            </Button>
            <Button class="ml-4" variant="destructive" size="icon">
                <Skeleton class="h-4 w-4" />
            </Button>
            
        </div>
    </Card.Footer>
</Card.Root>
<div class="flex flex-col">
    <Card.Root class="my-2 mr-auto">
        <Card.Header class="py-2">
            <Card.Description><Skeleton class="h-4 w-2/5" /></Card.Description>
            <Card.Title class="text-md"><Skeleton class="h-10 w-4/5" /></Card.Title>
        </Card.Header>
    </Card.Root>
    <Card.Root class="my-2 mr-auto">
        <Card.Header class="py-2">
            <Card.Description><Skeleton class="h-4 w-2/5" /></Card.Description>
            <Card.Title class="text-md"><Skeleton class="h-10 w-4/5" /></Card.Title>
        </Card.Header>
    </Card.Root>
</div>
    <Card.Root class="text-left w-full">
        <Card.Content class="mt-6">
            <div class="grid w-full items-center gap-4">
                <div class="flex flex-col space-y-1.5">
                    <Skeleton class="h-16 w-full" />
                </div>
            </div>
        </Card.Content>
        <Card.Footer >
            <div class="flex flex-row w-full">
                <Skeleton class="h-16 w-full flex-1 mr-2" />
                <Button>
                    <Skeleton class="h-4 h-8" />
                </Button>
            </div>
        </Card.Footer>
    </Card.Root>
{:else}
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
				<Button class="mr-2" variant="outline" on:click={async ()=> {
                    let item = localStorage.getItem("liked");
                    
                    if (item) {
                        let arr = JSON.parse(item);
                        if (arr.includes(skill.id)) {
                            
                        } else {
                            arr.push(skill.id);
                            const res = await axios
                                .post("https://virtel-backend.onrender.com/skill/like?id="+skill.id)
                                .then((response) => response.data)
                                .catch((error) => console.error(error));
                            skill = res;
                        }
                        localStorage.setItem("liked", JSON.stringify(arr));
                    } else {
                        localStorage.setItem("liked", JSON.stringify([skill.id]));
                        const res = await axios
                                .post("https://virtel-backend.onrender.com/skill/like?id="+skill.id)
                                .then((response) => response.data)
                                .catch((error) => console.error(error));
                        skill = res;
                    }
                }}>
                    <Heart class="mr-2 h-4 w-4" />
                    Like: {skill.likes}
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
    <div class="flex flex-col">
        {#each comments as comment(comment.id)}
        <Card.Root class="my-2 mr-auto">
            <Card.Header class="py-2">
                <Card.Description>{comment.authorEmail}</Card.Description>
                <Card.Title class="text-md">{comment.text}</Card.Title>
            </Card.Header>
        </Card.Root>
        {/each}
    </div>
        <Card.Root class="text-left w-full">
            <Card.Content class="mt-6">
            <div class="grid w-full items-center gap-4">
                    <div class="flex flex-col space-y-1.5">
                        <Textarea bind:value={text} id="text" placeholder='Comment it...' />
                    </div>
                </div>
            </Card.Content>
            <Card.Footer >
                <div class="flex flex-row w-full">
                    <Input bind:value={authorEmail} id="authorEmail" placeholder="youremail@email.com"
                        class="flex-1 mr-2 w-full" />
                    <Button on:click={createComment} bind:disabled={creation}>
                        Send
                    </Button>
                </div>
            </Card.Footer>
        </Card.Root>
    
{/if}



