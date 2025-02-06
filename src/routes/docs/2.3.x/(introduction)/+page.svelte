<script>
	import FeatureCard from "$lib/components/feature-card.svelte";
import Oh1 from "$lib/components/typography/oh1.svelte";
	import Oh2 from "$lib/components/typography/oh2.svelte";
	import Oh3 from "$lib/components/typography/oh3.svelte";
	import Oh4 from "$lib/components/typography/oh4.svelte";
	import Op from "$lib/components/typography/op.svelte";
	import Button from "$lib/components/ui/button/button.svelte";
	import { Card } from "$lib/components/ui/card";
	import CardContent from "$lib/components/ui/card/card-content.svelte";
	import CardHeader from "$lib/components/ui/card/card-header.svelte";

</script>

<Oh1>Introduction</Oh1>
<Op>
	Virtel is the fastest, the most secure and safe crossplatform customized virtual enviroment. Best suited for
	mathematical calculations, development or deployment of applications and servers, though can be
	used for any purpose. We call it the <b>operating system</b>.
</Op>
<Op>
	Built on the Kotlin Multiplatform framework and the Rust language, Virtel provides a unique approach to programming through its own language, Steps, which allows for concise and efficient code writing. 
	With Virtel, users can develop cross-platform applications that run seamlessly on any device, ensuring consistency and ease of use.
</Op>
<Oh2>Our Goal</Oh2>
<Op>
	The primary goal of Virtel is to offer a transparent and user-friendly environment where developers can focus on their ideas without being overwhelmed by complex setups or bulky frameworks. 
	By integrating features like multithreading, multitasking, and a built-in terminal, Virtel empowers users to create powerful yet compact applications.
</Op>
<Op>
	Whether you're building a simple HTTP server or a complex system, Virtel's modular design and extensive libraries make it an ideal choice for developers of all levels. 
	The system's emphasis on minimalism and performance ensures that applications built with Virtel are both efficient and easy to maintain.
</Op>

<Oh2>Features</Oh2>
<Op>
Virtel boasts a set of powerful and unique features that make it an attractive and robust tool for software development. Here are the key highlights:
</Op>
<div class="flex flex-wrap gap-5 p-5">
<FeatureCard title="Cross-Platform Compatibility"
	description="Virtel enables the creation of applications 
	that run seamlessly on any device without additional configurations. 
	This ensures true cross-platform functionality and ease of use across all platforms.">
</FeatureCard>
<FeatureCard title="Extremely Small Size"
	description="Applications built with Virtel have an incredibly small 
	executable file size, never exceeding 1 MB. 
	This ensures fast deployment and minimal resource consumption.">
</FeatureCard>
<FeatureCard title="Ease of Understanding"
	description="Virtel utilizes a simple and intuitive programming language called Steps, 
	making it accessible to developers of all levels, including beginners.">
</FeatureCard>
<FeatureCard title="Flexible Integrations"
	description="Virtel supports easy integration of various programs and services, 
	simplifying the development of complex systems and enabling 
	the combination of different components.">
</FeatureCard>
<FeatureCard title="Open and Understandable Code"
	description="The code of applications created with Virtel is 
	fully open and understandable, 
	facilitating easy learning, modification, and usage.">
</FeatureCard>
<FeatureCard title="Full Control Over Applications"
	description="Virtel provides complete control over created applications, 
	including the ability to remove standard components, 
	analyze resources, and use a built-in terminal, 
	making the system highly flexible and customizable.">
</FeatureCard>
<FeatureCard title="True Multitasking"
	description="Virtel supports genuine multitasking, 
	allowing multiple tasks to be performed simultaneously 
	without any loss in performance.">
</FeatureCard>
<FeatureCard title="Minimalistic and Attractive Interface"
	description="The Virtel interface is designed 
	with minimalism and aesthetics in mind, 
	ensuring a pleasant and user-friendly experience.">
</FeatureCard>
</div>