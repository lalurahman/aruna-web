<script setup lang="ts">
import { Head } from '@inertiajs/vue3';
import { usePublicPage } from '@/partials/public/usePublicPage';
import PublicNavbar from '@/partials/public/Navbar.vue';
import PublicFooter from '@/partials/public/Footer.vue';
import '@/partials/public/styles.css';

const { navScrolled, isDark, toggleTheme } = usePublicPage(0.12);
</script>

<template>
    <Head title="Aruna Multi Komputer — Solusi Teknologi Terpercaya">
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link
            href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;600;700;900&family=Outfit:wght@300;400;500;600&display=swap"
            rel="stylesheet"
        />
    </Head>

    <div :class="['public-page', 'home-page', isDark ? 'theme-dark' : 'theme-light']">
        <div class="bg-mesh"></div>
        <div class="bg-grid"></div>

        <!-- NAVBAR -->
        <PublicNavbar active="home" :scrolled="navScrolled" :is-dark="isDark" @toggle-theme="toggleTheme" />

        <!-- HERO -->
        <section id="hero" class="relative min-h-screen flex items-center" style="padding-top: 80px">
            <div
                class="orb"
                style="width: 400px; height: 400px; background: rgba(82, 232, 130, 0.10); top: -100px; right: -80px"
            ></div>
            <div
                class="orb"
                style="
                    width: 300px;
                    height: 300px;
                    background: rgba(20, 200, 213, 0.08);
                    bottom: 50px;
                    left: -60px;
                    animation-delay: 2s;
                    animation-duration: 10s;
                "
            ></div>
            <div
                class="orb"
                style="
                    width: 200px;
                    height: 200px;
                    background: rgba(121, 40, 202, 0.1);
                    top: 40%;
                    left: 45%;
                    animation-delay: 4s;
                "
            ></div>

            <div class="max-w-7xl mx-auto px-6 w-full z-10">
                <div class="grid lg:grid-cols-2 gap-16 items-center">
                    <!-- Left -->
                    <div>
                        <div class="badge mb-6 reveal">
                            <span style="width: 6px; height: 6px; border-radius: 50%; background: var(--primary)"></span>
                            Distribusi &amp; Retail Teknologi IT
                        </div>
                        <h1 class="hero-title text-white mb-6 reveal" style="transition-delay: 0.1s">
                            Solusi <span class="grad-text">Teknologi</span><br />Terbaik untuk<br />Bisnis Anda
                        </h1>
                        <p
                            class="text-lg mb-10 reveal"
                            style="color: rgba(255, 255, 255, 0.6); line-height: 1.75; max-width: 500px; transition-delay: 0.2s"
                        >
                            Aruna Multi Komputer hadir sebagai mitra terpercaya dalam distribusi dan retail perangkat
                            komputer, networking, CCTV, dan solusi IT lengkap untuk memenuhi kebutuhan bisnis Anda.
                        </p>
                        <div class="flex flex-wrap gap-4 reveal" style="transition-delay: 0.3s">
                            <a href="#produk" class="btn-primary">
                                Lihat Produk
                                <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5">
                                    <path d="M5 12h14M12 5l7 7-7 7" />
                                </svg>
                            </a>
                            <a href="#tentang" class="btn-outline">Tentang Kami</a>
                        </div>
                        <div class="flex gap-8 mt-14 reveal" style="transition-delay: 0.4s">
                            <div>
                                <div class="stat-num" style="font-size: 1.75rem">500+</div>
                                <div style="font-size: 0.8rem; color: rgba(255, 255, 255, 0.45); margin-top: 2px">Produk Tersedia</div>
                            </div>
                            <div style="width: 1px; background: rgba(255, 255, 255, 0.1)"></div>
                            <div>
                                <div class="stat-num" style="font-size: 1.75rem">10+</div>
                                <div style="font-size: 0.8rem; color: rgba(255, 255, 255, 0.45); margin-top: 2px">Tahun Pengalaman</div>
                            </div>
                            <div style="width: 1px; background: rgba(255, 255, 255, 0.1)"></div>
                            <div>
                                <div class="stat-num" style="font-size: 1.75rem">1000+</div>
                                <div style="font-size: 0.8rem; color: rgba(255, 255, 255, 0.45); margin-top: 2px">Klien Puas</div>
                            </div>
                        </div>
                    </div>

                    <!-- Right — Network Topology Illustration -->
                    <div class="relative reveal" style="transition-delay: 0.25s">
                        <div class="net-canvas-wrap">
                            <!-- SVG network diagram -->
                            <svg class="net-svg" viewBox="0 0 480 420" fill="none" xmlns="http://www.w3.org/2000/svg" aria-label="Diagram jaringan komputer">
                                <!-- ── connection lines ── -->
                                <!-- core → switches -->
                                <line class="net-line net-line--pulse" x1="240" y1="100" x2="130" y2="200"/>
                                <line class="net-line net-line--pulse" x1="240" y1="100" x2="350" y2="200" style="animation-delay:.4s"/>
                                <!-- left switch → nodes -->
                                <line class="net-line" x1="130" y1="200" x2="60"  y2="300"/>
                                <line class="net-line" x1="130" y1="200" x2="145" y2="310"/>
                                <line class="net-line" x1="130" y1="200" x2="210" y2="300"/>
                                <!-- right switch → nodes -->
                                <line class="net-line" x1="350" y1="200" x2="270" y2="300"/>
                                <line class="net-line" x1="350" y1="200" x2="355" y2="310"/>
                                <line class="net-line" x1="350" y1="200" x2="420" y2="300"/>
                                <!-- cross links -->
                                <line class="net-line net-line--dim" x1="130" y1="200" x2="350" y2="200"/>

                                <!-- ── travelling data packets ── -->
                                <circle class="net-packet" r="4" fill="var(--primary)">
                                    <animateMotion dur="2.2s" repeatCount="indefinite" begin="0s">
                                        <mpath href="#path-core-left"/>
                                    </animateMotion>
                                </circle>
                                <circle class="net-packet" r="4" fill="var(--secondary)">
                                    <animateMotion dur="2.2s" repeatCount="indefinite" begin="1.1s">
                                        <mpath href="#path-core-right"/>
                                    </animateMotion>
                                </circle>
                                <circle class="net-packet" r="3" fill="var(--primary)" opacity=".7">
                                    <animateMotion dur="1.8s" repeatCount="indefinite" begin="0.5s">
                                        <mpath href="#path-left-node1"/>
                                    </animateMotion>
                                </circle>
                                <circle class="net-packet" r="3" fill="var(--secondary)" opacity=".7">
                                    <animateMotion dur="1.8s" repeatCount="indefinite" begin="1.4s">
                                        <mpath href="#path-right-node3"/>
                                    </animateMotion>
                                </circle>

                                <!-- hidden motion paths -->
                                <defs>
                                    <path id="path-core-left"  d="M240,100 L130,200"/>
                                    <path id="path-core-right" d="M240,100 L350,200"/>
                                    <path id="path-left-node1" d="M130,200 L60,300"/>
                                    <path id="path-right-node3" d="M350,200 L420,300"/>
                                </defs>

                                <!-- ── CORE ROUTER ── -->
                                <g class="net-node" transform="translate(240,100)">
                                    <circle class="net-node__ring" r="34"/>
                                    <circle class="net-node__bg net-node__bg--core" r="26"/>
                                    <!-- router icon -->
                                    <circle r="8" cx="0" cy="-2" stroke="var(--primary)" stroke-width="1.8" fill="none"/>
                                    <line x1="-13" y1="7" x2="13" y2="7" stroke="var(--primary)" stroke-width="1.8" stroke-linecap="round"/>
                                    <line x1="-8"  y1="7" x2="-8"  y2="12" stroke="var(--primary)" stroke-width="1.6" stroke-linecap="round"/>
                                    <line x1="0"   y1="7" x2="0"   y2="12" stroke="var(--primary)" stroke-width="1.6" stroke-linecap="round"/>
                                    <line x1="8"   y1="7" x2="8"   y2="12" stroke="var(--primary)" stroke-width="1.6" stroke-linecap="round"/>
                                    <text class="net-label net-label--core" y="48" text-anchor="middle">CORE ROUTER</text>
                                </g>

                                <!-- ── LEFT SWITCH ── -->
                                <g class="net-node" transform="translate(130,200)">
                                    <circle class="net-node__ring" r="28"/>
                                    <circle class="net-node__bg" r="21"/>
                                    <!-- switch icon -->
                                    <rect x="-10" y="-5" width="20" height="10" rx="2" stroke="var(--secondary)" stroke-width="1.6" fill="none"/>
                                    <circle cx="-6" cy="0" r="1.5" fill="var(--secondary)"/>
                                    <circle cx="0"  cy="0" r="1.5" fill="var(--secondary)"/>
                                    <circle cx="6"  cy="0" r="1.5" fill="var(--secondary)"/>
                                    <text class="net-label" y="36" text-anchor="middle">SW-01</text>
                                </g>

                                <!-- ── RIGHT SWITCH ── -->
                                <g class="net-node" transform="translate(350,200)">
                                    <circle class="net-node__ring" r="28"/>
                                    <circle class="net-node__bg" r="21"/>
                                    <rect x="-10" y="-5" width="20" height="10" rx="2" stroke="var(--secondary)" stroke-width="1.6" fill="none"/>
                                    <circle cx="-6" cy="0" r="1.5" fill="var(--secondary)"/>
                                    <circle cx="0"  cy="0" r="1.5" fill="var(--secondary)"/>
                                    <circle cx="6"  cy="0" r="1.5" fill="var(--secondary)"/>
                                    <text class="net-label" y="36" text-anchor="middle">SW-02</text>
                                </g>

                                <!-- ── LEAF NODES (6 PCs / devices) ── -->
                                <!-- PC 1 -->
                                <g class="net-node net-node--leaf" transform="translate(60,300)">
                                    <circle class="net-node__bg net-node__bg--leaf" r="18"/>
                                    <rect x="-8" y="-7" width="16" height="11" rx="1.5" stroke="rgba(255,255,255,0.6)" stroke-width="1.4" fill="none"/>
                                    <line x1="-4" y1="4" x2="4" y2="4" stroke="rgba(255,255,255,0.6)" stroke-width="1.4" stroke-linecap="round"/>
                                    <line x1="0" y1="4" x2="0" y2="8" stroke="rgba(255,255,255,0.6)" stroke-width="1.4" stroke-linecap="round"/>
                                    <text class="net-label net-label--leaf" y="28" text-anchor="middle">PC-01</text>
                                </g>
                                <!-- PC 2 -->
                                <g class="net-node net-node--leaf" transform="translate(145,310)">
                                    <circle class="net-node__bg net-node__bg--leaf" r="18"/>
                                    <rect x="-8" y="-7" width="16" height="11" rx="1.5" stroke="rgba(255,255,255,0.6)" stroke-width="1.4" fill="none"/>
                                    <line x1="-4" y1="4" x2="4" y2="4" stroke="rgba(255,255,255,0.6)" stroke-width="1.4" stroke-linecap="round"/>
                                    <line x1="0" y1="4" x2="0" y2="8" stroke="rgba(255,255,255,0.6)" stroke-width="1.4" stroke-linecap="round"/>
                                    <text class="net-label net-label--leaf" y="28" text-anchor="middle">PC-02</text>
                                </g>
                                <!-- CCTV node -->
                                <g class="net-node net-node--leaf" transform="translate(210,300)">
                                    <circle class="net-node__bg net-node__bg--leaf" r="18"/>
                                    <!-- camera icon -->
                                    <path d="M-9,-4 h12 a2,2 0 0 1 2,2 v4 a2,2 0 0 1-2,2 h-12 a2,2 0 0 1-2,-2 v-4 a2,2 0 0 1 2,-2z" stroke="rgba(255,255,255,0.6)" stroke-width="1.3" fill="none"/>
                                    <polygon points="7,-3 13,-6 13,6 7,3" stroke="rgba(255,255,255,0.6)" stroke-width="1.2" fill="none"/>
                                    <text class="net-label net-label--leaf" y="28" text-anchor="middle">CCTV</text>
                                </g>
                                <!-- AP node -->
                                <g class="net-node net-node--leaf" transform="translate(270,300)">
                                    <circle class="net-node__bg net-node__bg--leaf" r="18"/>
                                    <!-- wifi icon -->
                                    <path d="M-10,-1 a14,14 0 0 1 20,0" stroke="rgba(255,255,255,0.5)" stroke-width="1.4" fill="none" stroke-linecap="round"/>
                                    <path d="M-6,3 a9,9 0 0 1 12,0" stroke="rgba(255,255,255,0.65)" stroke-width="1.4" fill="none" stroke-linecap="round"/>
                                    <path d="M-2,7 a5,5 0 0 1 4,0" stroke="rgba(255,255,255,0.8)" stroke-width="1.4" fill="none" stroke-linecap="round"/>
                                    <circle cx="0" cy="9" r="1.5" fill="rgba(255,255,255,0.8)"/>
                                    <text class="net-label net-label--leaf" y="28" text-anchor="middle">AP</text>
                                </g>
                                <!-- Server node -->
                                <g class="net-node net-node--leaf" transform="translate(355,310)">
                                    <circle class="net-node__bg net-node__bg--leaf" r="18"/>
                                    <!-- server icon -->
                                    <rect x="-8" y="-8" width="16" height="6" rx="1.5" stroke="rgba(255,255,255,0.6)" stroke-width="1.3" fill="none"/>
                                    <rect x="-8" y="1"  width="16" height="6" rx="1.5" stroke="rgba(255,255,255,0.6)" stroke-width="1.3" fill="none"/>
                                    <circle cx="5" cy="-5" r="1.2" fill="var(--secondary)"/>
                                    <circle cx="5" cy="4"  r="1.2" fill="var(--primary)"/>
                                    <text class="net-label net-label--leaf" y="28" text-anchor="middle">SERVER</text>
                                </g>
                                <!-- UPS node -->
                                <g class="net-node net-node--leaf" transform="translate(420,300)">
                                    <circle class="net-node__bg net-node__bg--leaf" r="18"/>
                                    <!-- bolt icon -->
                                    <polygon points="2,-9 -6,1 0,1 -2,9 8,-1 2,-1" stroke="rgba(255,255,255,0.7)" stroke-width="1.2" fill="none" stroke-linejoin="round"/>
                                    <text class="net-label net-label--leaf" y="28" text-anchor="middle">UPS</text>
                                </g>

                                <!-- ── status badges ── -->
                                <g transform="translate(240,356)">
                                    <rect x="-80" y="0" width="160" height="30" rx="15" fill="rgba(20,200,213,0.08)" stroke="rgba(20,200,213,0.2)" stroke-width="1"/>
                                    <circle cx="-55" cy="15" r="4" fill="var(--secondary)">
                                        <animate attributeName="opacity" values="1;0.4;1" dur="1.8s" repeatCount="indefinite"/>
                                    </circle>
                                    <text x="-44" y="20" font-family="Outfit,sans-serif" font-size="10" fill="rgba(255,255,255,0.75)" class="net-status-text">6 Perangkat Terhubung</text>
                                    <circle cx="60" cy="15" r="3" fill="var(--primary)" opacity=".8"/>
                                </g>
                            </svg>

                            <!-- floating info chips -->
                            <div class="net-chip net-chip--tl">
                                <span class="net-chip__dot" style="background:var(--secondary)"></span>
                                <span>Jaringan Aktif</span>
                            </div>
                            <div class="net-chip net-chip--br">
                                <span class="net-chip__dot" style="background:var(--primary)"></span>
                                <span>Latency &lt;1 ms</span>
                            </div>
                        </div>

                        <!-- glow under canvas -->
                        <div style="position:absolute;bottom:-30px;left:50%;transform:translateX(-50%);width:60%;height:60px;background:rgba(20,200,213,0.15);filter:blur(40px);border-radius:50%;pointer-events:none"></div>
                    </div>
                </div>
            </div>
            <div
                style="
                    position: absolute;
                    bottom: 2rem;
                    left: 50%;
                    transform: translateX(-50%);
                    display: flex;
                    flex-direction: column;
                    align-items: center;
                    gap: 6px;
                    opacity: 0.4;
                "
            >
                <div style="font-size: 0.7rem; letter-spacing: 0.15em; color: var(--text-heading)">SCROLL</div>
                <div style="width: 1px; height: 40px; background: linear-gradient(to bottom, #fff, transparent)"></div>
            </div>
        </section>

        <div class="glow-line" style="max-width: 600px; margin: 0 auto; opacity: 0.4"></div>

        <!-- TENTANG -->
        <section id="tentang" class="py-28 relative z-10">
            <div class="max-w-7xl mx-auto px-6">
                <div class="grid lg:grid-cols-2 gap-16 items-center">
                    <div class="relative reveal">
                        <div class="glass-card p-6" style="border-radius: 28px">
                            <div
                                style="
                                    background: linear-gradient(135deg, rgba(82, 232, 130, 0.10), rgba(20, 200, 213, 0.08));
                                    border-radius: 20px;
                                    padding: 2.5rem;
                                    text-align: center;
                                    border: 1px solid rgba(20, 200, 213, 0.1);
                                    margin-bottom: 1rem;
                                "
                            >
                                <div style="font-size: 4rem">🏢</div>
                                <div class="logo-text text-white text-base mt-3">ARUNA MULTI KOMPUTER</div>
                                <div style="font-size: 0.7rem; color: var(--primary); letter-spacing: 0.15em; margin-top: 4px">
                                    MAKASSAR, SULAWESI SELATAN
                                </div>
                            </div>
                            <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 0.75rem">
                                <div class="glass-card" style="padding: 1rem; border-radius: 14px; text-align: center">
                                    <div style="font-size: 1.75rem; margin-bottom: 4px">🎯</div>
                                    <div style="font-size: 0.78rem; font-weight: 600; color: #fff">Terpercaya</div>
                                    <div style="font-size: 0.68rem; color: rgba(255, 255, 255, 0.4)">Sejak 10+ tahun</div>
                                </div>
                                <div class="glass-card" style="padding: 1rem; border-radius: 14px; text-align: center">
                                    <div style="font-size: 1.75rem; margin-bottom: 4px">⚡</div>
                                    <div style="font-size: 0.78rem; font-weight: 600; color: #fff">Responsif</div>
                                    <div style="font-size: 0.68rem; color: rgba(255, 255, 255, 0.4)">Layanan cepat</div>
                                </div>
                                <div class="glass-card" style="padding: 1rem; border-radius: 14px; text-align: center">
                                    <div style="font-size: 1.75rem; margin-bottom: 4px">💎</div>
                                    <div style="font-size: 0.78rem; font-weight: 600; color: #fff">Berkualitas</div>
                                    <div style="font-size: 0.68rem; color: rgba(255, 255, 255, 0.4)">Produk original</div>
                                </div>
                                <div class="glass-card" style="padding: 1rem; border-radius: 14px; text-align: center">
                                    <div style="font-size: 1.75rem; margin-bottom: 4px">🤝</div>
                                    <div style="font-size: 0.78rem; font-weight: 600; color: #fff">Profesional</div>
                                    <div style="font-size: 0.68rem; color: rgba(255, 255, 255, 0.4)">Tim ahli IT</div>
                                </div>
                            </div>
                        </div>
                        <div
                            style="
                                position: absolute;
                                top: -20px;
                                left: -20px;
                                width: 120px;
                                height: 120px;
                                border-radius: 50%;
                                background: rgba(82, 232, 130, 0.06);
                                filter: blur(40px);
                                pointer-events: none;
                            "
                        ></div>
                    </div>
                    <div>
                        <div class="section-label mb-3 reveal">Tentang Kami</div>
                        <h2 class="section-title text-white mb-6 reveal" style="transition-delay: 0.1s">
                            Mitra <span class="grad-text-blue">Teknologi</span><br />yang Anda Percaya
                        </h2>
                        <p class="mb-5 reveal" style="color: rgba(255, 255, 255, 0.6); line-height: 1.8; transition-delay: 0.15s">
                            Aruna Multi Komputer adalah perusahaan yang bergerak di bidang distribusi dan retail perangkat teknologi informasi. Kami
                            menyediakan solusi lengkap mulai dari komputer, laptop, perangkat networking, sistem CCTV, hingga berbagai aksesori IT
                            untuk kebutuhan personal maupun korporat.
                        </p>
                        <p class="mb-8 reveal" style="color: rgba(255, 255, 255, 0.6); line-height: 1.8; transition-delay: 0.2s">
                            Dengan pengalaman lebih dari satu dekade, kami telah melayani ribuan pelanggan dari berbagai segmen, mulai dari pengguna
                            individu, UKM, instansi pemerintah, hingga perusahaan besar di seluruh wilayah Indonesia.
                        </p>
                        <div style="display: flex; flex-direction: column; gap: 0.85rem">
                            <div class="flex items-center gap-3 reveal" style="transition-delay: 0.25s">
                                <div class="feat-dot"></div>
                                <span style="color: rgba(255, 255, 255, 0.75); font-size: 0.95rem">Distributor resmi brand teknologi ternama</span>
                            </div>
                            <div class="flex items-center gap-3 reveal" style="transition-delay: 0.3s">
                                <div class="feat-dot"></div>
                                <span style="color: rgba(255, 255, 255, 0.75); font-size: 0.95rem">Garansi produk dan layanan purna jual terpercaya</span>
                            </div>
                            <div class="flex items-center gap-3 reveal" style="transition-delay: 0.35s">
                                <div class="feat-dot"></div>
                                <span style="color: rgba(255, 255, 255, 0.75); font-size: 0.95rem">Tim teknisi bersertifikat dan profesional</span>
                            </div>
                            <div class="flex items-center gap-3 reveal" style="transition-delay: 0.4s">
                                <div class="feat-dot"></div>
                                <span style="color: rgba(255, 255, 255, 0.75); font-size: 0.95rem">Harga kompetitif dengan kualitas terjamin</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- PRODUK -->
        <section id="produk" class="py-28 relative z-10">
            <div class="max-w-7xl mx-auto px-6">
                <div class="text-center mb-16">
                    <div class="section-label mb-3 reveal">Layanan &amp; Produk</div>
                    <h2 class="section-title text-white reveal" style="transition-delay: 0.1s">
                        Solusi <span class="grad-text-blue">Lengkap</span> untuk Kebutuhan IT Anda
                    </h2>
                    <p class="mt-4 reveal" style="color: rgba(255, 255, 255, 0.5); max-width: 540px; margin: 1rem auto 0; line-height: 1.7; transition-delay: 0.15s">
                        Kami menyediakan berbagai produk dan solusi teknologi terkini dari brand-brand terpercaya di industri.
                    </p>
                </div>
                <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-6">
                    <div class="glass-card p-7 reveal">
                        <div class="prod-icon mb-5">💻</div>
                        <h3 style="font-family: 'Orbitron', sans-serif; font-size: 1rem; font-weight: 700; color: #fff; margin-bottom: 0.75rem; letter-spacing: 0.03em">
                            Komputer &amp; Laptop
                        </h3>
                        <p style="color: rgba(255, 255, 255, 0.55); font-size: 0.9rem; line-height: 1.75; margin-bottom: 1.25rem">
                            Desktop PC, laptop gaming, ultrabook, workstation, dan server untuk kebutuhan personal hingga enterprise.
                        </p>
                        <div style="display: flex; flex-wrap: wrap; gap: 6px">
                            <span class="brand-tag">ASUS</span>
                            <span class="brand-tag">Lenovo</span>
                            <span class="brand-tag">HP</span>
                            <span class="brand-tag">Dell</span>
                        </div>
                    </div>

                    <div class="glass-card p-7 reveal" style="transition-delay: 0.08s">
                        <div class="prod-icon mb-5">🌐</div>
                        <h3 style="font-family: 'Orbitron', sans-serif; font-size: 1rem; font-weight: 700; color: #fff; margin-bottom: 0.75rem; letter-spacing: 0.03em">
                            Networking &amp; Infrastruktur
                        </h3>
                        <p style="color: rgba(255, 255, 255, 0.55); font-size: 0.9rem; line-height: 1.75; margin-bottom: 1.25rem">
                            Router, switch, access point, kabel LAN, fiber optik, dan solusi jaringan enterprise skala besar.
                        </p>
                        <div style="display: flex; flex-wrap: wrap; gap: 6px">
                            <span class="brand-tag">MikroTik</span>
                            <span class="brand-tag">TP-Link</span>
                            <span class="brand-tag">Ubiquiti</span>
                            <span class="brand-tag">Cisco</span>
                        </div>
                    </div>

                    <div class="glass-card p-7 reveal" style="transition-delay: 0.16s">
                        <div class="prod-icon mb-5">📹</div>
                        <h3 style="font-family: 'Orbitron', sans-serif; font-size: 1rem; font-weight: 700; color: #fff; margin-bottom: 0.75rem; letter-spacing: 0.03em">
                            CCTV &amp; Keamanan
                        </h3>
                        <p style="color: rgba(255, 255, 255, 0.55); font-size: 0.9rem; line-height: 1.75; margin-bottom: 1.25rem">
                            Kamera IP, DVR/NVR, kamera dome, bullet, PTZ, sistem keamanan terintegrasi untuk gedung dan area luas.
                        </p>
                        <div style="display: flex; flex-wrap: wrap; gap: 6px">
                            <span class="brand-tag">Hikvision</span>
                            <span class="brand-tag">Dahua</span>
                            <span class="brand-tag">Uniview</span>
                        </div>
                    </div>

                    <div class="glass-card p-7 reveal" style="transition-delay: 0.08s">
                        <div class="prod-icon mb-5">🖨️</div>
                        <h3 style="font-family: 'Orbitron', sans-serif; font-size: 1rem; font-weight: 700; color: #fff; margin-bottom: 0.75rem; letter-spacing: 0.03em">
                            Printer &amp; Periferal
                        </h3>
                        <p style="color: rgba(255, 255, 255, 0.55); font-size: 0.9rem; line-height: 1.75; margin-bottom: 1.25rem">
                            Printer inkjet, laser, dot matrix, plotter, scanner, dan berbagai perangkat pendukung kantor lainnya.
                        </p>
                        <div style="display: flex; flex-wrap: wrap; gap: 6px">
                            <span class="brand-tag">Epson</span>
                            <span class="brand-tag">Canon</span>
                            <span class="brand-tag">HP</span>
                        </div>
                    </div>

                    <div class="glass-card p-7 reveal" style="transition-delay: 0.16s">
                        <div class="prod-icon mb-5">⚡</div>
                        <h3 style="font-family: 'Orbitron', sans-serif; font-size: 1rem; font-weight: 700; color: #fff; margin-bottom: 0.75rem; letter-spacing: 0.03em">
                            UPS &amp; Power Solution
                        </h3>
                        <p style="color: rgba(255, 255, 255, 0.55); font-size: 0.9rem; line-height: 1.75; margin-bottom: 1.25rem">
                            UPS offline, online, line-interactive untuk perlindungan perangkat dari gangguan listrik dan lonjakan daya.
                        </p>
                        <div style="display: flex; flex-wrap: wrap; gap: 6px">
                            <span class="brand-tag">APC</span>
                            <span class="brand-tag">Eaton</span>
                            <span class="brand-tag">Prolink</span>
                        </div>
                    </div>

                    <div class="glass-card p-7 reveal" style="transition-delay: 0.24s; border-color: rgba(20, 200, 213, 0.2)">
                        <div
                            class="prod-icon mb-5"
                            style="background: linear-gradient(135deg, rgba(20, 200, 213, 0.2), rgba(82, 232, 130, 0.2)); border-color: rgba(20, 200, 213, 0.35)"
                        >
                            🔧
                        </div>
                        <h3 style="font-family: 'Orbitron', sans-serif; font-size: 1rem; font-weight: 700; color: #fff; margin-bottom: 0.75rem; letter-spacing: 0.03em">
                            Jasa IT &amp; Konsultasi
                        </h3>
                        <p style="color: rgba(255, 255, 255, 0.55); font-size: 0.9rem; line-height: 1.75; margin-bottom: 1.25rem">
                            Instalasi jaringan, setup sistem CCTV, konfigurasi server, perawatan perangkat, dan konsultasi IT untuk bisnis Anda.
                        </p>
                        <a href="#kontak" style="display: inline-flex; align-items: center; gap: 6px; font-size: 0.82rem; font-weight: 600; color: var(--primary); text-decoration: none">
                            Konsultasi Sekarang
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5">
                                <path d="M5 12h14M12 5l7 7-7 7" />
                            </svg>
                        </a>
                    </div>
                </div>
            </div>
        </section>

        <!-- STATS -->
        <section id="stats" class="py-20 relative z-10">
            <div class="max-w-7xl mx-auto px-6">
                <div class="glass reveal" style="border-radius: 28px; padding: 3rem; border-color: rgba(20, 200, 213, 0.12)">
                    <div class="grid grid-cols-2 md:grid-cols-4 gap-8 text-center">
                        <div>
                            <div class="stat-num">1000+</div>
                            <div style="font-size: 0.85rem; color: rgba(255, 255, 255, 0.5); margin-top: 6px; line-height: 1.4">Pelanggan<br />Setia</div>
                        </div>
                        <div class="reveal" style="transition-delay: 0.1s">
                            <div class="stat-num">500+</div>
                            <div style="font-size: 0.85rem; color: rgba(255, 255, 255, 0.5); margin-top: 6px; line-height: 1.4">Produk<br />Tersedia</div>
                        </div>
                        <div class="reveal" style="transition-delay: 0.2s">
                            <div class="stat-num">50+</div>
                            <div style="font-size: 0.85rem; color: rgba(255, 255, 255, 0.5); margin-top: 6px; line-height: 1.4">Brand<br />Rekanan</div>
                        </div>
                        <div class="reveal" style="transition-delay: 0.3s">
                            <div class="stat-num">10+</div>
                            <div style="font-size: 0.85rem; color: rgba(255, 255, 255, 0.5); margin-top: 6px; line-height: 1.4">Tahun<br />Pengalaman</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- KEUNGGULAN -->
        <section id="keunggulan" class="py-28 relative z-10">
            <div class="max-w-7xl mx-auto px-6">
                <div class="text-center mb-16">
                    <div class="section-label mb-3 reveal">Mengapa Kami</div>
                    <h2 class="section-title text-white reveal" style="transition-delay: 0.1s">
                        Keunggulan <span class="grad-text-blue">Aruna</span><br />Multi Komputer
                    </h2>
                </div>
                <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-6">
                    <div class="glass-card p-7 reveal">
                        <div class="keung-icon">✅</div>
                        <h4 style="font-weight: 600; color: #fff; margin-bottom: 0.6rem; font-size: 1rem">Produk 100% Original</h4>
                        <p style="color: rgba(255, 255, 255, 0.5); font-size: 0.875rem; line-height: 1.7">
                            Semua produk kami dijamin original dengan garansi resmi dari distributor dan pabrikan langsung.
                        </p>
                    </div>
                    <div class="glass-card p-7 reveal" style="transition-delay: 0.08s">
                        <div class="keung-icon">💰</div>
                        <h4 style="font-weight: 600; color: #fff; margin-bottom: 0.6rem; font-size: 1rem">Harga Kompetitif</h4>
                        <p style="color: rgba(255, 255, 255, 0.5); font-size: 0.875rem; line-height: 1.7">
                            Dapatkan harga terbaik dengan kualitas premium. Kami memberikan penawaran spesial untuk pembelian dalam jumlah besar.
                        </p>
                    </div>
                    <div class="glass-card p-7 reveal" style="transition-delay: 0.16s">
                        <div class="keung-icon">🚀</div>
                        <h4 style="font-weight: 600; color: #fff; margin-bottom: 0.6rem; font-size: 1rem">Pengiriman Cepat</h4>
                        <p style="color: rgba(255, 255, 255, 0.5); font-size: 0.875rem; line-height: 1.7">
                            Layanan pengiriman cepat ke seluruh wilayah dengan pengemasan aman dan profesional untuk menjaga produk tetap sempurna.
                        </p>
                    </div>
                    <div class="glass-card p-7 reveal" style="transition-delay: 0.08s">
                        <div class="keung-icon">🛡️</div>
                        <h4 style="font-weight: 600; color: #fff; margin-bottom: 0.6rem; font-size: 1rem">Garansi &amp; After Sales</h4>
                        <p style="color: rgba(255, 255, 255, 0.5); font-size: 0.875rem; line-height: 1.7">
                            Layanan purna jual yang responsif. Tim kami siap membantu klaim garansi dan perbaikan perangkat Anda.
                        </p>
                    </div>
                    <div class="glass-card p-7 reveal" style="transition-delay: 0.16s">
                        <div class="keung-icon">👨‍💻</div>
                        <h4 style="font-weight: 600; color: #fff; margin-bottom: 0.6rem; font-size: 1rem">Tim Ahli Bersertifikat</h4>
                        <p style="color: rgba(255, 255, 255, 0.5); font-size: 0.875rem; line-height: 1.7">
                            Didukung tim teknisi dan sales yang berpengalaman dan bersertifikat untuk memberikan solusi terbaik bagi bisnis Anda.
                        </p>
                    </div>
                    <div class="glass-card p-7 reveal" style="transition-delay: 0.24s">
                        <div class="keung-icon">📞</div>
                        <h4 style="font-weight: 600; color: #fff; margin-bottom: 0.6rem; font-size: 1rem">Support 7 Hari Seminggu</h4>
                        <p style="color: rgba(255, 255, 255, 0.5); font-size: 0.875rem; line-height: 1.7">
                            Kami hadir setiap hari untuk menjawab pertanyaan, memberikan konsultasi, dan memastikan kepuasan pelanggan kami.
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <!-- KONTAK -->
        <section id="kontak" class="py-28 relative z-10">
            <div class="max-w-7xl mx-auto px-6">
                <!-- CTA Banner -->
                <div
                    class="glass reveal"
                    style="border-radius: 28px; padding: 3rem; border-color: rgba(20, 200, 213, 0.15); margin-bottom: 4rem; position: relative; overflow: hidden"
                >
                    <div
                        style="position: absolute; top: -40px; right: -40px; width: 220px; height: 220px; border-radius: 50%; background: rgba(82, 232, 130, 0.08); filter: blur(50px); pointer-events: none"
                    ></div>
                    <div class="flex flex-col md:flex-row items-center justify-between gap-8">
                        <div>
                            <h3 style="font-family: 'Orbitron', sans-serif; font-size: 1.5rem; font-weight: 700; color: #fff; margin-bottom: 0.5rem">
                                Siap Tingkatkan Infrastruktur IT Anda?
                            </h3>
                            <p style="color: rgba(255, 255, 255, 0.55); font-size: 0.95rem">
                                Konsultasikan kebutuhan teknologi Anda bersama tim ahli kami sekarang juga.
                            </p>
                        </div>
                        <a href="https://wa.me/6281234567890" class="btn-primary" target="_blank" rel="noopener noreferrer" style="flex-shrink: 0">
                            💬 WhatsApp Kami
                        </a>
                    </div>
                </div>

                <!-- Contact Grid -->
                <div class="grid gap-10">
                    <div class="reveal">
                        <div class="section-label mb-3">Hubungi Kami</div>
                        <h2 class="section-title text-white mb-6">Ada yang Bisa <span class="grad-text-blue">Kami Bantu?</span></h2>
                        <p style="color: rgba(255, 255, 255, 0.55); line-height: 1.75; margin-bottom: 2rem">
                            Jangan ragu untuk menghubungi kami. Tim kami siap membantu Anda menemukan solusi teknologi yang tepat sesuai kebutuhan dan
                            anggaran.
                        </p>
                        <div style="display: flex; flex-direction: column; gap: 1rem">
                            <div class="glass-card" style="padding: 1.1rem 1.25rem; display: flex; align-items: center; gap: 14px; border-radius: 14px">
                                <div style="font-size: 1.25rem; width: 40px; text-align: center; flex-shrink: 0">📍</div>
                                <div>
                                    <div style="font-size: 0.72rem; color: rgba(255, 255, 255, 0.4); letter-spacing: 0.1em; margin-bottom: 2px">ALAMAT</div>
                                    <div style="color: rgba(255, 255, 255, 0.8); font-size: 0.9rem">Jl. Teknologi No. 1, Makassar, Sulawesi Selatan</div>
                                </div>
                            </div>
                            <div class="glass-card" style="padding: 1.1rem 1.25rem; display: flex; align-items: center; gap: 14px; border-radius: 14px">
                                <div style="font-size: 1.25rem; width: 40px; text-align: center; flex-shrink: 0">📞</div>
                                <div>
                                    <div style="font-size: 0.72rem; color: rgba(255, 255, 255, 0.4); letter-spacing: 0.1em; margin-bottom: 2px">TELEPON</div>
                                    <div style="color: rgba(255, 255, 255, 0.8); font-size: 0.9rem">(0411) 123-4567 / 0812-3456-7890</div>
                                </div>
                            </div>
                            <div class="glass-card" style="padding: 1.1rem 1.25rem; display: flex; align-items: center; gap: 14px; border-radius: 14px">
                                <div style="font-size: 1.25rem; width: 40px; text-align: center; flex-shrink: 0">✉️</div>
                                <div>
                                    <div style="font-size: 0.72rem; color: rgba(255, 255, 255, 0.4); letter-spacing: 0.1em; margin-bottom: 2px">EMAIL</div>
                                    <div style="color: rgba(255, 255, 255, 0.8); font-size: 0.9rem">info@arunamultikomputer.com</div>
                                </div>
                            </div>
                            <div class="glass-card" style="padding: 1.1rem 1.25rem; display: flex; align-items: center; gap: 14px; border-radius: 14px">
                                <div style="font-size: 1.25rem; width: 40px; text-align: center; flex-shrink: 0">🕐</div>
                                <div>
                                    <div style="font-size: 0.72rem; color: rgba(255, 255, 255, 0.4); letter-spacing: 0.1em; margin-bottom: 2px">
                                        JAM OPERASIONAL
                                    </div>
                                    <div style="color: rgba(255, 255, 255, 0.8); font-size: 0.9rem">Senin – Sabtu: 08.00 – 17.00 WITA</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- FOOTER -->
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

html {
    scroll-behavior: smooth;
}

.home-page {
    font-family: 'Outfit', sans-serif;
    background: var(--navy);
    color: #e2e8f0;
    overflow-x: hidden;
    min-height: 100vh;
    transition: background 0.3s ease, color 0.3s ease;
}

/* ── LIGHT THEME ─────────────────────────────────── */
.home-page.theme-light {
    --navy: #f0fdfb;
    --glass: rgba(255, 255, 255, 0.72);
    --glass-border: rgba(20, 200, 213, 0.22);
    background: #f0fdfb;
    color: #0d2a2e;
}

.home-page.theme-light .bg-mesh {
    background:
        radial-gradient(ellipse 80% 60% at 20% 10%, rgba(82, 232, 130, 0.07) 0%, transparent 60%),
        radial-gradient(ellipse 60% 50% at 80% 80%, rgba(20, 200, 213, 0.06) 0%, transparent 55%),
        radial-gradient(ellipse 50% 40% at 60% 30%, rgba(121, 40, 202, 0.04) 0%, transparent 50%),
        #f0fdfb;
}

.home-page.theme-light .bg-grid {
    background-image:
        linear-gradient(rgba(20, 200, 213, 0.06) 1px, transparent 1px),
        linear-gradient(90deg, rgba(20, 200, 213, 0.06) 1px, transparent 1px);
}

.home-page.theme-light nav {
    background: rgba(240, 253, 251, 0.85) !important;
    border-bottom-color: rgba(20, 200, 213, 0.15) !important;
}

.home-page.theme-light nav.scrolled {
    background: rgba(240, 253, 251, 0.96) !important;
    box-shadow: 0 4px 30px rgba(20, 200, 213, 0.1) !important;
}

.home-page.theme-light .nav-link { color: rgba(13, 42, 46, 0.7); }
.home-page.theme-light .nav-link:hover { color: #0d2a2e; }

.home-page.theme-light .glass {
    background: rgba(255, 255, 255, 0.72);
    border-color: rgba(20, 200, 213, 0.2);
}

.home-page.theme-light .glass-card {
    background: rgba(255, 255, 255, 0.78);
    border-color: rgba(20, 200, 213, 0.18);
}

.home-page.theme-light .glass-card:hover {
    background: rgba(255, 255, 255, 0.95) !important;
    border-color: rgba(20, 200, 213, 0.45) !important;
    box-shadow: 0 24px 60px rgba(20, 200, 213, 0.1), 0 0 0 1px rgba(20, 200, 213, 0.22) !important;
}

.home-page.theme-light .text-white { color: #0d2a2e !important; }

.home-page.theme-light .site-footer {
    background: rgba(240, 253, 251, 0.92);
}

.home-page.theme-light .footer-glow-border { opacity: 0.4; }

.home-page.theme-light .footer-cta-strip {
    background: rgba(20, 200, 213, 0.04);
    border-bottom-color: rgba(20, 200, 213, 0.1);
}

.home-page.theme-light .footer-col-title { color: rgba(13, 42, 46, 0.4); }

.home-page.theme-light .footer-contact-row { color: rgba(13, 42, 46, 0.6); }

.home-page.theme-light .footer-brand-strip {
    border-top-color: rgba(20, 200, 213, 0.12);
    border-bottom-color: rgba(20, 200, 213, 0.12);
}

.home-page.theme-light .footer-brand-badge {
    background: rgba(255, 255, 255, 0.6);
    border-color: rgba(20, 200, 213, 0.15);
    color: rgba(13, 42, 46, 0.45);
}

.home-page.theme-light .nav-links {
    background: rgba(240, 253, 251, 0.98) !important;
    border-bottom-color: rgba(20, 200, 213, 0.12) !important;
}

.home-page.theme-light .hamburger span { background: #0d2a2e; }

.home-page.theme-light .glass-input {
    background: rgba(255, 255, 255, 0.8);
    border-color: rgba(20, 200, 213, 0.28);
    color: #0d2a2e;
}

.home-page.theme-light .glass-input::placeholder { color: rgba(13, 42, 46, 0.4); }

.home-page.theme-light .glass-input:focus {
    border-color: rgba(20, 200, 213, 0.55) !important;
    background: rgba(255, 255, 255, 0.95) !important;
    box-shadow: 0 0 0 3px rgba(20, 200, 213, 0.1) !important;
}

.home-page.theme-light .btn-outline {
    color: #0d2a2e;
    border-color: rgba(13, 42, 46, 0.2);
}

.home-page.theme-light .btn-outline:hover {
    background: rgba(20, 200, 213, 0.07);
    border-color: rgba(20, 200, 213, 0.4);
    color: #0d2a2e;
}

.home-page.theme-light .social-link {
    background: rgba(255, 255, 255, 0.7);
    border-color: rgba(20, 200, 213, 0.2);
    color: rgba(13, 42, 46, 0.6);
}

.home-page.theme-light .footer-link { color: rgba(13, 42, 46, 0.6); }
.home-page.theme-light .footer-link:hover { color: var(--primary); }

.home-page.theme-light .brand-tag {
    background: rgba(82, 232, 130, 0.1);
    border-color: rgba(82, 232, 130, 0.25);
    color: rgba(13, 42, 46, 0.7);
}

.home-page.theme-light .theme-toggle {
    background: rgba(255, 255, 255, 0.7);
    border-color: rgba(20, 200, 213, 0.2);
    color: rgba(13, 42, 46, 0.7);
}

.home-page.theme-light .theme-toggle:hover {
    background: rgba(20, 200, 213, 0.1);
    border-color: rgba(20, 200, 213, 0.45);
    color: var(--primary);
}

/* label / stat colours in light mode */
.home-page.theme-light .stat-num,
.home-page.theme-light .section-label,
.home-page.theme-light .badge { opacity: 1; }
/* ─────────────────────────────────────────────────── */

/* ANIMATED BG */
.bg-mesh {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: 0;
    pointer-events: none;
    background:
        radial-gradient(ellipse 80% 60% at 20% 10%, rgba(82, 232, 130, 0.12) 0%, transparent 60%),
        radial-gradient(ellipse 60% 50% at 80% 80%, rgba(20, 200, 213, 0.10) 0%, transparent 55%),
        radial-gradient(ellipse 50% 40% at 60% 30%, rgba(121, 40, 202, 0.08) 0%, transparent 50%),
        #040c10;
    animation: meshMove 12s ease-in-out infinite alternate;
}

@keyframes meshMove {
    0% { background-position: 0% 0%, 100% 100%, 50% 30%; }
    100% { background-position: 5% 10%, 95% 90%, 55% 25%; }
}

.bg-grid {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: 0;
    pointer-events: none;
    background-image:
        linear-gradient(rgba(20, 200, 213, 0.04) 1px, transparent 1px),
        linear-gradient(90deg, rgba(20, 200, 213, 0.04) 1px, transparent 1px);
    background-size: 60px 60px;
}

/* GLASS */
.glass {
    background: var(--glass);
    border: 1px solid var(--glass-border);
    backdrop-filter: blur(20px);
    -webkit-backdrop-filter: blur(20px);
}

.glass-card {
    background: rgba(255, 255, 255, 0.05);
    border: 1px solid rgba(255, 255, 255, 0.1);
    backdrop-filter: blur(24px);
    -webkit-backdrop-filter: blur(24px);
    border-radius: 20px;
    transition: all 0.35s ease;
}

.glass-card:hover {
    background: rgba(255, 255, 255, 0.09);
    border-color: rgba(20, 200, 213, 0.3);
    transform: translateY(-6px);
    box-shadow: 0 24px 60px rgba(20, 200, 213, 0.08), 0 0 0 1px rgba(20, 200, 213, 0.15);
}

/* NAV */
.home-page nav {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    z-index: 100;
    padding: 1rem 0;
    background: rgba(4, 12, 16, 0.7);
    border-bottom: 1px solid rgba(255, 255, 255, 0.07);
    backdrop-filter: blur(30px);
    -webkit-backdrop-filter: blur(30px);
    transition: all 0.3s;
}

.home-page nav.scrolled {
    background: rgba(4, 12, 16, 0.92);
    box-shadow: 0 4px 30px rgba(0, 0, 0, 0.4);
}

.logo-text {
    font-family: 'Orbitron', sans-serif;
    font-weight: 700;
    letter-spacing: 0.05em;
}

.nav-link {
    font-size: 0.875rem;
    font-weight: 500;
    color: rgba(255, 255, 255, 0.65);
    position: relative;
    padding: 0.25rem 0;
    text-decoration: none;
    transition: color 0.25s;
    letter-spacing: 0.03em;
}

.nav-link::after {
    content: '';
    position: absolute;
    bottom: 0;
    left: 0;
    width: 0;
    height: 1.5px;
    background: var(--primary);
    border-radius: 2px;
    transition: width 0.3s;
}

.nav-link:hover { color: #fff; }
.nav-link:hover::after { width: 100%; }

/* THEME TOGGLE */
.theme-toggle {
    width: 38px;
    height: 38px;
    border-radius: 10px;
    background: rgba(255, 255, 255, 0.06);
    border: 1px solid rgba(255, 255, 255, 0.12);
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    transition: all 0.25s;
    color: rgba(255, 255, 255, 0.7);
}

.theme-toggle:hover {
    background: rgba(20, 200, 213, 0.12);
    border-color: rgba(20, 200, 213, 0.35);
    color: var(--primary);
}

/* BUTTONS */
.btn-primary {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    background: linear-gradient(135deg, var(--secondary), var(--primary));
    color: #fff;
    font-weight: 600;
    font-size: 0.9rem;
    letter-spacing: 0.03em;
    padding: 0.75rem 1.75rem;
    border-radius: 12px;
    border: none;
    cursor: pointer;
    transition: all 0.3s;
    position: relative;
    overflow: hidden;
    text-decoration: none;
}

.btn-primary:hover {
    transform: translateY(-2px);
    box-shadow: 0 12px 35px rgba(20, 200, 213, 0.35);
}

.btn-outline {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    background: transparent;
    color: rgba(255, 255, 255, 0.85);
    font-weight: 500;
    font-size: 0.9rem;
    letter-spacing: 0.03em;
    padding: 0.75rem 1.75rem;
    border-radius: 12px;
    border: 1px solid rgba(255, 255, 255, 0.2);
    cursor: pointer;
    transition: all 0.3s;
    text-decoration: none;
}

.btn-outline:hover {
    background: rgba(255, 255, 255, 0.08);
    border-color: rgba(20, 200, 213, 0.4);
    color: #fff;
    transform: translateY(-2px);
}

/* TEXT */
.grad-text {
    background: linear-gradient(135deg, #fff 0%, var(--primary) 50%, var(--secondary) 100%);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
}

.grad-text-blue {
    background: linear-gradient(135deg, var(--primary), var(--secondary));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
}

.hero-title {
    font-family: 'Orbitron', sans-serif;
    font-size: clamp(2.4rem, 5vw, 4rem);
    font-weight: 900;
    line-height: 1.1;
    letter-spacing: -0.02em;
}

.section-label {
    font-size: 0.75rem;
    letter-spacing: 0.25em;
    font-weight: 600;
    color: var(--primary);
    text-transform: uppercase;
}

.section-title {
    font-family: 'Orbitron', sans-serif;
    font-size: clamp(1.6rem, 3vw, 2.2rem);
    font-weight: 700;
    line-height: 1.2;
    letter-spacing: -0.01em;
}

.stat-num {
    font-family: 'Orbitron', sans-serif;
    font-size: 2.5rem;
    font-weight: 700;
    background: linear-gradient(135deg, var(--primary), var(--secondary));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
}

/* MISC */
.glow-line {
    height: 1px;
    background: linear-gradient(90deg, transparent, rgba(20, 200, 213, 0.5), var(--primary), rgba(20, 200, 213, 0.5), transparent);
    margin: 0 auto;
}

.feat-dot {
    width: 10px;
    height: 10px;
    border-radius: 50%;
    background: var(--primary);
    flex-shrink: 0;
    box-shadow: 0 0 12px rgba(20, 200, 213, 0.6);
}

.glass-input {
    width: 100%;
    background: rgba(255, 255, 255, 0.05);
    border: 1px solid rgba(255, 255, 255, 0.12);
    border-radius: 12px;
    color: #fff;
    font-family: 'Outfit', sans-serif;
    font-size: 0.95rem;
    padding: 0.85rem 1.1rem;
    outline: none;
    transition: all 0.3s;
}

.glass-input::placeholder { color: rgba(255, 255, 255, 0.3); }

.glass-input:focus {
    border-color: rgba(20, 200, 213, 0.45);
    background: rgba(255, 255, 255, 0.08);
    box-shadow: 0 0 0 3px rgba(20, 200, 213, 0.08);
}

.badge {
    display: inline-flex;
    align-items: center;
    gap: 6px;
    font-size: 0.72rem;
    font-weight: 600;
    letter-spacing: 0.12em;
    text-transform: uppercase;
    color: var(--primary);
    background: rgba(20, 200, 213, 0.08);
    border: 1px solid rgba(20, 200, 213, 0.2);
    border-radius: 999px;
    padding: 0.3rem 0.85rem;
}

.prod-icon {
    width: 56px;
    height: 56px;
    border-radius: 14px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 1.6rem;
    flex-shrink: 0;
    background: linear-gradient(135deg, rgba(82, 232, 130, 0.15), rgba(20, 200, 213, 0.15));
    border: 1px solid rgba(20, 200, 213, 0.2);
    transition: all 0.3s;
}

.glass-card:hover .prod-icon {
    background: linear-gradient(135deg, rgba(82, 232, 130, 0.28), rgba(20, 200, 213, 0.22));
    border-color: rgba(20, 200, 213, 0.45);
    transform: scale(1.08);
}

.keung-icon {
    width: 48px;
    height: 48px;
    border-radius: 12px;
    background: rgba(20, 200, 213, 0.1);
    border: 1px solid rgba(20, 200, 213, 0.2);
    display: flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 1.25rem;
    font-size: 1.4rem;
}

.brand-tag {
    font-size: 0.68rem;
    padding: 3px 10px;
    border-radius: 999px;
    background: rgba(82, 232, 130, 0.1);
    border: 1px solid rgba(82, 232, 130, 0.2);
    color: rgba(255, 255, 255, 0.6);
}

.social-link {
    width: 38px;
    height: 38px;
    border-radius: 10px;
    background: rgba(255, 255, 255, 0.06);
    border: 1px solid rgba(255, 255, 255, 0.1);
    display: flex;
    align-items: center;
    justify-content: center;
    color: rgba(255, 255, 255, 0.5);
    text-decoration: none;
    transition: all 0.25s;
}

.social-link:hover {
    background: rgba(20, 200, 213, 0.12);
    border-color: rgba(20, 200, 213, 0.35);
    color: var(--primary);
    transform: translateY(-2px);
}

.footer-link {
    color: rgba(255, 255, 255, 0.5);
    text-decoration: none;
    font-size: 0.875rem;
    transition: color 0.2s, padding-left 0.2s;
    display: flex;
    align-items: center;
    gap: 6px;
}

.footer-link:hover {
    color: var(--primary);
    padding-left: 4px;
}

/* FOOTER */
.site-footer {
    position: relative;
    background: rgba(2, 8, 12, 0.9);
    backdrop-filter: blur(20px);
    -webkit-backdrop-filter: blur(20px);
}

.footer-glow-border {
    height: 2px;
    background: linear-gradient(90deg, transparent 0%, var(--secondary) 25%, var(--primary) 75%, transparent 100%);
    opacity: 0.6;
}

.footer-cta-strip {
    background: rgba(20, 200, 213, 0.05);
    border-bottom: 1px solid rgba(20, 200, 213, 0.1);
}

.footer-cta-dot {
    width: 8px;
    height: 8px;
    border-radius: 50%;
    background: var(--secondary);
    box-shadow: 0 0 10px var(--secondary);
    flex-shrink: 0;
    animation: pulse 2s ease-in-out infinite;
}

@keyframes pulse {
    0%, 100% { opacity: 1; transform: scale(1); }
    50% { opacity: 0.6; transform: scale(0.85); }
}

.footer-col-title {
    font-size: 0.72rem;
    letter-spacing: 0.18em;
    color: rgba(255, 255, 255, 0.3);
    margin-bottom: 1rem;
    font-weight: 700;
}

.footer-contact-row {
    display: flex;
    align-items: flex-start;
    gap: 10px;
    font-size: 0.82rem;
    color: rgba(255, 255, 255, 0.5);
    line-height: 1.5;
}

.footer-contact-icon {
    flex-shrink: 0;
    width: 20px;
    text-align: center;
}

.footer-brand-strip {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    gap: 8px;
    padding: 1.25rem 0;
    border-top: 1px solid rgba(255, 255, 255, 0.06);
    border-bottom: 1px solid rgba(255, 255, 255, 0.06);
    margin-bottom: 1.5rem;
}

.footer-brand-badge {
    font-size: 0.68rem;
    font-weight: 700;
    letter-spacing: 0.08em;
    padding: 4px 12px;
    border-radius: 999px;
    background: rgba(255, 255, 255, 0.04);
    border: 1px solid rgba(255, 255, 255, 0.08);
    color: rgba(255, 255, 255, 0.35);
    transition: all 0.2s;
}

.footer-brand-badge:hover {
    background: rgba(20, 200, 213, 0.08);
    border-color: rgba(20, 200, 213, 0.2);
    color: rgba(255, 255, 255, 0.7);
}

.footer-bottom {
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 0.5rem;
    text-align: center;
}

@media (min-width: 640px) {
    .footer-bottom {
        flex-direction: row;
        justify-content: space-between;
        text-align: left;
    }
}

.orb {
    position: absolute;
    border-radius: 50%;
    filter: blur(70px);
    pointer-events: none;
    animation: orbFloat 8s ease-in-out infinite alternate;
}

@keyframes orbFloat {
    0% { transform: translate(0, 0) scale(1); }
    100% { transform: translate(20px, -30px) scale(1.08); }
}

/* NETWORK DIAGRAM */
.net-canvas-wrap {
    position: relative;
    background: rgba(255, 255, 255, 0.03);
    border: 1px solid rgba(20, 200, 213, 0.15);
    border-radius: 28px;
    overflow: visible;
    padding: 1rem;
    backdrop-filter: blur(12px);
    -webkit-backdrop-filter: blur(12px);
}

.net-svg {
    width: 100%;
    height: auto;
    display: block;
}

/* connection lines */
.net-line {
    stroke: rgba(20, 200, 213, 0.3);
    stroke-width: 1.5;
    stroke-linecap: round;
}

.net-line--dim {
    stroke: rgba(255, 255, 255, 0.07);
    stroke-dasharray: 6 4;
}

.net-line--pulse {
    stroke: rgba(20, 200, 213, 0.45);
    stroke-dasharray: 6 4;
    animation: dashMove 1.6s linear infinite;
}

@keyframes dashMove {
    to { stroke-dashoffset: -20; }
}

/* nodes */
.net-node__ring {
    fill: none;
    stroke: rgba(20, 200, 213, 0.18);
    stroke-width: 1;
    animation: ringPulse 3s ease-in-out infinite;
}

@keyframes ringPulse {
    0%, 100% { r: 34; opacity: 0.18; }
    50%       { r: 38; opacity: 0.06; }
}

.net-node__bg {
    fill: rgba(4, 12, 16, 0.85);
    stroke: rgba(82, 232, 130, 0.45);
    stroke-width: 1.5;
}

.net-node__bg--core {
    stroke: rgba(20, 200, 213, 0.7);
    stroke-width: 2;
}

.net-node__bg--leaf {
    fill: rgba(4, 12, 16, 0.7);
    stroke: rgba(255, 255, 255, 0.18);
    stroke-width: 1.2;
}

/* labels */
.net-label {
    font-family: 'Orbitron', sans-serif;
    font-size: 9px;
    fill: rgba(255, 255, 255, 0.5);
    letter-spacing: 0.06em;
}

.net-label--core {
    font-size: 8.5px;
    fill: var(--primary);
}

.net-label--leaf {
    font-size: 8px;
    fill: rgba(255, 255, 255, 0.4);
}

/* travelling packets */
.net-packet {
    filter: drop-shadow(0 0 4px var(--primary));
}

/* floating chips */
.net-chip {
    position: absolute;
    display: flex;
    align-items: center;
    gap: 6px;
    font-size: 0.72rem;
    font-weight: 600;
    color: rgba(255, 255, 255, 0.8);
    background: rgba(4, 12, 16, 0.75);
    border: 1px solid rgba(20, 200, 213, 0.22);
    border-radius: 999px;
    padding: 5px 12px;
    backdrop-filter: blur(10px);
    -webkit-backdrop-filter: blur(10px);
    white-space: nowrap;
}

.net-chip--tl { top: 18px; left: 18px; }
.net-chip--br { bottom: 22px; right: 18px; }

.net-chip__dot {
    width: 7px;
    height: 7px;
    border-radius: 50%;
    flex-shrink: 0;
    animation: pulse 1.8s ease-in-out infinite;
}

/* light-theme overrides for network diagram */
.home-page.theme-light .net-canvas-wrap {
    background: rgba(255, 255, 255, 0.65);
    border-color: rgba(20, 200, 213, 0.2);
}

.home-page.theme-light .net-node__bg {
    fill: rgba(240, 253, 251, 0.92);
}

.home-page.theme-light .net-node__bg--leaf {
    fill: rgba(240, 253, 251, 0.85);
    stroke: rgba(13, 42, 46, 0.2);
}

.home-page.theme-light .net-label { fill: rgba(13, 42, 46, 0.55); }
.home-page.theme-light .net-label--leaf { fill: rgba(13, 42, 46, 0.4); }
.home-page.theme-light .net-chip {
    background: rgba(255, 255, 255, 0.82);
    border-color: rgba(20, 200, 213, 0.25);
    color: rgba(13, 42, 46, 0.85);
}

/* ── LIGHT MODE: inline color overrides ──────── */
/* Hero */
.home-page.theme-light #hero .text-lg { color: rgba(13, 42, 46, 0.65) !important; }
.home-page.theme-light #hero .flex.gap-8 > div > div:last-child { color: rgba(13, 42, 46, 0.55) !important; }
/* Tentang: body paras, mini-card titles/subtitles, feature bullets */
.home-page.theme-light #tentang p { color: rgba(13, 42, 46, 0.7) !important; }
.home-page.theme-light #tentang .glass-card .glass-card div:nth-child(2) { color: #0d2a2e !important; }
.home-page.theme-light #tentang .glass-card .glass-card div:nth-child(3) { color: rgba(13, 42, 46, 0.55) !important; }
.home-page.theme-light .feat-dot + span { color: rgba(13, 42, 46, 0.75) !important; }
/* Produk */
.home-page.theme-light #produk .text-center p { color: rgba(13, 42, 46, 0.6) !important; }
.home-page.theme-light #produk .glass-card h3 { color: #0d2a2e !important; }
.home-page.theme-light #produk .glass-card p { color: rgba(13, 42, 46, 0.65) !important; }
/* Stats */
.home-page.theme-light #stats .grid > div > div:nth-child(2) { color: rgba(13, 42, 46, 0.6) !important; }
/* Keunggulan */
.home-page.theme-light #keunggulan .glass-card h4 { color: #0d2a2e !important; }
.home-page.theme-light #keunggulan .glass-card p { color: rgba(13, 42, 46, 0.65) !important; }
/* Kontak */
.home-page.theme-light #kontak h3 { color: #0d2a2e !important; }
.home-page.theme-light #kontak p { color: rgba(13, 42, 46, 0.65) !important; }
.home-page.theme-light #kontak .glass-card > div:nth-child(2) > div:first-child { color: rgba(13, 42, 46, 0.45) !important; }
.home-page.theme-light #kontak .glass-card > div:nth-child(2) > div:last-child { color: rgba(13, 42, 46, 0.85) !important; }
/* Network diagram: leaf node icons */
.home-page.theme-light .net-line--dim { stroke: rgba(13, 42, 46, 0.08); }
.home-page.theme-light .net-node--leaf rect,
.home-page.theme-light .net-node--leaf line,
.home-page.theme-light .net-node--leaf path,
.home-page.theme-light .net-node--leaf polygon { stroke: rgba(13, 42, 46, 0.45); }
.home-page.theme-light .net-node--leaf circle { fill: rgba(13, 42, 46, 0.4); }
.home-page.theme-light .net-status-text { fill: rgba(13, 42, 46, 0.65); }

/* REVEAL */
.reveal {
    opacity: 0;
    transform: translateY(32px);
    transition: opacity 0.65s ease, transform 0.65s ease;
}

.reveal.visible {
    opacity: 1;
    transform: none;
}

/* RESPONSIVE NAV */
.hamburger {
    display: none;
    flex-direction: column;
    gap: 5px;
    cursor: pointer;
    padding: 4px;
    background: none;
    border: none;
}

.hamburger span {
    display: block;
    width: 24px;
    height: 2px;
    background: #fff;
    border-radius: 2px;
    transition: all 0.3s;
}

@media (max-width: 768px) {
    .hamburger { display: flex; }

    .nav-links {
        display: none;
        flex-direction: column;
        gap: 0.5rem;
        position: absolute;
        top: 100%;
        left: 0;
        right: 0;
        background: rgba(4, 12, 16, 0.97);
        padding: 1.5rem;
        border-bottom: 1px solid rgba(255, 255, 255, 0.07);
    }

    .nav-links.open { display: flex; }
}

::-webkit-scrollbar { width: 5px; }
::-webkit-scrollbar-track { background: #040c10; }
::-webkit-scrollbar-thumb { background: rgba(20, 200, 213, 0.3); border-radius: 3px; }
</style>
