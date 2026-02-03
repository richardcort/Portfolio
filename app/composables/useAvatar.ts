import { ref, onMounted, onUnmounted } from 'vue';
import avatar1 from '@/assets/images/avatar.png';
import avatar2 from '@/assets/images/avatarListenToMusic.png';
import avatar3 from '@/assets/images/avatarWithHeadphones.png';

const currentAvatar = ref(avatar1);
const avatars = [avatar1, avatar2, avatar3];

export const useAvatar = () => {
    let intervalId: ReturnType<typeof setInterval> | null = null;

    const startRotation = () => {
        if (intervalId) return; // Prevent multiple intervals

        let index = 0;
        intervalId = setInterval(() => {
            index = (index + 1) % avatars.length;
            currentAvatar.value = avatars[index];
        }, 50000);
    };

    const stopRotation = () => {
        if (intervalId) {
            clearInterval(intervalId);
            intervalId = null;
        }
    };

    onMounted(() => {
        startRotation();
    });

    return {
        currentAvatar
    };
};
