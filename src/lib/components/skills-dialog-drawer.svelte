<script lang="ts">
    import { mediaQuery } from 'svelte-legos';
	import * as Dialog from '$lib/components/ui/dialog/index.js';
	import * as Drawer from '$lib/components/ui/drawer/index.js';
	import { Input } from '$lib/components/ui/input/index.js';
	import { Label } from '$lib/components/ui/label/index.js';
	import { toast } from 'svelte-sonner';
	import { Button } from '$lib/components/ui/button';
	import axios from 'axios';
	import Trash from 'lucide-svelte/icons/trash';

	let token = '';
	let skill:any;
	
	let open = false;
	const isDesktop = mediaQuery('(min-width: 768px)');
</script>


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