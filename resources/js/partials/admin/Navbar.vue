<script setup lang="ts">
/**
 * Admin Navbar partial.
 * The admin section uses AppLayout (AppSidebarLayout) from resources/js/layouts/.
 * This component is a placeholder for any standalone admin navbar needs.
 */
defineProps<{
    title?: string;
}>();
</script>

<template>
    <header class="admin-navbar">
        <div class="admin-navbar__inner">
            <span class="admin-navbar__title">{{ title ?? 'Admin Panel' }}</span>
        </div>
    </header>
</template>

<style>
.admin-navbar {
    position: sticky;
    top: 0;
    z-index: 50;
    height: 60px;
    display: flex;
    align-items: center;
    background: rgba(255, 255, 255, 0.04);
    border-bottom: 1px solid rgba(255, 255, 255, 0.07);
    backdrop-filter: blur(12px);
}

.admin-navbar__inner {
    max-width: 1280px;
    margin: 0 auto;
    padding: 0 1.5rem;
    width: 100%;
}

.admin-navbar__title {
    font-size: 0.9rem;
    font-weight: 600;
    color: rgba(255, 255, 255, 0.7);
    letter-spacing: 0.04em;
}
</style>
