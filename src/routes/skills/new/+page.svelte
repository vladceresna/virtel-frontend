<script lang="ts">
    import axios from "axios";
    import { onMount } from 'svelte';
    import { Button } from "$lib/components/ui/button";
    import * as Card from "$lib/components/ui/card";
    import { Input } from "$lib/components/ui/input/index.js";
    import { Label } from "$lib/components/ui/label/index.js";
    import { Textarea } from "$lib/components/ui/textarea/index.js";
    import { toast } from "svelte-sonner";
    import { redirect } from '@sveltejs/kit';

    let name = "";
    let description = "";
    let code = "";
    let authorEmail = "";

    let creation = false;

    const createSkill = async () => {
        if (name.length < 3 || description.length < 20 || code.length < 8 || authorEmail.length < 5) {
            console.log(name+" "+description+" "+code+" "+authorEmail);
            console.log(name.length+" "+description.length+" "+code.length+" "+authorEmail.length);
            toast.warning("Skill not created", {
                description: "Please, add more info about your Skill"
            });
        } else {
            creation = true;
            const res = await axios.post(
                "https://virtel-backend.onrender.com/skill",{
                    name,
                    description,
                    code,
                    authorEmail
                }
            )
            .then(response => {
                toast.success("Skill created", {
                    description: "This is "+name
                });
                name = "";
                description = "";
                code = "";
                authorEmail = "";
                creation = false;
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
    
    $:console.log(name+" "+description+" "+code+" "+authorEmail);

</script>


<div class="text-center grid gap-5 grid-cols-1 py-12">
    <h1 class="scroll-m-20 text-4xl font-extrabold tracking-tight lg:text-5xl">
      Virtel Skills
    </h1>
    <h4 class="text-muted-foreground scroll-m-20 text-xl font-semibold tracking-tight">
        Create your own Steps Skill. Simple. Open Source.
    </h4>

    <div class="md:px-[100px] lg:px-[200px] xl:px-[400px] 2xl:px-[800px]">
        <Card.Root class="text-left w-full">
            <Card.Header>
            <Card.Title>Create new skill</Card.Title>
            <Card.Description>Describe it and add your code and email. It all!)</Card.Description>
            </Card.Header>
            <Card.Content>
            <form>
                <div class="grid w-full items-center gap-4">
                    <div class="flex flex-col space-y-1.5">
                        <Label for="name">Name</Label>
                        <Input bind:value={name} id="name" placeholder="Name of your code" />
                    </div>
                    <div class="flex flex-col space-y-1.5">
                        <Label for="description">Description</Label>
                        <Input bind:value={description} id="description" placeholder="What your code do?" />
                    </div>
                    <div class="flex flex-col space-y-1.5">
                        <Label for="code">Code</Label>
                        <Textarea bind:value={code} id="code" placeholder='sys out "Hello world!"' class="whitespace-break-spaces break-words" />
                    </div>
                    <div class="flex flex-col space-y-1.5">
                        <Label for="authorEmail">Email</Label>
                        <Input bind:value={authorEmail} id="authorEmail" placeholder="youremail@email.com" />
                    </div>
                </div>
            </form>
            </Card.Content>
            <Card.Footer class="flex justify-between">
                <p class="text-muted-foreground text-sm">
                    {name}{" "}
                    {#if name.length > 0 && authorEmail.length > 0}
                    :
                    {/if}
                    {" "}{authorEmail}
                </p>
                <Button on:click={createSkill} bind:disabled={creation}>
                    Create
                </Button>
            </Card.Footer>
        </Card.Root>
    </div>
</div>