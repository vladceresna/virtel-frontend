<script lang="ts">
    import { Button } from "$lib/components/ui/button";
    import * as Card from '$lib/components/ui/card';
</script>

<div class="text-center grid gap-5 grid-cols-1 py-12 ">
    <h1 class="scroll-m-20 text-4xl font-extrabold tracking-tight lg:text-5xl">
      Welcome to Virtel Project
    </h1>
    <h4 class="text-muted-foreground scroll-m-20 text-xl font-semibold tracking-tight">
        New reality. Speed. Secure. Cross platform. Simple. Open Source.
        <br>
        The idea of describing only what affects
        <br>
        Your best virtual enviroment
    </h4>
    <div class="justify-center align-center">
        <Button href="/docs/installing" class="mr-2">Get Started</Button>
        <Button href="/docs" variant="outline">Learn More</Button>
    </div>
    
</div>
<div class="flex md:flex-row flex-col justify-center align-middle place-content-center gap-10 p-10">
    <Card.Root class="flex-1 w-full justify-center align-middle border rounded-lg">
        <Card.Header>
            <Card.Title class="text-3xl">Simplicity as you like)</Card.Title>
            <Card.Description class="text-xl">It's so easy!</Card.Description>
        </Card.Header>
        <Card.Content>
            <div class="my-5 whitespace-break-spaces rounded-2xl border bg-stone-200 px-3 py-2 font-mono dark:bg-stone-800">
                csl write "Hello world!";
            </div>
        </Card.Content>
        <Card.Footer>
            <Button href="/docs/modules">Learn more about Steps</Button>
        </Card.Footer>
    </Card.Root>
    <div class="flex-1 w-full justify-center align-middle border rounded-lg">
        <img src="steps-code.png" class="rounded-lg h-full w-full"/>
    </div>

</div>
<div class="flex md:flex-row flex-col justify-center align-middle place-content-center gap-10 p-10">
    <Card.Root class="flex-1 w-full justify-center align-middle border rounded-lg">
        <Card.Header>
            <Card.Title class="text-3xl">Ready parts of Steps code)</Card.Title>
            <Card.Description class="text-xl">Learn Steps with Skills! Simple. Open Source.</Card.Description>
        </Card.Header>
        <Card.Footer>
            <Button href="/skills">Learn more about Skills</Button>
        </Card.Footer>
    </Card.Root>
    <div class="flex-1 w-full justify-center align-middle border rounded-lg">
        <img src="skills-preview.png" class="rounded-lg h-full w-full"/>
    </div>

</div>
<div class="flex md:flex-row flex-col justify-center align-middle place-content-center gap-10 p-10">
    <Card.Root class="flex-1 w-full justify-center align-middle border rounded-lg">
        <Card.Header>
            <Card.Title class="text-3xl">Safe execution enviroment)</Card.Title>
            <Card.Description class="text-xl">Isolated. Open Source.<br>
                Your powerful, safe and secure isolated crossplatform virtual environment
            </Card.Description>
        </Card.Header>
        <Card.Footer>
            <Button href="/docs">Learn more about Virtel</Button>
        </Card.Footer>
    </Card.Root>
    <div class="flex-1 w-full justify-center align-middle border rounded-lg">
        <img src="virtel-preview.png" class="rounded-lg h-full w-full"/>
    </div>

</div>