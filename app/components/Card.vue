<template>
    <a  
        :href="props.href"
        :aria-label="props.title"
        class="block group border-2 border-gray-200 dark:border-gray-700 hover:border-gray-400 dark:hover:border-gray-300/30 rounded-xl sm:hover:-translate-y-1 transition duration-200 ease-in-out"
        target="_blank"
        rel="noopener noreferrer"
    >
        <article class="relative flex flex-col justify-between w-full py-6 px-7">
            <h2 class="text-gray-800 dark:text-gray-200 text-lg font-bold">{{ props.title }}</h2>
            <p class="text-slate-700 dark:text-slate-200">{{ props.description }}</p>
            <div class="flex gap-1 mt-1.5 items-center">
                <slot name="icons" />
            </div>
            <div class="absolute grid place-items-center right-3 top-3 bg-gray-800 w-9 h-9 rounded-full scale-0 group-hover:scale-90 transition-transform">
                <div class="text-gray-50 text-2xl">
                    <IconsExpand />
                </div>
            </div>
        </article>
    </a>
</template>

<script setup lang="ts">
const props = defineProps<{
    title: string;
    description: string;
    href?: string;
}>();
</script>