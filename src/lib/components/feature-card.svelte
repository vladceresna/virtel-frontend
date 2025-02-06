<script lang="ts">
	import Oh4 from "./typography/oh4.svelte";
	import { Card, CardContent, CardHeader } from "./ui/card";




    export let title;
    export let description;
</script>

<Card class="flex-[1_1_200px]">
	<CardHeader class="pt-0"><Oh4>
		{title}
	</Oh4></CardHeader>
	<CardContent>
		{description}
	</CardContent>
</Card>