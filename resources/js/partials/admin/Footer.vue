<script setup lang="ts">
/**
 * Admin Footer partial.
 * Renders a minimal copyright bar for standalone admin pages.
 */
</script>

<template>
    <footer class="admin-footer">
        <p>&copy; {{ new Date().getFullYear() }} PT Aruna Multi Komputer. Admin Panel.</p>
    </footer>
</template>

<style>
.admin-footer {
    padding: 1rem 1.5rem;
    border-top: 1px solid rgba(255, 255, 255, 0.06);
    text-align: center;
}

.admin-footer p {
    font-size: 0.78rem;
    color: rgba(255, 255, 255, 0.25);
}
</style>
