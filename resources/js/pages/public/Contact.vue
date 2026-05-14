<script setup lang="ts">
import { Head } from '@inertiajs/vue3';
import { usePublicPage } from '@/partials/public/usePublicPage';
import PublicNavbar from '@/partials/public/Navbar.vue';
import PublicFooter from '@/partials/public/Footer.vue';
import '@/partials/public/styles.css';

const { navScrolled, isDark, toggleTheme } = usePublicPage();
</script>

<template>
    <Head title="Contact — Aruna Multi Komputer">
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link
            href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;600;700;900&family=Outfit:wght@300;400;500;600&display=swap"
            rel="stylesheet"
        />
    </Head>

    <div :class="['public-page', 'contact-page', isDark ? 'theme-dark' : 'theme-light']">
        <div class="bg-mesh"></div>
        <div class="bg-grid"></div>

        <!-- NAVBAR -->
        <PublicNavbar active="contact" :scrolled="navScrolled" :is-dark="isDark" @toggle-theme="toggleTheme" />

        <!-- HERO -->
        <section class="relative flex items-center justify-center text-center" style="min-height: 44vh; padding-top: 100px; padding-bottom: 3rem">
            <div class="orb" style="width: 360px; height: 360px; background: rgba(82,232,130,0.08); top: -60px; right: -80px"></div>
            <div class="orb" style="width: 260px; height: 260px; background: rgba(20,200,213,0.07); bottom: 0; left: -60px; animation-delay: 2s"></div>
            <div class="max-w-2xl mx-auto px-6 z-10">
                <div class="badge mb-5 reveal" style="display: inline-flex">
                    <span style="width: 6px; height: 6px; border-radius: 50%; background: var(--secondary)"></span>
                    Hubungi Kami
                </div>
                <h1 class="hero-title text-white mb-5 reveal" style="transition-delay: 0.1s">
                    Ada yang Bisa<br /><span class="grad-text">Kami Bantu?</span>
                </h1>
                <p class="reveal" style="color: var(--text-muted); font-size: 1rem; line-height: 1.8; transition-delay: 0.2s">
                    Tim kami siap merespons pertanyaan, konsultasi produk, dan permintaan penawaran Anda setiap hari kerja.
                </p>
            </div>
        </section>

        <div class="glow-line" style="max-width: 600px; margin: 0 auto; opacity: 0.4"></div>

        <!-- KONTAK UTAMA -->
        <section class="py-24 relative z-10">
            <div class="max-w-7xl mx-auto px-6">

                <!-- Header -->
                <div class="mb-12 reveal">
                    <div class="section-label mb-2">Informasi Kontak</div>
                    <h2 class="section-title text-white mb-3" style="font-size: clamp(1.4rem,3vw,2rem)">
                        Temukan &amp; <span class="grad-text-blue">Hubungi Kami</span>
                    </h2>
                    <p style="color:var(--text-muted); line-height:1.8; font-size:0.9rem; max-width:480px">
                        Jangan ragu untuk menghubungi kami melalui berbagai saluran di bawah ini.
                    </p>
                </div>

                <!-- Info cards grid -->
                <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-5">

                    <!-- Alamat -->
                    <div class="glass-card p-5 reveal" style="border-radius:18px; transition-delay:0.1s">
                        <div style="display:flex; align-items:flex-start; gap:12px">
                            <div class="contact-icon">📍</div>
                            <div>
                                <div class="contact-label">ALAMAT</div>
                                <div class="contact-value">
                                    PT Aruna Multi Komputer<br />
                                    Jl. Teknologi Raya No. 1,<br />
                                    Makassar, Sulawesi Selatan 90111
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Telepon -->
                    <div class="glass-card p-5 reveal" style="border-radius:18px; transition-delay:0.15s">
                        <div style="display:flex; align-items:flex-start; gap:12px">
                            <div class="contact-icon">📞</div>
                            <div>
                                <div class="contact-label">TELEPON / WHATSAPP</div>
                                <a href="tel:04111234567" class="contact-value" style="text-decoration:none; display:block">(0411) 123-4567</a>
                                <a href="https://wa.me/6281234567890" class="contact-value" style="text-decoration:none; display:block; color:var(--primary)" target="_blank" rel="noopener noreferrer">0812-3456-7890</a>
                            </div>
                        </div>
                    </div>

                    <!-- Email -->
                    <div class="glass-card p-5 reveal" style="border-radius:18px; transition-delay:0.2s">
                        <div style="display:flex; align-items:flex-start; gap:12px">
                            <div class="contact-icon">✉️</div>
                            <div>
                                <div class="contact-label">EMAIL</div>
                                <a href="mailto:info@arunamultikomputer.com" class="contact-value" style="text-decoration:none; word-break:break-all">info@arunamultikomputer.com</a>
                            </div>
                        </div>
                    </div>

                    <!-- Jam Operasional -->
                    <div class="glass-card p-5 reveal" style="border-radius:18px; transition-delay:0.25s">
                        <div style="display:flex; align-items:flex-start; gap:12px">
                            <div class="contact-icon">🕐</div>
                            <div style="flex:1">
                                <div class="contact-label">JAM OPERASIONAL</div>
                                <div style="display:flex; flex-direction:column; gap:5px; margin-top:4px">
                                    <div style="display:flex; justify-content:space-between; gap:8px">
                                        <span style="color:var(--text-muted); font-size:0.85rem">Senin – Jumat</span>
                                        <span class="contact-value" style="font-size:0.85rem">08.00 – 17.00</span>
                                    </div>
                                    <div style="display:flex; justify-content:space-between; gap:8px">
                                        <span style="color:var(--text-muted); font-size:0.85rem">Sabtu</span>
                                        <span class="contact-value" style="font-size:0.85rem">08.00 – 15.00</span>
                                    </div>
                                    <div style="display:flex; justify-content:space-between; gap:8px">
                                        <span style="color:var(--text-muted); font-size:0.85rem">Minggu</span>
                                        <span style="color:var(--text-faint); font-size:0.85rem">Tutup</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <!-- WhatsApp CTA -->
                <div class="reveal" style="margin-top:2rem; transition-delay:0.3s">
                    <a href="https://wa.me/6281234567890" class="btn-primary" target="_blank" rel="noopener noreferrer">
                        <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347z"/><path d="M12 0C5.373 0 0 5.373 0 12c0 2.116.549 4.109 1.51 5.845L.057 23.547a.5.5 0 00.608.61l5.83-1.53A11.945 11.945 0 0012 24c6.627 0 12-5.373 12-12S18.627 0 12 0zm0 22c-1.891 0-3.667-.51-5.19-1.4l-.37-.22-3.838 1.007 1.028-3.75-.242-.386A9.96 9.96 0 012 12C2 6.477 6.477 2 12 2s10 4.477 10 10-4.477 10-10 10z"/></svg>
                        Chat via WhatsApp
                    </a>
                </div>

            </div>
        </section>

        <!-- MAPS -->
        <section class="py-8 relative z-10">
            <div class="max-w-7xl mx-auto px-6">
                <div class="glass-card reveal" style="border-radius:24px; overflow:hidden; height:380px">
                    <iframe
                        src="https://maps.google.com/maps?q=Makassar,+Sulawesi+Selatan&t=&z=14&ie=UTF8&iwloc=&output=embed"
                        width="100%"
                        height="100%"
                        style="border:0; display:block; filter:grayscale(0.3) contrast(1.05)"
                        :allowfullscreen="true"
                        loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade"
                        title="Lokasi Aruna Multi Komputer"
                    ></iframe>
                </div>
            </div>
        </section>

        <!-- FOOTER MINI -->
        <PublicFooter />
    </div>
</template>

<style>
:root {
    --primary: #14C8D5;
    --secondary: #52E882;
    --navy: #040c10;
    --glass: rgba(255,255,255,0.06);
    --glass-border: rgba(255,255,255,0.12);
}
html { scroll-behavior: smooth; }

.contact-page {
    font-family: 'Outfit', sans-serif;
    background: var(--navy); color: #e2e8f0;
    overflow-x: hidden; min-height: 100vh;
    transition: background 0.3s ease, color 0.3s ease;
}
.contact-page .bg-mesh {
    position: fixed; inset: 0; z-index: 0; pointer-events: none;
    background:
        radial-gradient(ellipse 80% 60% at 20% 10%, rgba(82,232,130,0.08) 0%, transparent 60%),
        radial-gradient(ellipse 60% 50% at 80% 80%, rgba(20,200,213,0.07) 0%, transparent 55%),
        radial-gradient(ellipse 50% 40% at 60% 30%, rgba(121,40,202,0.05) 0%, transparent 50%),
        var(--navy);
}
.contact-page .bg-grid {
    position: fixed; inset: 0; z-index: 0; pointer-events: none;
    background-image: linear-gradient(rgba(20,200,213,0.05) 1px, transparent 1px), linear-gradient(90deg, rgba(20,200,213,0.05) 1px, transparent 1px);
    background-size: 60px 60px; opacity: 0.5;
}
.contact-page.theme-light { --navy: #f0fdfb; background: #f0fdfb; color: #0d2a2e; }
.contact-page.theme-light .bg-mesh { background: radial-gradient(ellipse 80% 60% at 20% 10%, rgba(82,232,130,0.07) 0%, transparent 60%), #f0fdfb; }
.contact-page.theme-light .text-white { color: #0d2a2e !important; }
.contact-page.theme-light .glass { background: rgba(255,255,255,0.72); border-color: rgba(20,200,213,0.2); }
.contact-page.theme-light .glass-card { background: rgba(255,255,255,0.78); border-color: rgba(20,200,213,0.18); }
.contact-page.theme-light .glass-card:hover { background: rgba(255,255,255,0.95) !important; }
.contact-page.theme-light nav { background: rgba(240,253,251,0.85) !important; border-bottom-color: rgba(20,200,213,0.15) !important; }
.contact-page.theme-light nav.scrolled { background: rgba(240,253,251,0.96) !important; }
.contact-page.theme-light .nav-link { color: rgba(13,42,46,0.7); }
.contact-page.theme-light .nav-link:hover, .contact-page.theme-light .nav-link--active { color: #0d2a2e; }
.contact-page.theme-light .nav-links { background: rgba(240,253,251,0.98) !important; }
.contact-page.theme-light .hamburger span { background: #0d2a2e; }
.contact-page.theme-light .btn-outline { color: #0d2a2e; border-color: rgba(13,42,46,0.2); }
.contact-page.theme-light .glass-input { background: rgba(255,255,255,0.8); border-color: rgba(20,200,213,0.28); color: #0d2a2e; }
.contact-page.theme-light .glass-input::placeholder { color: rgba(13,42,46,0.4); }
.contact-page.theme-light .glass-input:focus { border-color: rgba(20,200,213,0.55) !important; background: rgba(255,255,255,0.95) !important; }
.contact-page.theme-light footer { border-top-color: rgba(13,42,46,0.1) !important; }
.contact-page.theme-light footer p { color: rgba(13,42,46,0.4) !important; }
.contact-page.theme-light .form-label { color: rgba(13,42,46,0.65); }
.contact-page.theme-light .contact-label { color: rgba(13,42,46,0.45); }
.contact-page.theme-light .contact-value { color: #0d2a2e; }

nav {
    position: fixed; top: 0; left: 0; right: 0; z-index: 100;
    height: 70px; display: flex; align-items: center;
    background: rgba(4,12,16,0.7); backdrop-filter: blur(20px);
    border-bottom: 1px solid rgba(255,255,255,0.07);
    transition: background 0.3s, box-shadow 0.3s;
}
nav.scrolled { background: rgba(4,12,16,0.92); box-shadow: 0 4px 30px rgba(0,0,0,0.4); }
.logo-text { font-family: 'Orbitron', sans-serif; font-weight: 700; letter-spacing: 0.08em; }
.nav-link {
    font-size: 0.875rem; font-weight: 500;
    color: rgba(255,255,255,0.6); text-decoration: none;
    transition: color 0.2s; position: relative;
}
.nav-link::after { content:''; position:absolute; bottom:-3px; left:0; width:0; height:1.5px; background:var(--primary); transition:width 0.25s; }
.nav-link:hover::after, .nav-link--active::after { width: 100%; }
.nav-link:hover, .nav-link--active { color: #fff; }

.btn-primary {
    display: inline-flex; align-items: center; gap: 8px;
    padding: 0.65rem 1.5rem; border-radius: 50px;
    background: linear-gradient(135deg, var(--primary), var(--secondary));
    color: #040c10; font-weight: 700; font-size: 0.875rem;
    text-decoration: none; transition: opacity 0.2s, transform 0.2s, box-shadow 0.2s;
    cursor: pointer; border: none;
}
.btn-primary:hover { opacity: 0.88; transform: translateY(-1px); box-shadow: 0 8px 25px rgba(20,200,213,0.35); }
.btn-primary:disabled { opacity: 0.6; cursor: not-allowed; transform: none; }
.btn-outline {
    display: inline-flex; align-items: center; gap: 8px;
    padding: 0.65rem 1.5rem; border-radius: 50px;
    border: 1px solid rgba(255,255,255,0.18); color: rgba(255,255,255,0.75);
    font-weight: 500; font-size: 0.875rem; text-decoration: none;
    transition: background 0.2s, border-color 0.2s; background: transparent; cursor: pointer;
}
.btn-outline:hover { background: rgba(255,255,255,0.06); border-color: rgba(255,255,255,0.35); color: #fff; }

.glass { background: var(--glass); border: 1px solid var(--glass-border); backdrop-filter: blur(16px); }
.glass-card {
    background: rgba(255,255,255,0.05); border: 1px solid rgba(255,255,255,0.1);
    border-radius: 18px; transition: background 0.25s, border-color 0.25s, box-shadow 0.25s;
}
.glass-card:hover { background: rgba(255,255,255,0.08); border-color: rgba(20,200,213,0.25); }

.glass-input {
    width: 100%; padding: 0.7rem 1rem; border-radius: 10px;
    background: rgba(255,255,255,0.06); border: 1px solid rgba(255,255,255,0.12);
    color: #e2e8f0; font-family: 'Outfit', sans-serif; font-size: 0.9rem;
    transition: border-color 0.2s, background 0.2s, box-shadow 0.2s;
    outline: none; appearance: none;
}
.glass-input::placeholder { color: rgba(255,255,255,0.3); }
.glass-input:focus { border-color: rgba(20,200,213,0.5); background: rgba(20,200,213,0.05); box-shadow: 0 0 0 3px rgba(20,200,213,0.1); }
.glass-input option { background: #0a1a1e; color: #e2e8f0; }

.form-group { display: flex; flex-direction: column; gap: 6px; }
.form-label { font-size: 0.78rem; font-weight: 600; color: rgba(255,255,255,0.55); letter-spacing: 0.06em; text-transform: uppercase; }

.contact-icon { font-size: 1.4rem; flex-shrink: 0; width: 40px; text-align: center; margin-top: 2px; }
.contact-label { font-size: 0.68rem; font-weight: 700; letter-spacing: 0.12em; text-transform: uppercase; color: rgba(255,255,255,0.35); margin-bottom: 5px; }
.contact-value { color: rgba(255,255,255,0.8); font-size: 0.9rem; font-weight: 500; line-height: 1.6; }

.orb { position: absolute; border-radius: 50%; filter: blur(70px); pointer-events: none; animation: float 8s ease-in-out infinite; }
@keyframes float { 0%,100% { transform: translateY(0); } 50% { transform: translateY(-20px); } }
@keyframes spin { to { transform: rotate(360deg); } }
.glow-line { height: 1px; background: linear-gradient(90deg, transparent, var(--primary), transparent); opacity: 0.3; }
.badge {
    display: inline-flex; align-items: center; gap: 8px; padding: 0.4rem 1rem;
    border-radius: 50px; background: rgba(20,200,213,0.1); border: 1px solid rgba(20,200,213,0.25);
    font-size: 0.78rem; font-weight: 600; color: var(--primary); letter-spacing: 0.06em;
}
.hero-title { font-family: 'Orbitron', sans-serif; font-size: clamp(2rem,5vw,3.2rem); font-weight: 900; line-height: 1.15; letter-spacing: -0.02em; }
.grad-text { background: linear-gradient(135deg, var(--secondary), var(--primary)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text; }
.grad-text-blue { background: linear-gradient(135deg, var(--primary), #60a5fa); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text; }
.section-label { font-size: 0.75rem; font-weight: 700; letter-spacing: 0.18em; text-transform: uppercase; color: var(--primary); }
.section-title { font-family: 'Orbitron', sans-serif; font-size: clamp(1.4rem,3vw,2.2rem); font-weight: 800; line-height: 1.2; }

.reveal { opacity: 0; transform: translateY(28px); transition: opacity 0.6s ease, transform 0.6s ease; }
.reveal.visible { opacity: 1; transform: translateY(0); }

.hamburger { display: none; flex-direction: column; gap: 5px; cursor: pointer; background: none; border: none; padding: 4px; }
.hamburger span { display: block; width: 22px; height: 2px; background: rgba(255,255,255,0.7); border-radius: 2px; transition: 0.2s; }
.theme-toggle {
    width: 36px; height: 36px; display: flex; align-items: center; justify-content: center;
    border-radius: 50%; border: 1px solid rgba(255,255,255,0.12); background: rgba(255,255,255,0.05);
    color: rgba(255,255,255,0.6); cursor: pointer; transition: background 0.2s, color 0.2s;
}
.theme-toggle:hover { background: rgba(20,200,213,0.12); color: var(--primary); }

@media (max-width: 768px) {
    .hamburger { display: flex; }
    .nav-links {
        position: fixed; top: 70px; left: 0; right: 0;
        background: rgba(4,12,16,0.97); backdrop-filter: blur(20px);
        border-bottom: 1px solid rgba(255,255,255,0.08);
        flex-direction: column; padding: 1.5rem 2rem; gap: 1.25rem !important;
        transform: translateY(-110%); transition: transform 0.3s ease; z-index: 99;
    }
    .nav-links.open { transform: translateY(0); }
}
</style>
