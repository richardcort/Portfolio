<template>
    <input class="bg-white/5 w-full py-1.5 px-3 rounded-xl grid place-items-center text-slate-300"
        :type="props.type" 
        :value="props.value" 
        :disabled="props.disabled"
    >
</template>
<script setup lang="ts">
const props = defineProps<{
    value: string;
    disabled?: boolean;
    type?: string;
}>();
</script>