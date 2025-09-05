<script setup lang="ts">
import Card from '~/components/Card.vue';
</script>

<template>
    <div class="flex flex-col items-center justify-center">
        <Card title="Richard Cortez">
            <template v-slot:content>
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quia.
                </p>
            </template>
        </Card>
        <hr>
        <Card title="Experience">
            <template v-slot:content>
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quia.
                </p>
            </template>
        </Card>
        <Card title="Projects">
            <template v-slot:content>
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quia.
                </p>
            </template>
        </Card>
        <Card title="Socials">
            <template v-slot:content>
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quia.
                </p>
            </template>
        </Card>
        <Card title="Email">
            <template v-slot:content>
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quia.
                </p>
            </template>
        </Card>
    </div>
</template>