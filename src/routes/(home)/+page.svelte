<script lang="ts">
    import { Button } from "$lib/components/ui/button";
    import * as Card from '$lib/components/ui/card';
</script>

<div class="text-center grid gap-5 grid-cols-1 py-12 ">
    <h1 class="scroll-m-20 text-4xl font-extrabold tracking-tight lg:text-5xl">
      Welcome to Virtel Project
    </h1>
    <p class="w-full flex justify-center gap-1">
        <img src="https://camo.githubusercontent.com/8e31ce4df532515ac9a1c0418c03b7793471ff9e282dfc28e6473b65334fbac9/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f727573742d2532333030303030302e7376673f7374796c653d666f722d7468652d6261646765266c6f676f3d72757374266c6f676f436f6c6f723d7768697465">
        <img src="https://camo.githubusercontent.com/c292429e232884db22e86c2ea2ea7695bc49dc4ae13344003a95879eeb7425d8/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f57696e646f77732d3030373844363f7374796c653d666f722d7468652d6261646765266c6f676f3d77696e646f7773266c6f676f436f6c6f723d7768697465">
        <img src="https://camo.githubusercontent.com/02ad0a4530e3be8b708a7793a641add82aa4df8dd9987cc50d5c38ba609ea382/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f6d61632532306f732d3030303030303f7374796c653d666f722d7468652d6261646765266c6f676f3d6d61636f73266c6f676f436f6c6f723d463046304630">
        <img src="https://camo.githubusercontent.com/7eefb2ba052806d8a9ce69863c2eeb3b03cd5935ead7bd2e9245ae2e705a1adf/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f4c696e75782d4643433632343f7374796c653d666f722d7468652d6261646765266c6f676f3d6c696e7578266c6f676f436f6c6f723d626c61636b">
        <img src="https://camo.githubusercontent.com/4fc6f0767c98026d209ad89ee9f04ebcde55eb232393fa232a4df01d50f2ef00/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f694f532d3030303030303f7374796c653d666f722d7468652d6261646765266c6f676f3d696f73266c6f676f436f6c6f723d7768697465">
        <img src="https://camo.githubusercontent.com/214d3c29a72c22fe498ea0f7d6d2cdbde23331791f97be24d817338c699084b5/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f416e64726f69642d3344444338343f7374796c653d666f722d7468652d6261646765266c6f676f3d616e64726f6964266c6f676f436f6c6f723d7768697465">
        <img src="https://camo.githubusercontent.com/bb2913a71d7513370db93a85a313af402b1a41e3ceccb2a87f46847601c05cda/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f446973636f72642d2532333538363546322e7376673f7374796c653d666f722d7468652d6261646765266c6f676f3d646973636f7264266c6f676f436f6c6f723d7768697465">
    </p>
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
                sys out "Hello world!";
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