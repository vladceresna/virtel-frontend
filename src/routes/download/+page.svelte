<script lang="ts">
  import { Button } from "$lib/components/ui/button";
  import Terminal from "lucide-svelte/icons/terminal";
  import * as Alert from "$lib/components/ui/alert/index.js";
  import GitCommitHorizontal from "lucide-svelte/icons/git-commit-horizontal";
  import MemoryStick from "lucide-svelte/icons/memory-stick";
  import * as Avatar from "$lib/components/ui/avatar/index.js";
  import * as HoverCard from "$lib/components/ui/hover-card/index.js";
	import DownloadOption from "$lib/components/download-option.svelte";
</script>

<div class="text-center gap-5 pt-12 flex flex-wrap flex-col">
  <h1 class="scroll-m-20 text-4xl font-extrabold tracking-tight lg:text-5xl">
    Download Virtel
  </h1>
      
  <h2
  class="scroll-m-20 pb-2 text-3xl font-semibold tracking-tight transition-colors first:mt-0"
  >
   Cedrus 2.3.0 Beta
  </h2>
  <h4 class="text-muted-foreground scroll-m-20 text-xl font-semibold tracking-tight">
      For every platform. Open Source. Your best virtual enviroment
  </h4>
</div>

<div class="flex md:flex-row flex-col gap-5">
    <DownloadOption 
    url="https://github.com/vladceresna/virtel/releases/download/2.3.0-beta/com.vladceresna.virtel-2.3.0-windows.exe"
    os="Windows"
    format="EXE"
    version="2.3.0"
    weight="80.3 MB"
    />
    <DownloadOption 
    url="https://github.com/vladceresna/virtel/releases/download/2.3.0-beta/com.vladceresna.virtel-2.3.0-linux.deb"
    os="Linux"
    format="DEB"
    version="2.3.0"
    weight="121 MB"
    />
    <DownloadOption 
    url="https://github.com/vladceresna/virtel/releases/download/2.3.0-beta/com.vladceresna.virtel-2.3.0-android.apk"
    os="Android"
    format="APK"
    version="2.3.0"
    weight="19 MB"
    />

</div>
<Alert.Root>
  <Terminal class="h-4 w-4" />
  <Alert.Title>Virtel now is in Alpha version</Alert.Title>
  <Alert.Description>
    Please use this with caution. 
    This is OpenSource project with GNU GPLv3.0 License, 
    and we don&apos;t offer any guaranties of normal work this software. 
    But you are welcome to test Virtel. 
    If you see bugs, feel free to contact me by email or create a problem on the github repository
  </Alert.Description>
</Alert.Root>

<div class="text-center gap-5 pt-12 flex flex-wrap flex-col">  
  <h2
  class="scroll-m-20 pb-2 text-3xl font-semibold tracking-tight transition-colors first:mt-0"
  >
    Maple 3.0.0 Alpha
  </h2>
  <h4 class="text-muted-foreground scroll-m-20 text-xl font-semibold tracking-tight">
      For every platform. Open Source. Your best virtual enviroment
  </h4>
</div>

<div class="flex md:flex-row flex-col gap-5">
    <DownloadOption 
    url="https://github.com/vladceresna/virtel/releases/download/3.0.0-alpha/com.vladceresna.virtel-3.0.0-android.apk"
    os="Android"
    format="APK"
    version="3.0.0"
    weight="20 MB"
    />
    <DownloadOption 
    url="https://github.com/vladceresna/virtel/releases/download/3.0.0-alpha/com.vladceresna.virtel-3.0.0-windows.exe"
    os="Windows"
    format="EXE"
    version="3.0.0"
    weight="80 MB"
    />
    <DownloadOption 
    url="https://github.com/vladceresna/virtel/releases/download/3.0.0-alpha/com.vladceresna.virtel-3.0.0-debian.deb"
    os="Debian/Ubuntu"
    format="DEB"
    version="3.0.0"
    weight="121 MB"
    />
    <DownloadOption 
    url="https://github.com/vladceresna/virtel/releases/download/3.0.0-alpha/com.vladceresna.virtel-3.0.0-linux.tar.xz"
    os="Other Linux"
    format="TAR.XZ"
    version="3.0.0"
    weight="124 MB"
    />

</div>
<div class="text-center gap-5 flex flex-wrap flex-col">
  <h4 class="text-muted-foreground scroll-m-20 text-xl font-semibold tracking-tight">
   Previous Versions History.<br> Deprecated. Unsupported
  </h4>
  <div>
    <Button href="https://github.com/vladceresna/virtel/releases" variant="outline" class="m-1">
      See releases
    </Button>
  </div>
</div>