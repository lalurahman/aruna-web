<script setup lang="ts">
import { ref } from 'vue';

const props = defineProps<{
    /** Which nav item is currently active */
    active: 'home' | 'about' | 'product' | 'contact';
    /** Whether the page has been scrolled past 50px */
    scrolled: boolean;
    /** Current theme state */
    isDark: boolean;
}>();

const emit = defineEmits<{
    'toggle-theme': [];
}>();

const navOpen = ref(false);
</script>

<template>
    <nav :class="{ scrolled: props.scrolled }">
        <div class="max-w-7xl mx-auto px-6 w-full flex items-center justify-between">

            <!-- Logo -->
            <a href="/" class="flex items-center gap-3">
                <img src="/logo.png" alt="Aruna Multi Komputer" style="width: 38px; height: 38px; object-fit: contain" />
                <div>
                    <div class="logo-text text-white text-sm leading-tight">ARUNA</div>
                    <div style="font-size: 0.58rem; letter-spacing: 0.18em; color: var(--primary)">MULTI KOMPUTER</div>
                </div>
            </a>

            <!-- Nav links -->
            <div
                class="nav-links flex items-center gap-8"
                :class="[navOpen ? 'open' : '', 'md:flex', navOpen ? 'flex' : 'hidden']"
            >
                <a href="/" class="nav-link" :class="{ 'nav-link--active': active === 'home' }" @click="navOpen = false">Beranda</a>
                <a href="/about" class="nav-link" :class="{ 'nav-link--active': active === 'about' }" @click="navOpen = false">Tentang</a>
                <a href="/product" class="nav-link" :class="{ 'nav-link--active': active === 'product' }" @click="navOpen = false">Product</a>
                <a href="/contact" class="nav-link" :class="{ 'nav-link--active': active === 'contact' }" @click="navOpen = false">Contact</a>
                <a v-if="active !== 'home'" href="/contact" class="btn-primary md:hidden" @click="navOpen = false">
                    <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                        <path d="M22 16.92v3a2 2 0 01-2.18 2 19.79 19.79 0 01-8.63-3.07A19.5 19.5 0 013.07 9.63 19.79 19.79 0 01.14 1.05 2 2 0 012.11.01h3a2 2 0 012 1.72 12.84 12.84 0 00.7 2.81 2 2 0 01-.45 2.11L6.91 7.91a16 16 0 006.18 6.18l1.27-.46a2 2 0 012.11.45 12.84 12.84 0 002.81.7A2 2 0 0122 16.92z" />
                    </svg>
                    Hubungi Kami
                </a>
            </div>

            <!-- Right actions -->
            <div class="flex items-center gap-3">

                <button class="theme-toggle" :aria-label="props.isDark ? 'Tema terang' : 'Tema gelap'" @click="emit('toggle-theme')">
                    <svg v-if="props.isDark" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                        <circle cx="12" cy="12" r="5" /><path d="M12 1v2M12 21v2M4.22 4.22l1.42 1.42M18.36 18.36l1.42 1.42M1 12h2M21 12h2M4.22 19.78l1.42-1.42M18.36 5.64l1.42-1.42" />
                    </svg>
                    <svg v-else width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                        <path d="M21 12.79A9 9 0 1111.21 3 7 7 0 0021 12.79z" />
                    </svg>
                </button>

                <button class="hamburger" aria-label="Menu" @click="navOpen = !navOpen">
                    <span></span><span></span><span></span>
                </button>
            </div>

        </div>
    </nav>
</template>
