<script lang="ts">
	import { Button } from '$lib/components/ui/button';
	import Terminal from 'lucide-svelte/icons/terminal';
	import * as Alert from '$lib/components/ui/alert/index.js';
	import GitCommitHorizontal from 'lucide-svelte/icons/git-commit-horizontal';
	import MemoryStick from 'lucide-svelte/icons/memory-stick';
	import * as Avatar from '$lib/components/ui/avatar/index.js';
	import * as HoverCard from '$lib/components/ui/hover-card/index.js';
	import DownloadOption from '$lib/components/download-option.svelte';
</script>

<div class="flex flex-col flex-wrap gap-5 pt-12 text-center">
	<h1 class="scroll-m-20 text-4xl font-extrabold tracking-tight lg:text-5xl">Download Virtel</h1>

	<h2 class="scroll-m-20 pb-2 text-3xl font-semibold tracking-tight transition-colors first:mt-0">
		Maple 3.4.0 Beta
	</h2>
	<h4 class="scroll-m-20 text-xl font-semibold tracking-tight text-muted-foreground">
		Virtel is crossplatform, so you can use apps, built for Virtel everywhere.
		<br />
		Truly crossplatform and open source universal runtime.
	</h4>
</div>

<div class="flex flex-col gap-5 md:flex-row">
	<DownloadOption
		url="https://github.com/vladceresna/virtel/releases/download/3.4.0-beta/com.vladceresna.virtel-3.4.0-android.apk"
		os="Android"
		format="APK"
		version="3.4.0"
		weight="34 MB"
	/>
	<DownloadOption
		url="https://github.com/vladceresna/virtel/releases/download/3.4.0-beta/com.vladceresna.virtel-3.4.0-windows.exe"
		os="Windows"
		format="EXE"
		version="3.4.0"
		weight="77 MB"
	/>
	<DownloadOption
		url="https://github.com/vladceresna/virtel/releases/download/3.4.0-beta/com.vladceresna.virtel-3.4.0-linux.tar.xz"
		os="Linux"
		format="TAR.XZ"
		version="3.4.0"
		weight="78 MB"
	/>
</div>

<Alert.Root>
	<Terminal class="h-4 w-4" />
	<Alert.Title>Virtel now is in Alpha version</Alert.Title>
	<Alert.Description>
		Please use this with caution. This is OpenSource project with GNU GPLv3.0 License, and we
		don&apos;t offer any guaranties of normal work this software. But you are welcome to test
		Virtel. If you see bugs, feel free to contact me by email or create a problem on the github
		repository
	</Alert.Description>
</Alert.Root>

<div class="flex flex-col flex-wrap gap-5 pt-12 text-center">
	<h2 class="scroll-m-20 pb-2 text-3xl font-semibold tracking-tight transition-colors first:mt-0">
		Larix 4.0.0 Alpha
	</h2>
	<h4 class="scroll-m-20 text-xl font-semibold tracking-tight text-muted-foreground">
		Rewritten to Rust! New architecture, better performance, new features.
		<br />
		Very unstable version for testing purposes only.
	</h4>
</div>

<div class="flex flex-col gap-5 md:flex-row">
	<DownloadOption
		url="https://github.com/vladceresna/virtel/releases/download/3.4.0-beta/com.vladceresna.virtel-3.4.0-windows.exe"
		os="Windows"
		format="EXE"
		version="4.0.0"
		weight="77 MB"
	/>
	<DownloadOption
		url="https://github.com/vladceresna/virtel/releases/download/3.4.0-beta/com.vladceresna.virtel-3.4.0-linux.deb"
		os="Linux"
		format="DEB"
		version="4.0.0"
		weight="78 MB"
	/>
	<DownloadOption
		url="https://github.com/vladceresna/virtel/releases/download/3.4.0-beta/com.vladceresna.virtel-3.4.0-android.apk"
		os="Android"
		format="APK"
		version="4.0.0"
		weight="34 MB"
	/>
</div>

<div class="flex flex-col flex-wrap gap-5 text-center">
	<h4 class="scroll-m-20 text-xl font-semibold tracking-tight text-muted-foreground">
		Previous Versions History.<br /> Deprecated. Unsupported
	</h4>
	<div>
		<Button href="https://github.com/vladceresna/virtel/releases" variant="outline" class="m-1">
			See releases
		</Button>
	</div>
</div>
