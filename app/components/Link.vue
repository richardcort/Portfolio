<template>
    <a 
        :class="`${computedClasses} ${$attrs.class}`"
        :href="props.href"
        v-bind="$attrs"
        :aria-label="props.label"
        target="_blank"
        rel="noopener noreferrer"
    >
        <slot name="icon" />
        {{ props.label }}
    </a>
</template>

<script setup lang="ts">
import { computed } from 'vue';

const props = defineProps<{
    href?: string;
    label?: string;
    color?: string;
}>();

const color = props.color ?? "text-gray-800 dark:text-white/80";

const computedClasses = computed(() => {
    const baseClasses = `
        flex items-center gap-3 font-bold px-4 h-16 rounded-xl border-2 border-gray-200 dark:border-white/10
        transition-shadow duration-200 ease-in-out
        hover:shadow-[0_0_0_2px_rgba(0,0,0,0.1)] dark:hover:shadow-[0_0_0_2px_rgba(255,255,255,0.1)]
    `;

    return `${baseClasses} ${color} ${useAttrs().class ?? ''}`.trim();
});
</script>
