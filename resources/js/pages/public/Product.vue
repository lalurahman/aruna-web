<script setup lang="ts">
import { Head } from '@inertiajs/vue3';
import { usePublicPage } from '@/partials/public/usePublicPage';
import PublicNavbar from '@/partials/public/Navbar.vue';
import PublicFooter from '@/partials/public/Footer.vue';
import '@/partials/public/styles.css';

const { navScrolled, isDark, toggleTheme } = usePublicPage();
</script>

<template>
    <Head title="Produk — Aruna Multi Komputer">
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link
            href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;600;700;900&family=Outfit:wght@300;400;500;600&display=swap"
            rel="stylesheet"
        />
    </Head>

    <div :class="['public-page', 'product-page', isDark ? 'theme-dark' : 'theme-light']">
        <div class="bg-mesh"></div>
        <div class="bg-grid"></div>

        <!-- NAVBAR -->
        <PublicNavbar active="product" :scrolled="navScrolled" :is-dark="isDark" @toggle-theme="toggleTheme" />

        <!-- HERO -->
        <section class="relative flex items-center justify-center text-center" style="min-height: 48vh; padding-top: 100px; padding-bottom: 3rem">
            <div class="orb" style="width: 380px; height: 380px; background: rgba(20, 200, 213, 0.09); top: -60px; right: -80px"></div>
            <div class="orb" style="width: 280px; height: 280px; background: rgba(82, 232, 130, 0.07); bottom: 0; left: -60px; animation-delay: 2s"></div>
            <div class="max-w-3xl mx-auto px-6 z-10">
                <div class="badge mb-5 reveal" style="display: inline-flex">
                    <span style="width: 6px; height: 6px; border-radius: 50%; background: var(--primary)"></span>
                    Layanan &amp; Produk
                </div>
                <h1 class="hero-title text-white mb-5 reveal" style="transition-delay: 0.1s">
                    Solusi <span class="grad-text">IT</span><br />Lengkap &amp; Terpercaya
                </h1>
                <p class="reveal" style="color: var(--text-muted); font-size: 1.05rem; line-height: 1.8; transition-delay: 0.2s">
                    Kami menyediakan berbagai produk dan solusi teknologi terkini dari brand-brand terpercaya di industri.
                </p>
            </div>
        </section>

        <div class="glow-line" style="max-width: 600px; margin: 0 auto; opacity: 0.4"></div>

        <!-- KATEGORI PRODUK -->
        <section class="py-24 relative z-10">
            <div class="max-w-7xl mx-auto px-6">
                <div class="text-center mb-14">
                    <div class="section-label mb-3 reveal">Kategori</div>
                    <h2 class="section-title text-white reveal" style="transition-delay: 0.1s">
                        Produk &amp; <span class="grad-text-blue">Layanan</span> Kami
                    </h2>
                </div>

                <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-6">
                    <!-- Komputer & Laptop -->
                    <div class="glass-card p-7 reveal">
                        <div class="prod-icon mb-5">💻</div>
                        <h3 class="prod-title text-white">Komputer &amp; Laptop</h3>
                        <p class="prod-desc">
                            Desktop PC, laptop gaming, ultrabook, workstation, dan server untuk kebutuhan personal hingga enterprise.
                        </p>
                        <div style="display: flex; flex-wrap: wrap; gap: 6px; margin-bottom: 1.25rem">
                            <span class="brand-tag">ASUS</span>
                            <span class="brand-tag">Lenovo</span>
                            <span class="brand-tag">HP</span>
                            <span class="brand-tag">Dell</span>
                        </div>
                        <a href="/contact" class="prod-cta">
                            Tanya Harga
                            <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                        </a>
                    </div>

                    <!-- Networking -->
                    <div class="glass-card p-7 reveal" style="transition-delay: 0.08s">
                        <div class="prod-icon mb-5">🌐</div>
                        <h3 class="prod-title text-white">Networking &amp; Infrastruktur</h3>
                        <p class="prod-desc">
                            Router, switch, access point, kabel LAN, fiber optik, dan solusi jaringan enterprise skala besar.
                        </p>
                        <div style="display: flex; flex-wrap: wrap; gap: 6px; margin-bottom: 1.25rem">
                            <span class="brand-tag">MikroTik</span>
                            <span class="brand-tag">TP-Link</span>
                            <span class="brand-tag">Ubiquiti</span>
                            <span class="brand-tag">Cisco</span>
                        </div>
                        <a href="/contact" class="prod-cta">
                            Tanya Harga
                            <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                        </a>
                    </div>

                    <!-- CCTV -->
                    <div class="glass-card p-7 reveal" style="transition-delay: 0.16s">
                        <div class="prod-icon mb-5">📹</div>
                        <h3 class="prod-title text-white">CCTV &amp; Keamanan</h3>
                        <p class="prod-desc">
                            Kamera IP, DVR/NVR, kamera dome, bullet, PTZ, sistem keamanan terintegrasi untuk gedung dan area luas.
                        </p>
                        <div style="display: flex; flex-wrap: wrap; gap: 6px; margin-bottom: 1.25rem">
                            <span class="brand-tag">Hikvision</span>
                            <span class="brand-tag">Dahua</span>
                            <span class="brand-tag">Uniview</span>
                        </div>
                        <a href="/contact" class="prod-cta">
                            Tanya Harga
                            <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                        </a>
                    </div>

                    <!-- Printer -->
                    <div class="glass-card p-7 reveal" style="transition-delay: 0.08s">
                        <div class="prod-icon mb-5">🖨️</div>
                        <h3 class="prod-title text-white">Printer &amp; Periferal</h3>
                        <p class="prod-desc">
                            Printer inkjet, laser, dot matrix, plotter, scanner, dan berbagai perangkat pendukung kantor lainnya.
                        </p>
                        <div style="display: flex; flex-wrap: wrap; gap: 6px; margin-bottom: 1.25rem">
                            <span class="brand-tag">Epson</span>
                            <span class="brand-tag">Canon</span>
                            <span class="brand-tag">HP</span>
                        </div>
                        <a href="/contact" class="prod-cta">
                            Tanya Harga
                            <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                        </a>
                    </div>

                    <!-- UPS -->
                    <div class="glass-card p-7 reveal" style="transition-delay: 0.16s">
                        <div class="prod-icon mb-5">⚡</div>
                        <h3 class="prod-title text-white">UPS &amp; Power Solution</h3>
                        <p class="prod-desc">
                            UPS offline, online, line-interactive untuk perlindungan perangkat dari gangguan listrik dan lonjakan daya.
                        </p>
                        <div style="display: flex; flex-wrap: wrap; gap: 6px; margin-bottom: 1.25rem">
                            <span class="brand-tag">APC</span>
                            <span class="brand-tag">Eaton</span>
                            <span class="brand-tag">Prolink</span>
                        </div>
                        <a href="/contact" class="prod-cta">
                            Tanya Harga
                            <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                        </a>
                    </div>

                    <!-- Jasa IT -->
                    <div class="glass-card p-7 reveal" style="transition-delay: 0.24s; border-color: rgba(20, 200, 213, 0.2)">
                        <div class="prod-icon mb-5" style="background: linear-gradient(135deg, rgba(20,200,213,0.2), rgba(82,232,130,0.2)); border-color: rgba(20,200,213,0.35)">🔧</div>
                        <h3 class="prod-title text-white">Jasa IT &amp; Konsultasi</h3>
                        <p class="prod-desc">
                            Instalasi jaringan, setup sistem CCTV, konfigurasi server, perawatan perangkat, dan konsultasi IT untuk bisnis Anda.
                        </p>
                        <div style="display: flex; flex-wrap: wrap; gap: 6px; margin-bottom: 1.25rem">
                            <span class="brand-tag" style="background: rgba(20,200,213,0.1); border-color: rgba(20,200,213,0.2); color: var(--primary)">Instalasi</span>
                            <span class="brand-tag" style="background: rgba(20,200,213,0.1); border-color: rgba(20,200,213,0.2); color: var(--primary)">Konsultasi</span>
                            <span class="brand-tag" style="background: rgba(20,200,213,0.1); border-color: rgba(20,200,213,0.2); color: var(--primary)">Maintenance</span>
                        </div>
                        <a href="/contact" class="prod-cta" style="color: var(--primary)">
                            Konsultasi Sekarang
                            <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                        </a>
                    </div>
                </div>
            </div>
        </section>

        <!-- PRINSIPAL & PARTNER -->
        <section class="py-24 relative z-10">
            <div class="max-w-7xl mx-auto px-6">

                <div class="text-center mb-14">
                    <div class="section-label mb-3 reveal">Kemitraan Resmi</div>
                    <h2 class="section-title text-white reveal" style="transition-delay: 0.1s">
                        Prinsipal &amp; <span class="grad-text-blue">Partner</span> Kami
                    </h2>
                </div>

                <!-- Prinsipal Produk -->
                <div class="mb-10">
                    <h3 class="partner-group-title reveal">Prinsipal Produk</h3>
                    <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-5 mt-5">
                        <div class="glass-card p-6 reveal" style="transition-delay:0.05s">
                            <div class="principal-name">ARALINK</div>
                            <p class="principal-desc">Kabel Fiber Optic, Kabel LAN dan perangkat Networking</p>
                        </div>
                        <div class="glass-card p-6 reveal" style="transition-delay:0.1s">
                            <div class="principal-name">EMLINK</div>
                            <p class="principal-desc">Kabel Fiber Optic, Kabel LAN dan perangkat Networking</p>
                        </div>
                        <div class="glass-card p-6 reveal" style="transition-delay:0.15s">
                            <div class="principal-name">ARATECH</div>
                            <p class="principal-desc">Tinta Printer, Kertas Foto</p>
                        </div>
                        <div class="glass-card p-6 reveal" style="transition-delay:0.2s">
                            <div class="principal-name">MAXSPRO</div>
                            <p class="principal-desc">Alat-alat Komputer &amp; Networking</p>
                        </div>
                    </div>
                </div>

                <!-- Master Dealer / VIP Dealer -->
                <div class="glass-card p-8 reveal mb-5" style="transition-delay:0.1s">
                    <h3 class="partner-group-title mb-5">Master Dealer / VIP Dealer / Authorised Dealer Partner</h3>
                    <div style="display:flex; flex-wrap:wrap; gap:10px">
                        <span class="dealer-tag">Ruijie Reyee</span>
                        <span class="dealer-tag">TP-Link</span>
                        <span class="dealer-tag">Mercusys</span>
                        <span class="dealer-tag">HSairPo</span>
                        <span class="dealer-tag">Zimmlink</span>
                        <span class="dealer-tag">Colan</span>
                        <span class="dealer-tag">Commfiber</span>
                        <span class="dealer-tag">Tenda</span>
                        <span class="dealer-tag">Totolink</span>
                        <span class="dealer-tag">Hiview</span>
                        <span class="dealer-tag">Hikvision</span>
                        <span class="dealer-tag">Dahua</span>
                        <span class="dealer-tag">Interluc</span>
                        <span class="dealer-tag">Telkomsel Orbit</span>
                        <span class="dealer-tag">Indosat Hifi Air</span>
                        <span class="dealer-tag">5Star</span>
                        <span class="dealer-tag">Lexar</span>
                    </div>
                </div>

                <!-- Dealer Resmi -->
                <div class="glass-card p-8 reveal" style="transition-delay:0.15s">
                    <h3 class="partner-group-title mb-5">Dealer Resmi</h3>
                    <div style="display:flex; flex-wrap:wrap; gap:10px">
                        <span class="dealer-tag dealer-tag--accent">Epson</span>
                        <span class="dealer-tag dealer-tag--accent">Canon</span>
                        <span class="dealer-tag dealer-tag--accent">Brother</span>
                        <span class="dealer-tag dealer-tag--accent">Asus</span>
                        <span class="dealer-tag dealer-tag--accent">Acer</span>
                        <span class="dealer-tag dealer-tag--accent">Lenovo</span>
                        <span class="dealer-tag dealer-tag--accent">HP</span>
                    </div>
                </div>

            </div>
        </section>

        <!-- STATS -->
        <section class="py-16 relative z-10">
            <div class="max-w-7xl mx-auto px-6">
                <div class="glass reveal" style="border-radius: 28px; padding: 3rem; border-color: rgba(20,200,213,0.12)">
                    <div class="grid grid-cols-2 md:grid-cols-4 gap-8 text-center">
                        <div>
                            <div class="stat-num">500+</div>
                            <div style="font-size: 0.85rem; color: var(--text-dim); margin-top: 6px; line-height: 1.4">Produk<br />Tersedia</div>
                        </div>
                        <div class="reveal" style="transition-delay: 0.1s">
                            <div class="stat-num">50+</div>
                            <div style="font-size: 0.85rem; color: var(--text-dim); margin-top: 6px; line-height: 1.4">Brand<br />Rekanan</div>
                        </div>
                        <div class="reveal" style="transition-delay: 0.2s">
                            <div class="stat-num">1000+</div>
                            <div style="font-size: 0.85rem; color: var(--text-dim); margin-top: 6px; line-height: 1.4">Pelanggan<br />Setia</div>
                        </div>
                        <div class="reveal" style="transition-delay: 0.3s">
                            <div class="stat-num">10+</div>
                            <div style="font-size: 0.85rem; color: var(--text-dim); margin-top: 6px; line-height: 1.4">Tahun<br />Pengalaman</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- CTA -->
        <section class="py-16 relative z-10">
            <div class="max-w-5xl mx-auto px-6">
                <div class="glass reveal" style="border-radius: 28px; padding: 3rem; border-color: rgba(20,200,213,0.15); text-align: center; position: relative; overflow: hidden">
                    <div style="position:absolute; top:-40px; right:-40px; width:220px; height:220px; border-radius:50%; background:rgba(82,232,130,0.07); filter:blur(50px); pointer-events:none"></div>
                    <h3 class="text-white" style="font-family:'Orbitron',sans-serif; font-size:clamp(1.2rem,3vw,1.7rem); font-weight:700; margin-bottom:0.75rem">
                        Tidak Menemukan Produk yang Dicari?
                    </h3>
                    <p style="color:var(--text-muted); margin-bottom:2rem; max-width:460px; margin-left:auto; margin-right:auto; line-height:1.7; font-size:0.95rem">
                        Tim kami siap membantu menemukan produk sesuai kebutuhan dan anggaran Anda. Hubungi kami sekarang.
                    </p>
                    <div style="display:flex; gap:12px; justify-content:center; flex-wrap:wrap">
                        <a href="https://wa.me/6281234567890" class="btn-primary" target="_blank" rel="noopener noreferrer">
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347z"/><path d="M12 0C5.373 0 0 5.373 0 12c0 2.116.549 4.109 1.51 5.845L.057 23.547a.5.5 0 00.608.61l5.83-1.53A11.945 11.945 0 0012 24c6.627 0 12-5.373 12-12S18.627 0 12 0zm0 22c-1.891 0-3.667-.51-5.19-1.4l-.37-.22-3.838 1.007 1.028-3.75-.242-.386A9.96 9.96 0 012 12C2 6.477 6.477 2 12 2s10 4.477 10 10-4.477 10-10 10z"/></svg>
                            WhatsApp Kami
                        </a>
                        <a href="/contact" class="btn-outline">Halaman Kontak</a>
                    </div>
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
    --glass: rgba(255, 255, 255, 0.06);
    --glass-border: rgba(255, 255, 255, 0.12);
}
html { scroll-behavior: smooth; }

.product-page {
    font-family: 'Outfit', sans-serif;
    background: var(--navy);
    color: #e2e8f0;
    overflow-x: hidden;
    min-height: 100vh;
    transition: background 0.3s ease, color 0.3s ease;
}
.product-page .bg-mesh {
    position: fixed; inset: 0; z-index: 0; pointer-events: none;
    background:
        radial-gradient(ellipse 80% 60% at 20% 10%, rgba(20,200,213,0.09) 0%, transparent 60%),
        radial-gradient(ellipse 60% 50% at 80% 80%, rgba(82,232,130,0.07) 0%, transparent 55%),
        radial-gradient(ellipse 50% 40% at 60% 30%, rgba(121,40,202,0.05) 0%, transparent 50%),
        var(--navy);
}
.product-page .bg-grid {
    position: fixed; inset: 0; z-index: 0; pointer-events: none;
    background-image:
        linear-gradient(rgba(20,200,213,0.05) 1px, transparent 1px),
        linear-gradient(90deg, rgba(20,200,213,0.05) 1px, transparent 1px);
    background-size: 60px 60px; opacity: 0.5;
}
.product-page.theme-light { --navy: #f0fdfb; background: #f0fdfb; color: #0d2a2e; }
.product-page.theme-light .bg-mesh { background: radial-gradient(ellipse 80% 60% at 20% 10%, rgba(20,200,213,0.07) 0%, transparent 60%), #f0fdfb; }
.product-page.theme-light .text-white { color: #0d2a2e !important; }
.product-page.theme-light .glass { background: rgba(255,255,255,0.72); border-color: rgba(20,200,213,0.2); }
.product-page.theme-light .glass-card { background: rgba(255,255,255,0.78); border-color: rgba(20,200,213,0.18); }
.product-page.theme-light .glass-card:hover { background: rgba(255,255,255,0.95) !important; border-color: rgba(20,200,213,0.45) !important; }
.product-page.theme-light nav { background: rgba(240,253,251,0.85) !important; border-bottom-color: rgba(20,200,213,0.15) !important; }
.product-page.theme-light nav.scrolled { background: rgba(240,253,251,0.96) !important; }
.product-page.theme-light .nav-link { color: rgba(13,42,46,0.7); }
.product-page.theme-light .nav-link:hover,
.product-page.theme-light .nav-link--active { color: #0d2a2e; }
.product-page.theme-light .nav-links { background: rgba(240,253,251,0.98) !important; }
.product-page.theme-light .hamburger span { background: #0d2a2e; }
.product-page.theme-light .btn-outline { color: #0d2a2e; border-color: rgba(13,42,46,0.2); }
.product-page.theme-light footer { border-top-color: rgba(13,42,46,0.1) !important; }
.product-page.theme-light footer p { color: rgba(13,42,46,0.4) !important; }

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
.nav-link::after {
    content: ''; position: absolute; bottom: -3px; left: 0;
    width: 0; height: 1.5px; background: var(--primary); transition: width 0.25s;
}
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
.btn-outline {
    display: inline-flex; align-items: center; gap: 8px;
    padding: 0.65rem 1.5rem; border-radius: 50px;
    border: 1px solid rgba(255,255,255,0.18); color: rgba(255,255,255,0.75);
    font-weight: 500; font-size: 0.875rem; text-decoration: none;
    transition: background 0.2s, border-color 0.2s; background: transparent;
}
.btn-outline:hover { background: rgba(255,255,255,0.06); border-color: rgba(255,255,255,0.35); color: #fff; }

.glass { background: var(--glass); border: 1px solid var(--glass-border); backdrop-filter: blur(16px); }
.glass-card {
    background: rgba(255,255,255,0.05); border: 1px solid rgba(255,255,255,0.1);
    border-radius: 18px; transition: background 0.25s, border-color 0.25s, box-shadow 0.25s;
}
.glass-card:hover { background: rgba(255,255,255,0.09); border-color: rgba(20,200,213,0.3); box-shadow: 0 16px 48px rgba(20,200,213,0.08); }

.orb { position: absolute; border-radius: 50%; filter: blur(70px); pointer-events: none; animation: float 8s ease-in-out infinite; }
@keyframes float { 0%,100% { transform: translateY(0); } 50% { transform: translateY(-20px); } }
.glow-line { height: 1px; background: linear-gradient(90deg, transparent, var(--primary), transparent); opacity: 0.3; }
.badge {
    display: inline-flex; align-items: center; gap: 8px; padding: 0.4rem 1rem;
    border-radius: 50px; background: rgba(20,200,213,0.1); border: 1px solid rgba(20,200,213,0.25);
    font-size: 0.78rem; font-weight: 600; color: var(--primary); letter-spacing: 0.06em;
}
.hero-title { font-family: 'Orbitron', sans-serif; font-size: clamp(2rem,5vw,3.5rem); font-weight: 900; line-height: 1.15; letter-spacing: -0.02em; }
.grad-text { background: linear-gradient(135deg, var(--secondary), var(--primary)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text; }
.grad-text-blue { background: linear-gradient(135deg, var(--primary), #60a5fa); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text; }
.section-label { font-size: 0.75rem; font-weight: 700; letter-spacing: 0.18em; text-transform: uppercase; color: var(--primary); }
.section-title { font-family: 'Orbitron', sans-serif; font-size: clamp(1.6rem,3.5vw,2.5rem); font-weight: 800; line-height: 1.2; }

.prod-icon {
    width: 52px; height: 52px; display: flex; align-items: center; justify-content: center;
    font-size: 1.5rem; border-radius: 16px;
    background: linear-gradient(135deg, rgba(82,232,130,0.15), rgba(20,200,213,0.1));
    border: 1px solid rgba(82,232,130,0.25);
}
.prod-title { font-family: 'Orbitron', sans-serif; font-size: 1rem; font-weight: 700; margin-bottom: 0.75rem; letter-spacing: 0.03em; }
.prod-desc { color: rgba(255,255,255,0.55); font-size: 0.9rem; line-height: 1.75; margin-bottom: 1.25rem; }
.prod-cta { display: inline-flex; align-items: center; gap: 6px; font-size: 0.82rem; font-weight: 600; color: var(--secondary); text-decoration: none; transition: gap 0.2s; }
.prod-cta:hover { gap: 10px; }

.stat-num { font-family: 'Orbitron', sans-serif; font-size: clamp(1.75rem,4vw,2.5rem); font-weight: 900; background: linear-gradient(135deg, var(--primary), var(--secondary)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text; }
.brand-tag { padding: 3px 10px; border-radius: 20px; font-size: 0.72rem; font-weight: 600; letter-spacing: 0.04em; background: rgba(255,255,255,0.07); border: 1px solid rgba(255,255,255,0.12); color: rgba(255,255,255,0.55); }

.partner-group-title { font-family: 'Orbitron', sans-serif; font-size: 0.95rem; font-weight: 700; color: rgba(255,255,255,0.85); letter-spacing: 0.06em; text-transform: uppercase; }
.principal-name { font-family: 'Orbitron', sans-serif; font-size: 1.05rem; font-weight: 800; color: var(--primary); letter-spacing: 0.08em; margin-bottom: 0.5rem; }
.principal-desc { font-size: 0.85rem; color: rgba(255,255,255,0.5); line-height: 1.65; margin: 0; }
.dealer-tag { padding: 6px 14px; border-radius: 50px; font-size: 0.82rem; font-weight: 600; letter-spacing: 0.03em; background: rgba(255,255,255,0.06); border: 1px solid rgba(255,255,255,0.14); color: rgba(255,255,255,0.7); transition: background 0.2s, border-color 0.2s, color 0.2s; }
.dealer-tag:hover { background: rgba(20,200,213,0.1); border-color: rgba(20,200,213,0.3); color: var(--primary); }
.dealer-tag--accent { background: rgba(20,200,213,0.07); border-color: rgba(20,200,213,0.2); color: rgba(20,200,213,0.85); }
.dealer-tag--accent:hover { background: rgba(20,200,213,0.15); border-color: rgba(20,200,213,0.4); color: var(--primary); }

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
