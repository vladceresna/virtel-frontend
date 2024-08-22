<script lang="ts">
    import { Skeleton } from '$lib/components/ui/skeleton';
    
	import { Button } from '$lib/components/ui/button';
	import * as Card from '$lib/components/ui/card';
    
</script>

<Card.Root class="flex-auto flex flex-col">
    <Card.Header>
        <Card.Title><Skeleton class="h-4 w-1/4" /></Card.Title>
        <Card.Description><Skeleton class="h-4 w-1/3" /></Card.Description>
    </Card.Header>
    <Card.Content class="flex-1">
        <div class="rounded-2xl border bg-stone-200 px-3 py-2 font-mono dark:bg-stone-800">
            <Skeleton class="h-16 w-full" />
        </div>
    </Card.Content>
    <Card.Footer class="flex justify-between items-center">
        <Skeleton class="h-4 w-2/5" />
        <div class="flex items-center">
            <Button class="mr-2" variant="outline">
                <Skeleton class="h-4 w-8" />
            </Button>
            <Button>
                <Skeleton class="h-4 w-8" />
            </Button>
        </div>
    </Card.Footer>
</Card.Root>