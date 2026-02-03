<template>
    <div class="mx-auto max-w-3xl sticky top-0 z-10">
        <header :class="[
            'backdrop-blur-lg bottom-0 static flex items-center py-1 px-5 z-20 bg-white/80 dark:bg-gray-800/80 text-slate-800 dark:text-slate-200',
            justify ? 'justify-between' : 'justify-end'
        ]">
            <div v-if="showDiv"
                class="flex w-12 h-12 relative opacity-0 -translate-y-10 items-center bg-gray-700/60 rounded-full shadow-md border-4 border-gray-900/80 transition-all duration-300 ease-out"
                :class="{ 'opacity-100 translate-y-0': animation }">
                <img src="@/assets/images/avatarListenToMusic.png" alt="photo profile"
                    class="rounded-full drop-shadow-2xl absolute inset-0 object-cover" />
                <p class="ml-14 font-semibold text-lg whitespace-nowrap text-slate-300">
                    Richard Cortez
                </p>
            </div>
            <button @click="switchTheme" class="py-4 px-2 sm:py-5 flex items-center gap-4 outline-none">
                <component :is="theme ? sun : moon" />
            </button>
        </header>
    </div>
</template>

<script setup>
import { ref, onMounted, onUnmounted, computed } from 'vue'
import moon from '@/components/icons/moon.vue'
import sun from '@/components/icons/sun.vue'

const scrollY = ref(0)
const animation = ref(false)
const theme = ref(false)

const showDiv = computed(() => scrollY.value > 210)
const justify = computed(() => scrollY.value > 210)

const onScroll = () => { scrollY.value = window.scrollY }
const switchTheme = () => { 
    theme.value = !theme.value
    if (theme.value) {
        document.documentElement.classList.add('dark')
        localStorage.setItem('theme', 'dark')
    } else {
        document.documentElement.classList.remove('dark')
        localStorage.setItem('theme', 'light')
    }
}

watch(scrollY, (newVal) => {
    if (newVal > 210) {
        setTimeout(() => {
            animation.value = true
        }, 100);
    } else {
        animation.value = false
    }
})

onMounted(() => {
    window.addEventListener('scroll', onScroll)
    console.log('header mounted')
    
    // Check for saved theme or system preference
    if (localStorage.theme === 'dark' || (!('theme' in localStorage) && window.matchMedia('(prefers-color-scheme: dark)').matches)) {
        theme.value = true
        document.documentElement.classList.add('dark')
    } else {
        theme.value = false
        document.documentElement.classList.remove('dark')
    }
})

onUnmounted(() => {
    window.removeEventListener('scroll', onScroll)
})
</script>