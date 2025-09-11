<template>
    <a 
        :class="`${classes} ${$attrs.class}`"
        :href="props.href"
        v-bind="$attrs"
    >
        <slot />
        {{ props.label }}
    </a>
</template>

<script setup lang="ts">
const props = defineProps<{
    href?: string;
    label?: string;
    color?: string;
}>();

const color = props.color ?? "text-white/80";

const classes =
    `flex items-center gap-3 font-bold px-4 h-16 rounded-xl border-2 border-white/10 hover:border-4 duration-100 transition-shadow ${color}`;
</script>
