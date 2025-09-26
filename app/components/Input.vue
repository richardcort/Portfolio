<template>
    <input 
        class="bg-white/5 w-full py-1.5 px-3 rounded-xl grid place-items-center text-slate-300"
        :type="inputType"
        :value="props.value" 
        :disabled="props.disabled"
    >
</template>
<script setup lang="ts">

enum InputType {
    text = 'text',
    password = 'password',
    email = 'email',
    number = 'number',
}

const props = defineProps<{
    type?: InputType;
    value: string;
    disabled?: boolean;
}>();

const inputType = computed(() => props.type ?? InputType.text)
</script>