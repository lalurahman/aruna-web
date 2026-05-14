import { onMounted, onUnmounted, ref } from 'vue';

/**
 * Shared composable for all public pages.
 * Handles: scroll-based nav state, dark/light theme, and IntersectionObserver reveal animation.
 *
 * @param revealThreshold - IntersectionObserver threshold (default 0.1)
 */
export function usePublicPage(revealThreshold = 0.1) {
    const navScrolled = ref(false);
    const isDark = ref(true);

    function handleScroll() {
        navScrolled.value = window.scrollY > 50;
    }

    function toggleTheme() {
        isDark.value = !isDark.value;
        localStorage.setItem('aruna-theme', isDark.value ? 'dark' : 'light');
    }

    let revealObserver: IntersectionObserver | null = null;

    onMounted(() => {
        const saved = localStorage.getItem('aruna-theme');
        if (saved === 'light') isDark.value = false;

        window.addEventListener('scroll', handleScroll);

        revealObserver = new IntersectionObserver(
            (entries) =>
                entries.forEach((e) => {
                    if (e.isIntersecting) e.target.classList.add('visible');
                }),
            { threshold: revealThreshold },
        );
        document
            .querySelectorAll('.reveal')
            .forEach((el) => revealObserver!.observe(el));
    });

    onUnmounted(() => {
        window.removeEventListener('scroll', handleScroll);
        revealObserver?.disconnect();
    });

    return { navScrolled, isDark, toggleTheme };
}
