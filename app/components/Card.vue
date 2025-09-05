<template>
    <section>
        <header>
            <h2 class="text-2xl font-bold">
                {{ title }}
            </h2>
            <Icon class="size-8"/>
        </header>
        <div>
            <slot name="content"></slot>
        </div>
    </section>
</template>

<script setup lang="ts">
import Icon from './Icon.vue';

defineProps<{
    title: string;
}>();
</script>