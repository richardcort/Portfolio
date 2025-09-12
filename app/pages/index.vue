<template>
    <!--que es max-w-3xl-->
    <div class="mx-auto max-w-3xl px-5 mb-5 flex flex-col gap-10">
        <Section title="Experience">
            <template #icon>
                <IconsBrief />
            </template>
            <template #content>
                <div class="flex flex-col gap-10">
                    <div class="flex flex-col gap-5">
                        <div class="flex flex-col gap-1">
                            <h2 class="text-lg font-semibold text-slate-200">Jr Back-End Developer • Alcaldia de Iribarren</h2>
                        </div>
                        <ul class="list-disc flex flex-col gap-2 ml-5 text-gray-300 text-base">
                            <li>January 2025 - Present</li>
                        </ul>
                    </div>
                </div>
            </template>
        </Section>
        <Section title="Projects">
            <template #icon>
                <IconsStar />
            </template>
            <template #content>
                <div class="grid grid-cols-1 md:grid-cols-2 gap-2 sm:gap-5">
                    <Card href="#"  title="Example" description="Example of a description"/>
                </div>
            </template>
        </Section>
        <Section title="Socials">
            <template #icon>
                <IconsAlternate />
            </template>
            <template #content>
                <div class="flex flex-wrap gap-3">
                    <Link href="https://github.com/richardcort" label="Github" target="_blank">
                        <IconsGithub />
                    </Link>
                    <Link href="#" label="Linkedin" target="_blank" color="text-sky-600">
                        <IconsLinkedin />
                    </Link>
                </div>
            </template>
        </Section>
        <Section title="Email">
            <template #icon>
                <IconsEmail />
            </template>
            <template #content>
                <div class="flex gap-2">
                    <input class="bg-white/5 w-full py-1.5 px-3 rounded-xl grid place-items-center text-slate-300"
                        type="text" value="richardcortez934@gmail.com" disabled>
                    <div class="flex gap-2">
                        <ButtonTooltip label="Send email" tag="a" class="bg-indigo-500 py-2.5 px-4" href="mailto:richardcortez934@gmail.com">
                            <IconsSend />
                        </ButtonTooltip>
                        <ButtonTooltip label="Copy email" tag="button" class="bg-indigo-500 py-2.5 px-4 ">
                            <IconsCopy />
                        </ButtonTooltip>
                    </div>
                </div>
            </template>
        </Section>
    </div>
</template>

<script setup lang="ts">
import Link from '~/components/Link.vue';
</script>
