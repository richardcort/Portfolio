<template>
    <div class="relative group/tooltip">
        <a v-if="props.tag === 'a' && props.href"
            :href="props.href"
            :class="baseClass"
            :aria-label="label"
            target="_blank"
            rel="noopener noreferrer"
        >
            <slot />
        </a>
        <button v-else 
            :class="baseClass"
            :aria-label="label" 
            @click="emit('click', $event)"
        >
            <slot />
        </button>
        <span
            class="absolute pointer-events-none transition-all opacity-0 z-20 bottom-full -translate-y-0 py-1 px-1.5 text-xs left-1/2 -translate-x-1/2 rounded-md whitespace-nowrap text-gray-200 bg-gray-800 dark:bg-white dark:text-gray-700 before:content-[''] before:absolute before:bg-gray-800 before:rounded-sm before:w-2.5 before:rotate-45 before:h-2.5 before:-bottom-1 before:-z-10 before:left-1/2 before:-translate-x-1/2 before:dark:bg-white before:dark:gray-800 group-hover/tooltip:opacity-100 group-hover/tooltip:-translate-y-3">
            {{ label }}
        </span>
    </div>
</template>
<script setup lang="ts">
const props = defineProps<{
    label?: string;
    tag: string;
    href?: string;
    customClass?: string;
}>();

const emit = defineEmits(['click']);

const label = props.label ?? ''

const baseClass = computed(() => {
    return `flex hover:opacity-90 text-indigo-100 rounded-lg ${props.customClass}`;
})
// bg-indigo-500 py-2.5 px-4 
</script>
