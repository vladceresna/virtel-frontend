<script lang="ts">
	import type { HTMLAttributes } from "svelte/elements";
	import { cn } from "$lib/utils.js";

	type $$Props = HTMLAttributes<HTMLDivElement>;

	let className: $$Props["class"] = undefined;
	export { className as class };
</script>

<div
	class={cn("mt-8 scroll-m-20 text-2xl font-semibold tracking-tight", className)}
	{...$$restProps}
>
	<slot />
</div>
