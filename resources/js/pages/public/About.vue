<script setup lang="ts">
import { Head } from '@inertiajs/vue3';
import { usePublicPage } from '@/partials/public/usePublicPage';
import PublicNavbar from '@/partials/public/Navbar.vue';
import PublicFooter from '@/partials/public/Footer.vue';
import '@/partials/public/styles.css';

const { navScrolled, isDark, toggleTheme } = usePublicPage();
</script>

<template>
    <Head title="Tentang Kami — Aruna Multi Komputer">
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link
            href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;600;700;900&family=Outfit:wght@300;400;500;600&display=swap"
            rel="stylesheet"
        />
    </Head>

    <div :class="['public-page', 'about-page', isDark ? 'theme-dark' : 'theme-light']">
        <div class="bg-mesh"></div>
        <div class="bg-grid"></div>

        <!-- NAVBAR -->
        <PublicNavbar active="about" :scrolled="navScrolled" :is-dark="isDark" @toggle-theme="toggleTheme" />

        <!-- HERO -->
        <section class="relative flex items-center justify-center text-center" style="min-height: 52vh; padding-top: 100px; padding-bottom: 3rem">
            <div class="orb" style="width: 380px; height: 380px; background: rgba(82, 232, 130, 0.09); top: -60px; right: -80px"></div>
            <div class="orb" style="width: 280px; height: 280px; background: rgba(20, 200, 213, 0.07); bottom: 0; left: -60px; animation-delay: 2s"></div>
            <div class="max-w-3xl mx-auto px-6 z-10">
                <div class="badge mb-5 reveal" style="display: inline-flex">
                    <span style="width: 6px; height: 6px; border-radius: 50%; background: var(--primary)"></span>
                    Profil Perusahaan
                </div>
                <h1 class="hero-title text-white mb-5 reveal" style="transition-delay: 0.1s">
                    Tentang <span class="grad-text">Aruna</span><br />Multi Komputer
                </h1>
                <p class="reveal" style="color: var(--text-muted); font-size: 1.05rem; line-height: 1.8; transition-delay: 0.2s">
                    Mengenal lebih dekat perusahaan kami — visi, misi, legalitas usaha, dan alamat yang dapat Anda percaya sebagai mitra teknologi terbaik.
                </p>
            </div>
        </section>

        <div class="glow-line" style="max-width: 600px; margin: 0 auto; opacity: 0.4"></div>

        <!-- PROFIL PERUSAHAAN -->
        <section class="py-24 relative z-10">
            <div class="max-w-7xl mx-auto px-6">
                <div class="grid lg:grid-cols-2 gap-14 items-center">
                    <!-- Visual Card -->
                    <div class="relative reveal">
                        <div class="glass-card p-6" style="border-radius: 28px">
                            <div style="background: linear-gradient(135deg, rgba(82,232,130,0.10), rgba(20,200,213,0.08)); border-radius: 20px; padding: 2.5rem; text-align: center; border: 1px solid rgba(20,200,213,0.1); margin-bottom: 1rem">
                                <div style="font-size: 4rem">🏢</div>
                                <div class="logo-text text-white text-base mt-3">ARUNA MULTI KOMPUTER</div>
                                <div style="font-size: 0.7rem; color: var(--primary); letter-spacing: 0.15em; margin-top: 4px">MAKASSAR, SULAWESI SELATAN</div>
                                <div style="margin-top: 1.25rem; display: flex; justify-content: center; gap: 8px; flex-wrap: wrap">
                                    <span class="brand-tag" style="background: rgba(82,232,130,0.12); border-color: rgba(82,232,130,0.25); color: var(--secondary)">Terdaftar OSS</span>
                                    <span class="brand-tag" style="background: rgba(20,200,213,0.12); border-color: rgba(20,200,213,0.25); color: var(--primary)">PKP Terdaftar</span>
                                    <span class="brand-tag">Badan Hukum</span>
                                </div>
                            </div>
                            <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 0.75rem">
                                <div class="glass-card" style="padding: 1rem; border-radius: 14px; text-align: center">
                                    <div style="font-size: 1.6rem; margin-bottom: 4px">📋</div>
                                    <div style="font-size: 0.78rem; font-weight: 600; color: var(--text-heading)">NIB Aktif</div>
                                    <div style="font-size: 0.68rem; color: var(--text-faint)">OSS Terdaftar</div>
                                </div>
                                <div class="glass-card" style="padding: 1rem; border-radius: 14px; text-align: center">
                                    <div style="font-size: 1.6rem; margin-bottom: 4px">🧾</div>
                                    <div style="font-size: 0.78rem; font-weight: 600; color: var(--text-heading)">NPWP Aktif</div>
                                    <div style="font-size: 0.68rem; color: var(--text-faint)">Wajib Pajak</div>
                                </div>
                                <div class="glass-card" style="padding: 1rem; border-radius: 14px; text-align: center">
                                    <div style="font-size: 1.6rem; margin-bottom: 4px">⚖️</div>
                                    <div style="font-size: 0.78rem; font-weight: 600; color: var(--text-heading)">AHU Terdaftar</div>
                                    <div style="font-size: 0.68rem; color: var(--text-faint)">Badan Hukum</div>
                                </div>
                                <div class="glass-card" style="padding: 1rem; border-radius: 14px; text-align: center">
                                    <div style="font-size: 1.6rem; margin-bottom: 4px">✅</div>
                                    <div style="font-size: 0.78rem; font-weight: 600; color: var(--text-heading)">SPKP Aktif</div>
                                    <div style="font-size: 0.68rem; color: var(--text-faint)">Pengusaha Kena Pajak</div>
                                </div>
                            </div>
                        </div>
                        <div style="position:absolute; top:-20px; left:-20px; width:120px; height:120px; border-radius:50%; background:rgba(82,232,130,0.06); filter:blur(40px); pointer-events:none"></div>
                    </div>

                    <!-- Text -->
                    <div>
                        <div class="section-label mb-3 reveal">Siapa Kami</div>
                        <h2 class="section-title text-white mb-6 reveal" style="transition-delay: 0.1s">
                            Mitra <span class="grad-text-blue">Teknologi</span><br />Terpercaya Anda
                        </h2>
                        <p class="mb-5 reveal" style="color: var(--text-muted); line-height: 1.8; transition-delay: 0.15s">
                            PT Aruna Multi Komputer adalah perusahaan yang bergerak di bidang distribusi dan retail perangkat teknologi informasi. Kami menyediakan solusi lengkap mulai dari komputer, laptop, perangkat networking, sistem CCTV, hingga berbagai aksesori IT untuk kebutuhan personal maupun korporat.
                        </p>
                        <p class="mb-8 reveal" style="color: var(--text-muted); line-height: 1.8; transition-delay: 0.2s">
                            Dengan pengalaman lebih dari satu dekade, kami telah melayani ribuan pelanggan dari berbagai segmen, mulai dari pengguna individu, UKM, instansi pemerintah, hingga perusahaan besar di wilayah Sulawesi dan sekitarnya.
                        </p>
                        <div style="display: flex; flex-direction: column; gap: 0.85rem">
                            <div class="flex items-center gap-3 reveal" style="transition-delay: 0.25s">
                                <div class="feat-dot"></div>
                                <span style="color: var(--text-strong); font-size: 0.95rem">Didirikan dan beroperasi sejak lebih dari 10 tahun lalu</span>
                            </div>
                            <div class="flex items-center gap-3 reveal" style="transition-delay: 0.3s">
                                <div class="feat-dot"></div>
                                <span style="color: var(--text-strong); font-size: 0.95rem">Perusahaan berbadan hukum dan terdaftar resmi di Kemenkumham</span>
                            </div>
                            <div class="flex items-center gap-3 reveal" style="transition-delay: 0.35s">
                                <div class="feat-dot"></div>
                                <span style="color: var(--text-strong); font-size: 0.95rem">Pengusaha Kena Pajak (PKP) terdaftar di DJP</span>
                            </div>
                            <div class="flex items-center gap-3 reveal" style="transition-delay: 0.4s">
                                <div class="feat-dot"></div>
                                <span style="color: var(--text-strong); font-size: 0.95rem">NIB aktif melalui sistem OSS (Online Single Submission)</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- LEGALITAS PERUSAHAAN -->
        <section class="py-24 relative z-10">
            <div class="max-w-7xl mx-auto px-6">
                <div class="text-center mb-14">
                    <div class="section-label mb-3 reveal">Dokumen Resmi</div>
                    <h2 class="section-title text-white reveal" style="transition-delay: 0.1s">
                        Legalitas <span class="grad-text-blue">Perusahaan</span>
                    </h2>
                    <p class="mt-4 reveal" style="color: var(--text-dim); max-width: 520px; margin: 1rem auto 0; line-height: 1.7; transition-delay: 0.15s">
                        Aruna Multi Komputer beroperasi secara legal dan terdaftar pada seluruh instansi pemerintah yang berwenang.
                    </p>
                </div>

                <div class="grid md:grid-cols-2 gap-6">
                    <!-- NIB -->
                    <div class="glass-card p-7 reveal" style="border-color: rgba(82,232,130,0.2)">
                        <div style="display: flex; align-items: flex-start; gap: 18px">
                            <div class="legal-icon" style="background: linear-gradient(135deg, rgba(82,232,130,0.18), rgba(20,200,213,0.12)); border-color: rgba(82,232,130,0.3); flex-shrink: 0">
                                <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="var(--secondary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/><line x1="16" y1="13" x2="8" y2="13"/><line x1="16" y1="17" x2="8" y2="17"/><polyline points="10 9 9 9 8 9"/>
                                </svg>
                            </div>
                            <div style="flex: 1">
                                <div class="legal-badge" style="background: rgba(82,232,130,0.12); border-color: rgba(82,232,130,0.25); color: var(--secondary)">OSS · Kemenko Perekonomian</div>
                                <h3 class="legal-title text-white">NIB</h3>
                                <p class="legal-subtitle">Nomor Induk Berusaha</p>
                                <div class="legal-number">
                                    <span class="legal-number__label">Nomor</span>
                                    <span class="legal-number__value">XXXX.XXXX.XXXX.XXXX</span>
                                </div>
                                <p class="legal-desc">
                                    Identitas tunggal pelaku usaha yang diterbitkan oleh Lembaga OSS (Online Single Submission) Kemenko Perekonomian RI, berlaku sebagai izin usaha sekaligus identitas resmi perusahaan.
                                </p>
                            </div>
                        </div>
                    </div>

                    <!-- NPWP -->
                    <div class="glass-card p-7 reveal" style="border-color: rgba(20,200,213,0.2); transition-delay: 0.08s">
                        <div style="display: flex; align-items: flex-start; gap: 18px">
                            <div class="legal-icon" style="background: linear-gradient(135deg, rgba(20,200,213,0.18), rgba(82,232,130,0.10)); border-color: rgba(20,200,213,0.3); flex-shrink: 0">
                                <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="var(--primary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <rect x="2" y="5" width="20" height="14" rx="2"/><line x1="2" y1="10" x2="22" y2="10"/>
                                </svg>
                            </div>
                            <div style="flex: 1">
                                <div class="legal-badge" style="background: rgba(20,200,213,0.12); border-color: rgba(20,200,213,0.25); color: var(--primary)">DJP · Kementerian Keuangan RI</div>
                                <h3 class="legal-title text-white">NPWP</h3>
                                <p class="legal-subtitle">Nomor Pokok Wajib Pajak</p>
                                <div class="legal-number">
                                    <span class="legal-number__label">Nomor</span>
                                    <span class="legal-number__value">XX.XXX.XXX.X-XXX.XXX</span>
                                </div>
                                <p class="legal-desc">
                                    Nomor identitas wajib pajak yang diterbitkan oleh Direktorat Jenderal Pajak (DJP) Kementerian Keuangan RI, digunakan sebagai sarana administrasi perpajakan perusahaan.
                                </p>
                            </div>
                        </div>
                    </div>

                    <!-- AHU -->
                    <div class="glass-card p-7 reveal" style="border-color: rgba(121,40,202,0.18); transition-delay: 0.12s">
                        <div style="display: flex; align-items: flex-start; gap: 18px">
                            <div class="legal-icon" style="background: linear-gradient(135deg, rgba(121,40,202,0.16), rgba(20,200,213,0.10)); border-color: rgba(121,40,202,0.3); flex-shrink: 0">
                                <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#a855f7" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/>
                                </svg>
                            </div>
                            <div style="flex: 1">
                                <div class="legal-badge" style="background: rgba(121,40,202,0.12); border-color: rgba(121,40,202,0.25); color: #c084fc">AHU · Kemenkumham RI</div>
                                <h3 class="legal-title text-white">AHU</h3>
                                <p class="legal-subtitle">Administrasi Hukum Umum</p>
                                <div class="legal-number">
                                    <span class="legal-number__label">Nomor SK</span>
                                    <span class="legal-number__value">AHU-XXXX.AH.XX.XX.XXXX</span>
                                </div>
                                <p class="legal-desc">
                                    Pengesahan badan hukum perseroan yang diterbitkan oleh Direktorat Jenderal Administrasi Hukum Umum (AHU) Kementerian Hukum dan HAM RI, menyatakan perusahaan telah sah sebagai badan hukum.
                                </p>
                            </div>
                        </div>
                    </div>

                    <!-- SPKP -->
                    <div class="glass-card p-7 reveal" style="border-color: rgba(234,179,8,0.18); transition-delay: 0.2s">
                        <div style="display: flex; align-items: flex-start; gap: 18px">
                            <div class="legal-icon" style="background: linear-gradient(135deg, rgba(234,179,8,0.14), rgba(20,200,213,0.08)); border-color: rgba(234,179,8,0.3); flex-shrink: 0">
                                <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#facc15" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <circle cx="12" cy="12" r="10"/><polyline points="12 6 12 12 16 14"/>
                                </svg>
                            </div>
                            <div style="flex: 1">
                                <div class="legal-badge" style="background: rgba(234,179,8,0.12); border-color: rgba(234,179,8,0.25); color: #facc15">DJP · Kementerian Keuangan RI</div>
                                <h3 class="legal-title text-white">SPKP</h3>
                                <p class="legal-subtitle">Surat Pengukuhan Pengusaha Kena Pajak</p>
                                <div class="legal-number">
                                    <span class="legal-number__label">Nomor</span>
                                    <span class="legal-number__value">PEM-XXXXXX/WPJ.XX/KP.XXXX/XXXX</span>
                                </div>
                                <p class="legal-desc">
                                    Surat yang diterbitkan oleh KPP (Kantor Pelayanan Pajak) sebagai tanda pengukuhan Pengusaha Kena Pajak (PKP), memungkinkan perusahaan untuk memungut, menyetor, dan melaporkan Pajak Pertambahan Nilai (PPN).
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- ALAMAT & LOKASI -->
        <section class="py-24 relative z-10">
            <div class="max-w-7xl mx-auto px-6">
                <div class="text-center mb-14">
                    <div class="section-label mb-3 reveal">Lokasi Kami</div>
                    <h2 class="section-title text-white reveal" style="transition-delay: 0.1s">
                        Alamat <span class="grad-text-blue">&amp; Kontak</span>
                    </h2>
                </div>

                <div class="grid lg:grid-cols-5 gap-8 items-start">
                    <!-- Address cards -->
                    <div class="lg:col-span-2 flex flex-col gap-5">
                        <!-- Alamat Lengkap -->
                        <div class="glass-card p-6 reveal" style="border-radius: 20px">
                            <div style="display: flex; align-items: flex-start; gap: 14px">
                                <div style="font-size: 1.5rem; flex-shrink: 0; margin-top: 2px">📍</div>
                                <div>
                                    <div style="font-size: 0.7rem; letter-spacing: 0.12em; color: var(--text-caption); margin-bottom: 6px">ALAMAT LENGKAP</div>
                                    <div style="color: var(--text-body); font-size: 0.95rem; line-height: 1.7; font-weight: 500">
                                        PT Aruna Multi Komputer<br />
                                        Jl. Teknologi Raya No. 1,<br />
                                        Kota Makassar,<br />
                                        Sulawesi Selatan 90111
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Telepon -->
                        <div class="glass-card p-6 reveal" style="border-radius: 20px; transition-delay: 0.1s">
                            <div style="display: flex; align-items: center; gap: 14px">
                                <div style="font-size: 1.5rem; flex-shrink: 0">📞</div>
                                <div>
                                    <div style="font-size: 0.7rem; letter-spacing: 0.12em; color: var(--text-caption); margin-bottom: 6px">TELEPON / WHATSAPP</div>
                                    <div style="color: var(--text-body); font-size: 0.95rem; font-weight: 500">(0411) 123-4567</div>
                                    <div style="color: var(--primary); font-size: 0.95rem; font-weight: 500; margin-top: 2px">0812-3456-7890</div>
                                </div>
                            </div>
                        </div>

                        <!-- Email -->
                        <div class="glass-card p-6 reveal" style="border-radius: 20px; transition-delay: 0.15s">
                            <div style="display: flex; align-items: center; gap: 14px">
                                <div style="font-size: 1.5rem; flex-shrink: 0">✉️</div>
                                <div>
                                    <div style="font-size: 0.7rem; letter-spacing: 0.12em; color: var(--text-caption); margin-bottom: 6px">EMAIL</div>
                                    <div style="color: var(--text-body); font-size: 0.9rem; font-weight: 500">info@arunamultikomputer.com</div>
                                </div>
                            </div>
                        </div>

                        <!-- Jam Operasional -->
                        <div class="glass-card p-6 reveal" style="border-radius: 20px; transition-delay: 0.2s">
                            <div style="display: flex; align-items: flex-start; gap: 14px">
                                <div style="font-size: 1.5rem; flex-shrink: 0; margin-top: 2px">🕐</div>
                                <div>
                                    <div style="font-size: 0.7rem; letter-spacing: 0.12em; color: var(--text-caption); margin-bottom: 8px">JAM OPERASIONAL</div>
                                    <div style="display: flex; flex-direction: column; gap: 4px">
                                        <div style="display: flex; justify-content: space-between; gap: 16px">
                                            <span style="color: var(--text-muted); font-size: 0.875rem">Senin – Jumat</span>
                                            <span style="color: var(--text-body); font-size: 0.875rem; font-weight: 500">08.00 – 17.00 WITA</span>
                                        </div>
                                        <div style="display: flex; justify-content: space-between; gap: 16px">
                                            <span style="color: var(--text-muted); font-size: 0.875rem">Sabtu</span>
                                            <span style="color: var(--text-body); font-size: 0.875rem; font-weight: 500">08.00 – 15.00 WITA</span>
                                        </div>
                                        <div style="display: flex; justify-content: space-between; gap: 16px">
                                            <span style="color: var(--text-muted); font-size: 0.875rem">Minggu</span>
                                            <span style="color: var(--text-dim); font-size: 0.875rem">Tutup</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Map placeholder -->
                    <div class="lg:col-span-3 reveal" style="transition-delay: 0.1s">
                        <div class="glass-card" style="border-radius: 24px; overflow: hidden; height: 460px; position: relative">
                            <!-- Map embed placeholder — replace src with actual Google Maps embed URL -->
                            <iframe
                                src="https://maps.google.com/maps?q=Makassar,+Sulawesi+Selatan&t=&z=14&ie=UTF8&iwloc=&output=embed"
                                width="100%"
                                height="100%"
                                style="border: 0; display: block; filter: grayscale(0.3) contrast(1.05)"
                                :allowfullscreen="true"
                                loading="lazy"
                                referrerpolicy="no-referrer-when-downgrade"
                                title="Lokasi Aruna Multi Komputer"
                            ></iframe>
                            <!-- overlay badge -->
                            <div style="position: absolute; bottom: 16px; left: 16px; z-index: 10">
                                <div class="glass-card" style="display: inline-flex; align-items: center; gap: 8px; padding: 0.5rem 0.9rem; border-radius: 20px; font-size: 0.8rem; backdrop-filter: blur(12px)">
                                    <div style="width: 8px; height: 8px; border-radius: 50%; background: var(--secondary)">
                                        <div style="width: 8px; height: 8px; border-radius: 50%; background: var(--secondary); animation: pulse 2s infinite"></div>
                                    </div>
                                    <span style="color: var(--text-body); font-weight: 500">Makassar, Sulawesi Selatan</span>
                                </div>
                            </div>
                        </div>
                        <p style="font-size: 0.78rem; color: var(--text-faint); margin-top: 10px; text-align: center">
                            Klik peta untuk membuka di Google Maps
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <!-- CTA STRIP -->
        <section class="py-16 relative z-10">
            <div class="max-w-7xl mx-auto px-6">
                <div class="glass reveal" style="border-radius: 28px; padding: 3rem; border-color: rgba(20,200,213,0.15); position: relative; overflow: hidden; text-align: center">
                    <div style="position: absolute; top: -40px; right: -40px; width: 220px; height: 220px; border-radius: 50%; background: rgba(82,232,130,0.07); filter: blur(50px); pointer-events: none"></div>
                    <div style="position: absolute; bottom: -40px; left: -40px; width: 200px; height: 200px; border-radius: 50%; background: rgba(20,200,213,0.06); filter: blur(50px); pointer-events: none"></div>
                    <div class="badge mb-5" style="display: inline-flex">
                        <span style="width: 6px; height: 6px; border-radius: 50%; background: var(--secondary)"></span>
                        Siap Bermitra?
                    </div>
                    <h3 class="text-white" style="font-family: 'Orbitron', sans-serif; font-size: clamp(1.3rem, 3vw, 1.8rem); font-weight: 700; margin-bottom: 0.75rem">
                        Hubungi Kami Sekarang
                    </h3>
                    <p style="color: var(--text-muted); font-size: 0.95rem; margin-bottom: 2rem; max-width: 480px; margin-left: auto; margin-right: auto; line-height: 1.7">
                        Tim kami siap membantu Anda menemukan solusi teknologi yang tepat sesuai kebutuhan dan anggaran bisnis Anda.
                    </p>
                    <div style="display: flex; gap: 12px; justify-content: center; flex-wrap: wrap">
                        <a href="https://wa.me/6281234567890" class="btn-primary" target="_blank" rel="noopener noreferrer">
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347z"/><path d="M12 0C5.373 0 0 5.373 0 12c0 2.116.549 4.109 1.51 5.845L.057 23.547a.5.5 0 00.608.61l5.83-1.53A11.945 11.945 0 0012 24c6.627 0 12-5.373 12-12S18.627 0 12 0zm0 22c-1.891 0-3.667-.51-5.19-1.4l-.37-.22-3.838 1.007 1.028-3.75-.242-.386A9.96 9.96 0 012 12C2 6.477 6.477 2 12 2s10 4.477 10 10-4.477 10-10 10z"/></svg>
                            WhatsApp Kami
                        </a>
                        <a href="/" class="btn-outline">Kembali ke Beranda</a>
                    </div>
                </div>
            </div>
        </section>

        <!-- FOOTER MINI -->
        <PublicFooter />
    </div>
</template>

<style>
/* ── DESIGN TOKENS ─────────────────────────────────── */
:root {
    --primary: #14C8D5;
    --secondary: #52E882;
    --navy: #040c10;
    --glass: rgba(255, 255, 255, 0.06);
    --glass-border: rgba(255, 255, 255, 0.12);
}

html { scroll-behavior: smooth; }

.about-page {
    font-family: 'Outfit', sans-serif;
    background: var(--navy);
    color: #e2e8f0;
    overflow-x: hidden;
    min-height: 100vh;
    transition: background 0.3s ease, color 0.3s ease;
}

/* ── BACKGROUND ─────────────────────────────────── */
.about-page .bg-mesh {
    position: fixed;
    inset: 0;
    z-index: 0;
    pointer-events: none;
    background:
        radial-gradient(ellipse 80% 60% at 20% 10%, rgba(82, 232, 130, 0.08) 0%, transparent 60%),
        radial-gradient(ellipse 60% 50% at 80% 80%, rgba(20, 200, 213, 0.07) 0%, transparent 55%),
        radial-gradient(ellipse 50% 40% at 60% 30%, rgba(121, 40, 202, 0.05) 0%, transparent 50%),
        var(--navy);
}

.about-page .bg-grid {
    position: fixed;
    inset: 0;
    z-index: 0;
    pointer-events: none;
    background-image:
        linear-gradient(rgba(20, 200, 213, 0.05) 1px, transparent 1px),
        linear-gradient(90deg, rgba(20, 200, 213, 0.05) 1px, transparent 1px);
    background-size: 60px 60px;
    opacity: 0.5;
}

/* ── LIGHT THEME ─────────────────────────────────── */
.about-page.theme-light {
    --navy: #f0fdfb;
    --glass: rgba(255, 255, 255, 0.72);
    --glass-border: rgba(20, 200, 213, 0.22);
    background: #f0fdfb;
    color: #0d2a2e;
}
.about-page.theme-light .bg-mesh {
    background:
        radial-gradient(ellipse 80% 60% at 20% 10%, rgba(82, 232, 130, 0.07) 0%, transparent 60%),
        radial-gradient(ellipse 60% 50% at 80% 80%, rgba(20, 200, 213, 0.06) 0%, transparent 55%),
        #f0fdfb;
}
.about-page.theme-light .bg-grid {
    background-image:
        linear-gradient(rgba(20, 200, 213, 0.06) 1px, transparent 1px),
        linear-gradient(90deg, rgba(20, 200, 213, 0.06) 1px, transparent 1px);
}
.about-page.theme-light .text-white { color: #0d2a2e !important; }
.about-page.theme-light .glass {
    background: rgba(255, 255, 255, 0.72);
    border-color: rgba(20, 200, 213, 0.2);
}
.about-page.theme-light .glass-card {
    background: rgba(255, 255, 255, 0.78);
    border-color: rgba(20, 200, 213, 0.18);
}
.about-page.theme-light .glass-card:hover {
    background: rgba(255, 255, 255, 0.95) !important;
    border-color: rgba(20, 200, 213, 0.45) !important;
}
.about-page.theme-light nav {
    background: rgba(240, 253, 251, 0.85) !important;
    border-bottom-color: rgba(20, 200, 213, 0.15) !important;
}
.about-page.theme-light nav.scrolled {
    background: rgba(240, 253, 251, 0.96) !important;
    box-shadow: 0 4px 30px rgba(20, 200, 213, 0.1) !important;
}
.about-page.theme-light .nav-link { color: rgba(13, 42, 46, 0.7); }
.about-page.theme-light .nav-link:hover { color: #0d2a2e; }
.about-page.theme-light .nav-link--active { color: #0d2a2e !important; }
.about-page.theme-light .nav-links { background: rgba(240, 253, 251, 0.98) !important; }
.about-page.theme-light .hamburger span { background: #0d2a2e; }
.about-page.theme-light .btn-outline {
    color: #0d2a2e;
    border-color: rgba(13, 42, 46, 0.2);
}
.about-page.theme-light .btn-outline:hover {
    background: rgba(20, 200, 213, 0.07);
    border-color: rgba(20, 200, 213, 0.4);
}
.about-page.theme-light footer { border-top-color: rgba(13, 42, 46, 0.1) !important; }
.about-page.theme-light footer p { color: rgba(13, 42, 46, 0.4) !important; }
.about-page.theme-light .section-label { color: var(--primary); }

/* ── NAVBAR ─────────────────────────────────── */
nav {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    z-index: 100;
    height: 70px;
    display: flex;
    align-items: center;
    background: rgba(4, 12, 16, 0.7);
    backdrop-filter: blur(20px);
    border-bottom: 1px solid rgba(255, 255, 255, 0.07);
    transition: background 0.3s, box-shadow 0.3s;
}
nav.scrolled {
    background: rgba(4, 12, 16, 0.92);
    box-shadow: 0 4px 30px rgba(0, 0, 0, 0.4);
}
.logo-text {
    font-family: 'Orbitron', sans-serif;
    font-weight: 700;
    letter-spacing: 0.08em;
}
.nav-link {
    font-size: 0.875rem;
    font-weight: 500;
    color: rgba(255, 255, 255, 0.6);
    text-decoration: none;
    transition: color 0.2s;
    position: relative;
}
.nav-link::after {
    content: '';
    position: absolute;
    bottom: -3px;
    left: 0;
    width: 0;
    height: 1.5px;
    background: var(--primary);
    transition: width 0.25s;
}
.nav-link:hover::after,
.nav-link--active::after { width: 100%; }
.nav-link:hover { color: #fff; }
.nav-link--active { color: #fff; }

/* ── BUTTONS ─────────────────────────────────── */
.btn-primary {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    padding: 0.65rem 1.5rem;
    border-radius: 50px;
    background: linear-gradient(135deg, var(--primary), var(--secondary));
    color: #040c10;
    font-weight: 700;
    font-size: 0.875rem;
    text-decoration: none;
    transition: opacity 0.2s, transform 0.2s, box-shadow 0.2s;
    cursor: pointer;
    border: none;
}
.btn-primary:hover {
    opacity: 0.88;
    transform: translateY(-1px);
    box-shadow: 0 8px 25px rgba(20, 200, 213, 0.35);
}
.btn-outline {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    padding: 0.65rem 1.5rem;
    border-radius: 50px;
    border: 1px solid rgba(255, 255, 255, 0.18);
    color: rgba(255, 255, 255, 0.75);
    font-weight: 500;
    font-size: 0.875rem;
    text-decoration: none;
    transition: background 0.2s, border-color 0.2s, color 0.2s;
    background: transparent;
}
.btn-outline:hover {
    background: rgba(255, 255, 255, 0.06);
    border-color: rgba(255, 255, 255, 0.35);
    color: #fff;
}

/* ── GLASS ─────────────────────────────────── */
.glass {
    background: var(--glass);
    border: 1px solid var(--glass-border);
    backdrop-filter: blur(16px);
}
.glass-card {
    background: rgba(255, 255, 255, 0.05);
    border: 1px solid rgba(255, 255, 255, 0.1);
    border-radius: 18px;
    transition: background 0.25s, border-color 0.25s, box-shadow 0.25s;
}
.glass-card:hover {
    background: rgba(255, 255, 255, 0.09);
    border-color: rgba(20, 200, 213, 0.3);
    box-shadow: 0 16px 48px rgba(20, 200, 213, 0.08);
}

/* ── ORB ─────────────────────────────────── */
.orb {
    position: absolute;
    border-radius: 50%;
    filter: blur(70px);
    pointer-events: none;
    animation: float 8s ease-in-out infinite;
}
@keyframes float {
    0%, 100% { transform: translateY(0px); }
    50% { transform: translateY(-20px); }
}

/* ── GLOW LINE ─────────────────────────────────── */
.glow-line {
    height: 1px;
    background: linear-gradient(90deg, transparent, var(--primary), transparent);
    opacity: 0.3;
}

/* ── BADGE ─────────────────────────────────── */
.badge {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    padding: 0.4rem 1rem;
    border-radius: 50px;
    background: rgba(20, 200, 213, 0.1);
    border: 1px solid rgba(20, 200, 213, 0.25);
    font-size: 0.78rem;
    font-weight: 600;
    color: var(--primary);
    letter-spacing: 0.06em;
}

/* ── TYPOGRAPHY ─────────────────────────────────── */
.hero-title {
    font-family: 'Orbitron', sans-serif;
    font-size: clamp(2rem, 5vw, 3.5rem);
    font-weight: 900;
    line-height: 1.15;
    letter-spacing: -0.02em;
}
.grad-text {
    background: linear-gradient(135deg, var(--secondary), var(--primary));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
}
.grad-text-blue {
    background: linear-gradient(135deg, var(--primary), #60a5fa);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
}
.section-label {
    font-size: 0.75rem;
    font-weight: 700;
    letter-spacing: 0.18em;
    text-transform: uppercase;
    color: var(--primary);
}
.section-title {
    font-family: 'Orbitron', sans-serif;
    font-size: clamp(1.6rem, 3.5vw, 2.5rem);
    font-weight: 800;
    line-height: 1.2;
}
.feat-dot {
    width: 8px;
    height: 8px;
    border-radius: 50%;
    background: linear-gradient(135deg, var(--primary), var(--secondary));
    flex-shrink: 0;
}

/* ── BRAND TAG ─────────────────────────────────── */
.brand-tag {
    padding: 3px 10px;
    border-radius: 20px;
    font-size: 0.72rem;
    font-weight: 600;
    letter-spacing: 0.04em;
    background: rgba(255, 255, 255, 0.07);
    border: 1px solid rgba(255, 255, 255, 0.12);
    color: rgba(255, 255, 255, 0.55);
}

/* ── LEGAL CARD ELEMENTS ─────────────────────────────────── */
.legal-icon {
    width: 52px;
    height: 52px;
    border-radius: 16px;
    border: 1px solid rgba(255, 255, 255, 0.1);
    display: flex;
    align-items: center;
    justify-content: center;
    background: rgba(255, 255, 255, 0.06);
}
.legal-badge {
    display: inline-block;
    padding: 3px 10px;
    border-radius: 20px;
    font-size: 0.68rem;
    font-weight: 600;
    letter-spacing: 0.06em;
    border: 1px solid;
    margin-bottom: 10px;
}
.legal-title {
    font-family: 'Orbitron', sans-serif;
    font-size: 1.35rem;
    font-weight: 800;
    letter-spacing: 0.05em;
    margin: 0 0 2px;
}
.legal-subtitle {
    font-size: 0.82rem;
    color: rgba(255, 255, 255, 0.5);
    margin-bottom: 14px;
    line-height: 1.4;
}
.legal-number {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    padding: 6px 14px;
    border-radius: 8px;
    background: rgba(255, 255, 255, 0.05);
    border: 1px solid rgba(255, 255, 255, 0.1);
    margin-bottom: 14px;
}
.legal-number__label {
    font-size: 0.7rem;
    color: rgba(255, 255, 255, 0.4);
    letter-spacing: 0.08em;
    text-transform: uppercase;
}
.legal-number__value {
    font-family: 'Orbitron', sans-serif;
    font-size: 0.8rem;
    font-weight: 600;
    color: rgba(255, 255, 255, 0.75);
    letter-spacing: 0.05em;
}
.legal-desc {
    font-size: 0.875rem;
    color: rgba(255, 255, 255, 0.5);
    line-height: 1.75;
}

/* ── REVEAL ANIMATION ─────────────────────────────────── */
.reveal {
    opacity: 0;
    transform: translateY(28px);
    transition: opacity 0.6s ease, transform 0.6s ease;
}
.reveal.visible {
    opacity: 1;
    transform: translateY(0);
}

/* ── HAMBURGER ─────────────────────────────────── */
.hamburger {
    display: none;
    flex-direction: column;
    gap: 5px;
    cursor: pointer;
    background: none;
    border: none;
    padding: 4px;
}
.hamburger span {
    display: block;
    width: 22px;
    height: 2px;
    background: rgba(255, 255, 255, 0.7);
    border-radius: 2px;
    transition: 0.2s;
}
.theme-toggle {
    width: 36px;
    height: 36px;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 50%;
    border: 1px solid rgba(255, 255, 255, 0.12);
    background: rgba(255, 255, 255, 0.05);
    color: rgba(255, 255, 255, 0.6);
    cursor: pointer;
    transition: background 0.2s, color 0.2s;
}
.theme-toggle:hover {
    background: rgba(20, 200, 213, 0.12);
    color: var(--primary);
}

/* ── RESPONSIVE ─────────────────────────────────── */
@media (max-width: 768px) {
    .hamburger { display: flex; }
    .nav-links {
        position: fixed;
        top: 70px;
        left: 0;
        right: 0;
        background: rgba(4, 12, 16, 0.97);
        backdrop-filter: blur(20px);
        border-bottom: 1px solid rgba(255, 255, 255, 0.08);
        flex-direction: column;
        padding: 1.5rem 2rem;
        gap: 1.25rem !important;
        transform: translateY(-110%);
        transition: transform 0.3s ease;
        z-index: 99;
    }
    .nav-links.open { transform: translateY(0); }
}
</style>
