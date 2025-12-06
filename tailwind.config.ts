import type { Config } from "tailwindcss";

const config: Config = {
	darkMode: "class",
	content: [
		"./src/**/*.{html,js,svelte,ts}",
		'./node_modules/layerchart/**/*.{svelte,js}'
	],
};

export default config;