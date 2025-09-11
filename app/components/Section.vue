<template>
    <section class="w-full">
        <header class="font-bold text-2xl text-gray-100 mb-6 flex items-center gap-3">
            <h2>
                {{ title }}
            </h2>
            <slot name="icon" />
        </header>
        <slot name="content" />
    </section>
</template>

<script setup lang="ts">

defineProps<{
    title: string;
}>();


</script>