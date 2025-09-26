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

const color = props.color ?? "text-white/80";

const computedClasses = computed(() => {
    const baseClasses = 'flex items-center gap-3 font-bold px-4 h-16 rounded-xl border-2 border-white/10 hover:border-4 duration-100 transition-shadow'

    return `${baseClasses} ${color} ${ useAttrs().class ?? ''}`.trim()
})
</script>
