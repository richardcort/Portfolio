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
                            <h2 class="text-lg font-semibold text-slate-200">Backend Developer</h2>
                        </div>
                        <ul class="list-disc flex flex-col gap-2 ml-5 text-gray-300 text-base">
                            <li>2021 - Present</li>
                            <li>Remote</li>
                            <li>Java, Spring Boot, Kotlin, PostgreSQL</li>
                            <li>Worked on various projects including e-commerce platforms and internal tools.</li>
                            <li>Collaborated with cross-functional teams to deliver high-quality software solutions.
                            </li>
                            <li>Implemented RESTful APIs and optimized database queries for performance.</li>
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
            </template>
        </Section>
        <Section title="Socials">
            <template #icon>
                <IconsAlternate />
            </template>
            <template #content>
            </template>
        </Section>
        <Section title="Email">s
            <template #icon>
                <IconsEmail />
            </template>
            <template #content>
            </template>
        </Section>
    </div>
</template>

<script setup lang="ts">

</script>
