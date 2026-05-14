<script setup lang="ts">
withDefaults(defineProps<{
    /**
     * When true, renders a simple one-line copyright footer.
     * When false (default), renders the full multi-column footer.
     */
    mini?: boolean;
}>(), { mini: false });
</script>

<template>

    <!-- ── MINI FOOTER ───────────────────────────────────────── -->
    <footer v-if="mini" style="border-top: 1px solid rgba(255,255,255,0.07); padding: 1.75rem 0; text-align: center">
        <p style="color: rgba(255,255,255,0.3); font-size: 0.82rem">
            &copy; {{ new Date().getFullYear() }} PT Aruna Multi Komputer. Hak cipta dilindungi undang-undang.
        </p>
    </footer>

    <!-- ── FULL FOOTER ───────────────────────────────────────── -->
    <footer v-else class="site-footer">
        <!-- Glow top border -->
        <div class="footer-glow-border"></div>

        <!-- Top CTA strip -->
        <div class="footer-cta-strip">
            <div class="max-w-7xl mx-auto px-6 py-6 flex flex-col sm:flex-row items-center justify-between gap-4">
                <div class="flex items-center gap-3">
                    <div class="footer-cta-dot"></div>
                    <span style="font-size: 0.9rem; font-weight: 500">Butuh konsultasi IT? Tim kami siap membantu setiap hari kerja.</span>
                </div>
                <a href="https://wa.me/6281234567890" class="btn-primary" target="_blank" rel="noopener noreferrer" style="flex-shrink: 0; padding: 0.6rem 1.4rem; font-size: 0.85rem">
                    <svg width="15" height="15" viewBox="0 0 24 24" fill="currentColor">
                        <path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347z" />
                        <path d="M12 0C5.373 0 0 5.373 0 12c0 2.116.549 4.109 1.51 5.845L.057 23.547a.5.5 0 00.608.61l5.83-1.53A11.945 11.945 0 0012 24c6.627 0 12-5.373 12-12S18.627 0 12 0zm0 22c-1.891 0-3.667-.51-5.19-1.4l-.37-.22-3.838 1.007 1.028-3.75-.242-.386A9.96 9.96 0 012 12C2 6.477 6.477 2 12 2s10 4.477 10 10-4.477 10-10 10z" />
                    </svg>
                    WhatsApp Kami
                </a>
            </div>
        </div>

        <!-- Main footer body -->
        <div class="max-w-7xl mx-auto px-6 pt-16 pb-10">
            <div class="grid md:grid-cols-12 gap-10 mb-14">

                <!-- Brand col -->
                <div class="md:col-span-4">
                    <div style="display: flex; align-items: center; gap: 12px; margin-bottom: 1.25rem">
                        <img src="/logo.png" alt="Aruna Multi Komputer" style="width: 46px; height: 46px; object-fit: contain" />
                        <div>
                            <div class="logo-text text-white" style="font-size: 0.95rem">ARUNA MULTI KOMPUTER</div>
                            <div style="font-size: 0.58rem; color: var(--primary); letter-spacing: 0.18em">SOLUSI TEKNOLOGI TERPERCAYA</div>
                        </div>
                    </div>
                    <p style="color: rgba(255,255,255,0.45); font-size: 0.875rem; line-height: 1.85; max-width: 290px; margin-bottom: 1.75rem">
                        Mitra teknologi terpercaya untuk distribusi dan retail perangkat komputer, networking, CCTV, dan solusi IT lengkap di Indonesia.
                    </p>
                    <!-- Social icons -->
                    <div style="display: flex; gap: 10px">
                        <a href="#" class="social-link" aria-label="Facebook">
                            <svg width="15" height="15" viewBox="0 0 24 24" fill="currentColor"><path d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z" /></svg>
                        </a>
                        <a href="#" class="social-link" aria-label="Instagram">
                            <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="2" y="2" width="20" height="20" rx="5" ry="5" /><path d="M16 11.37A4 4 0 1112.63 8 4 4 0 0116 11.37z" /><line x1="17.5" y1="6.5" x2="17.51" y2="6.5" /></svg>
                        </a>
                        <a href="https://wa.me/6281234567890" class="social-link" aria-label="WhatsApp" target="_blank" rel="noopener noreferrer">
                            <svg width="15" height="15" viewBox="0 0 24 24" fill="currentColor"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347z" /><path d="M12 0C5.373 0 0 5.373 0 12c0 2.116.549 4.109 1.51 5.845L.057 23.547a.5.5 0 00.608.61l5.83-1.53A11.945 11.945 0 0012 24c6.627 0 12-5.373 12-12S18.627 0 12 0zm0 22c-1.891 0-3.667-.51-5.19-1.4l-.37-.22-3.838 1.007 1.028-3.75-.242-.386A9.96 9.96 0 012 12C2 6.477 6.477 2 12 2s10 4.477 10 10-4.477 10-10 10z" /></svg>
                        </a>
                        <a href="#" class="social-link" aria-label="TikTok">
                            <svg width="15" height="15" viewBox="0 0 24 24" fill="currentColor"><path d="M19.59 6.69a4.83 4.83 0 01-3.77-4.25V2h-3.45v13.67a2.89 2.89 0 01-2.88 2.5 2.89 2.89 0 01-2.89-2.89 2.89 2.89 0 012.89-2.89c.28 0 .54.04.79.1V9.01a6.33 6.33 0 00-.79-.05 6.34 6.34 0 00-6.34 6.34 6.34 6.34 0 006.34 6.34 6.34 6.34 0 006.33-6.34V8.69a8.18 8.18 0 004.78 1.52V6.76a4.85 4.85 0 01-1.01-.07z" /></svg>
                        </a>
                    </div>
                </div>

                <!-- Perusahaan col -->
                <div class="md:col-span-2">
                    <div class="footer-col-title">PERUSAHAAN</div>
                    <div style="display: flex; flex-direction: column; gap: 0.65rem">
                        <a href="/about" class="footer-link">Tentang Kami</a>
                        <a href="/product" class="footer-link">Produk &amp; Layanan</a>
                        <a href="/contact" class="footer-link">Hubungi Kami</a>
                    </div>
                </div>

                <!-- Produk col -->
                <div class="md:col-span-3">
                    <div class="footer-col-title">PRODUK</div>
                    <div style="display: flex; flex-direction: column; gap: 0.65rem">
                        <a href="/product" class="footer-link">💻 Komputer &amp; Laptop</a>
                        <a href="/product" class="footer-link">🌐 Networking</a>
                        <a href="/product" class="footer-link">📹 CCTV &amp; Keamanan</a>
                        <a href="/product" class="footer-link">⚡ UPS &amp; Power</a>
                        <a href="/product" class="footer-link">🖨️ Printer &amp; Periferal</a>
                        <a href="/product" class="footer-link">🔧 Jasa IT &amp; Konsultasi</a>
                    </div>
                </div>

                <!-- Contact mini-card -->
                <div class="md:col-span-3">
                    <div class="footer-col-title">KONTAK</div>
                    <div style="display: flex; flex-direction: column; gap: 0.9rem">
                        <div class="footer-contact-row">
                            <span class="footer-contact-icon">📍</span>
                            <span>Jl. Teknologi No. 1, Makassar, Sulawesi Selatan</span>
                        </div>
                        <div class="footer-contact-row">
                            <span class="footer-contact-icon">📞</span>
                            <span>(0411) 123-4567 / 0812-3456-7890</span>
                        </div>
                        <div class="footer-contact-row">
                            <span class="footer-contact-icon">✉️</span>
                            <span>info@arunamultikomputer.com</span>
                        </div>
                        <div class="footer-contact-row">
                            <span class="footer-contact-icon">🕐</span>
                            <span>Senin – Sabtu: 08.00 – 17.00 WITA</span>
                        </div>
                    </div>
                </div>

            </div>

            <!-- Brand badges divider -->
            <div class="footer-brand-strip">
                <span class="footer-brand-badge">ASUS</span>
                <span class="footer-brand-badge">Lenovo</span>
                <span class="footer-brand-badge">MikroTik</span>
                <span class="footer-brand-badge">Hikvision</span>
                <span class="footer-brand-badge">TP-Link</span>
                <span class="footer-brand-badge">Epson</span>
                <span class="footer-brand-badge">Cisco</span>
                <span class="footer-brand-badge">Dell</span>
                <span class="footer-brand-badge">HP</span>
                <span class="footer-brand-badge">APC</span>
            </div>

            <!-- Bottom bar -->
            <div class="footer-bottom">
                <p style="color: rgba(255,255,255,0.3); font-size: 0.8rem">
                    &copy; {{ new Date().getFullYear() }} <span style="color: var(--primary); font-weight: 600">Aruna Multi Komputer</span>. Seluruh hak cipta dilindungi.
                </p>
                <div style="display: flex; align-items: center; gap: 6px">
                    <div style="width: 6px; height: 6px; border-radius: 50%; background: var(--secondary); box-shadow: 0 0 8px var(--secondary)"></div>
                    <span style="color: var(--text-faint); font-size: 0.72rem">Makassar, Sulawesi Selatan — Indonesia</span>
                </div>
            </div>
        </div>
    </footer>

</template>
