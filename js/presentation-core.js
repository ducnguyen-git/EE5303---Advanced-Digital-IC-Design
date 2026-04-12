/**
 * Loads slide HTML fragments, drives updateView/nextSlide/prevSlide/togglePresentation.
 * presentation-tools.js patches updateView after this script defines it.
 */
(function () {
    'use strict';

    window.currentSlide = 0;
    window.isPresenting = false;

    function getSlides() {
        return document.querySelectorAll('.slide-container');
    }

    function updateSlideMeta() {
        const el = document.getElementById('pres-slide-meta');
        if (!el) return;
        const slides = getSlides();
        el.textContent = `${window.currentSlide + 1} / ${slides.length}`;
    }

    window.updateView = function updateView() {
        const slides = getSlides();
        slides.forEach((slide, i) => {
            slide.classList.toggle('active', i === window.currentSlide);
        });
        updateSlideMeta();
    };

    window.nextSlide = function nextSlide() {
        const slides = getSlides();
        if (window.currentSlide < slides.length - 1) {
            window.currentSlide += 1;
            window.updateView();
        }
    };

    window.prevSlide = function prevSlide() {
        if (window.currentSlide > 0) {
            window.currentSlide -= 1;
            window.updateView();
        }
    };

    window.togglePresentation = function togglePresentation() {
        window.isPresenting = !window.isPresenting;
        document.body.classList.toggle('presenting', window.isPresenting);
        const mount = document.getElementById('slides-mount');
        const pre = document.getElementById('pre-start');
        const btn = document.getElementById('btn-start-pres');
        if (pre) pre.style.display = window.isPresenting ? 'none' : '';
        if (mount) mount.style.display = window.isPresenting ? 'flex' : '';
        if (btn) btn.style.display = window.isPresenting ? 'none' : '';
        if (window.isPresenting) {
            window.currentSlide = 0;
            window.updateView();
            const el = document.documentElement;
            if (el.requestFullscreen) el.requestFullscreen().catch(() => {});
        } else {
            if (document.fullscreenElement && document.exitFullscreen) {
                document.exitFullscreen().catch(() => {});
            }
            if (typeof window.presentationTools !== 'undefined' && window.presentationTools.cleanup) {
                window.presentationTools.cleanup();
            }
        }
    };

    async function loadSlides() {
        const list = window.slidesList;
        const mount = document.getElementById('slides-mount');
        const pre = document.getElementById('pre-start');
        if (!Array.isArray(list) || !list.length) {
            if (pre) pre.innerHTML = '<p>Không có <code>window.slidesList</code>.</p>';
            throw new Error('slidesList missing');
        }
        if (!mount) throw new Error('#slides-mount missing');

        const parts = [];
        for (const path of list) {
            const res = await fetch(path);
            if (!res.ok) throw new Error(`Failed to load ${path}: ${res.status}`);
            parts.push(await res.text());
        }
        mount.innerHTML = parts.join('\n');
    }

    function wireStartButton() {
        const btn = document.getElementById('btn-start-pres');
        if (btn) btn.addEventListener('click', () => window.togglePresentation());
    }

    function loadPresentationToolsScript() {
        return new Promise((resolve, reject) => {
            const s = document.createElement('script');
            s.src = 'js/presentation-tools.js';
            s.onload = () => resolve();
            s.onerror = () => reject(new Error('Could not load presentation-tools.js'));
            document.body.appendChild(s);
        });
    }

    window.initPresentation = async function initPresentation() {
        const pre = document.getElementById('pre-start');
        try {
            await loadSlides();
            if (pre) {
                pre.innerHTML =
                    '<p style="margin:0 0 12px;">Đã tải <strong>' +
                    document.querySelectorAll('.slide-container').length +
                    '</strong> slide.</p>' +
                    '<p style="margin:0;color:#64748b;font-size:0.95rem;">Nhấn <strong>Bắt đầu trình chiếu</strong> hoặc phím tắt (nếu có). Chuột phải: menu (laser, vẽ, chương…).</p>';
            }
            const btn = document.getElementById('btn-start-pres');
            if (btn) btn.style.display = 'block';
            wireStartButton();
            window.updateView();
            await loadPresentationToolsScript();
        } catch (e) {
            console.error(e);
            if (pre) {
                pre.innerHTML =
                    '<p style="color:#b91c1c"><strong>Lỗi tải slide.</strong><br>' +
                    String(e.message) +
                    '</p><p style="font-size:0.9rem">Chạy HTTP server tại thư mục gốc repo (ví dụ <code>python -m http.server 8000</code>) rồi mở <code>presentation_i2c.html</code>.</p>';
            }
        }
    };
})();
