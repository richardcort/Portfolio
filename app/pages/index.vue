<template>
    <div class="mx-auto max-w-3xl px-5 mb-5 flex flex-col gap-10">
        <Section class="flex flex-col sm:flex-row items-center gap-5">
            <template #content>
                <div class="relative w-44 h-44 bg-gray-700/60 border-8 border-gray-900/80 shadow-lg rounded-full overflow-hidden">
                    <span style="profile">
                        <img src="@/assets/images/avatarListenToMusic.png" alt="photo profile">
                    </span>
                </div>
                <div class="flex flex-col items-center sm:items-start gap-3">
                    <div class="flex flex-col items-left gap-2">
                        <h1 class="text-2xl sm:text-4xl text-center sm:text-left font-bold text-slate-100">
                            Richard Cortez
                        </h1>
                        <p class="text-slate-300 text-sm sm:text-lg max-w-xl rounded-2xl">
                            I'm a passionate Back-End Developer.
                        </p>
                    </div>
                    <div class="flex gap-3">
                        <a class="py-2 px-4 rounded-xl flex gap-2 items-center justify-center bg-emerald-500 text-slate-100" href="https://docs.google.com/document/d/1-6Jt-XNGpeDp5TLLDXKWkEzix3guAiPp/edit?usp=sharing&ouid=108984616452335203455&rtpof=true&sd=true" target="_blank">
                            <p>Looking for job</p>
                            <IconsGoal />
                        </a>
                    </div>
                </div>
            </template>
        </Section>
        <hr class="border border-dotted border-gray-600 rounded-md">
        <Section title="Experience">            
            <template #icon>
                <IconsBrief />
            </template>
            <template #content>
                <div class="flex flex-col gap-10">
                    <div class="flex flex-col gap-5">
                        <div class="flex flex-col gap-1">
                            <h2 class="text-lg font-semibold text-slate-200">Jr Back-End Developer • Alcaldia de
                                Iribarren</h2>
                        </div>
                        <ul class="list-disc flex flex-col gap-2 ml-5 text-gray-300 text-base">
                            <li>January 2025 - Present</li>
                            <li>Developed and integrated backend modules using NestJS, TypeScript, Prisma, and PostgreSQL.</li>
                            <li>Optimized and refactored stored procedures and SQL views to improve performance and data consistency.</li>
                            <li>Designed and implemented RESTful endpoints leveraging Prisma for efficient queries.</li>
                            <li>Documented APIs with Swagger to facilitate usage and integration.</li>
                            <li>Creation of a standalone service for automated report generation from dynamic HTML templates.</li>
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
                    <Card v-for="project in projects" 
                        :key="project.title" 
                        :title="project.title"
                        :description="project.description" 
                        :href="project.href"
                        target="_blank">
                        <template #icons>
                            <ButtonTooltip v-for="item in project.technologies" 
                                :key="item.name"
                                tag="button"
                                :label="item.name"
                            >
                                <component :is="item.icon" />
                            </ButtonTooltip>
                        </template>
                    </Card>
                </div>
            </template>
        </Section>
        <Section title="Socials">
            <template #icon>
                <IconsAlternate />
            </template>
            <template #content>
                <div class="flex flex-wrap gap-3">
                    <Link v-for="link in links" 
                        :href="link.href" 
                        :label="link.label" 
                        :color="link.color"
                    >
                        <template #icon>
                            <component :is="link.icon" />
                        </template>                    
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
                    <Input 
                        value="richardcortez934@gmail.com" 
                        :disabled="true"
                    />
                    <div class="flex gap-2">
                        <ButtonTooltip label="Send email" tag="a" customClass="bg-indigo-500 py-2.5 px-4"
                            href="mailto:richardcortez934@gmail.com">
                            <IconsSend />
                        </ButtonTooltip>
                        <ButtonTooltip :label="copyLabel" tag="button" customClass="bg-indigo-500 py-2.5 px-4" @click="handleCopy">
                            <IconsCopy />
                        </ButtonTooltip>
                    </div>
                </div>
            </template>
        </Section>
    </div>
</template>
<script setup lang="ts">
import nest from '@/components/icons/nest.vue';
import typeScript from '@/components/icons/typeScript.vue';
import hmtl from '@/components/icons/html.vue';
import github from '@/components/icons/github.vue';
import linkedin from '@/components/icons/linkedin.vue';
import Link from '~/components/Link.vue';

const projects = [
    {
        title: 'Report-Engine',
        description: 'Automatic report generator using dynamic HTML templates.',
        href: 'https://github.com/richardcort/report-engine.git',
        technologies: [
            { name: 'Nest', icon: nest },
            { name: 'TypeScript', icon: typeScript },
            { name: 'Html', icon: hmtl },
        ]
    },
];

const links = [
    {
        label: 'Github',
        href: 'https://github.com/richardcort',
        icon: github,
    },
    {
        label: 'Linkedin',
        href: 'https://linkedin.com/richardcort',
        icon: linkedin,
        color: 'text-sky-600',
    },
];

const copyLabel = ref('Copy email')

function copyToClipboard(text: string) {
    if (!navigator.clipboard) {
        alert('Clipboard not supported')
        return
    }
    navigator.clipboard.writeText(text)
    .then(() => {
        copyLabel.value = 'Copied'
        setTimeout(() => {
            copyLabel.value = 'Copy email'
        }, 3000)
    })
    .catch(err => {
        console.error('Failed to copy: ', err)
    })
}

function handleCopy() {
    copyToClipboard('richardcortez934@gmail.com')
}
</script>

<style scoped>
    .profile {
        box-sizing: border-box;
        display: block;
        overflow: hidden;
        width: initial;
        height: initial;
        background: none;
        opacity: 1;
        border: 0px;
        margin: 0px;
        padding: 0px;
        position: absolute;
        top: 0px;
        left: 0px;
        right: 0px;
        bottom: 0px;
    }
</style>
