import { ref } from 'vue';

/**
 * Shared composable for admin pages.
 * Extend this as the admin panel grows.
 */
export function useAdminPage() {
    const sidebarOpen = ref(false);

    function toggleSidebar() {
        sidebarOpen.value = !sidebarOpen.value;
    }

    return { sidebarOpen, toggleSidebar };
}
