/**
 * Slide loader + overview / presenting modes.
 * Ưu tiên window.slidesList (khai báo trong index.html); nếu không có thì dùng DEFAULT_SLIDES_LIST (bộ DFT mẫu).
 * Class body khi trình chiếu: presentation-mode (khớp slides.css + presentation-tools.css).
 */
const DEFAULT_SLIDES_LIST = [
    'sections/00_00_cover.html',
    'sections/00_01_toc.html',
    'sections/01_00_chapter.html',
    'sections/01_01_khai_niem.html',
    'sections/01_02_background.html',
    'sections/01_03_objectives.html',
    'sections/01_04_physical_defects.html',
    'sections/02_00_chapter.html',
    'sections/02_01_huffman.html',
    'sections/02_02_combinational_testability.html',
    'sections/02_03_why_scan_design.html',
    'sections/02_04_tradeoffs.html',
    'sections/02_05_logic_fault_models.html',
    'sections/03_00_chapter.html',
    'sections/03_01_insertion.html',
    'sections/03_02_muxdemux.html',
    'sections/03_03_isolated_scan.html',
    'sections/03_04_reduce_simul.html',
    'sections/03_05_basic_scan_concept.html',
    'sections/04_00_chapter.html',
    'sections/04_01_fullscan_intro.html',
    'sections/04_02_ff_structures.html',
    'sections/04_03_residue5.html',
    'sections/04_04_virtual_tester.html',
    'sections/05_00_chapter.html',
    'sections/05_01_full_scan_architecture.html',
    'sections/05_02_shadow_register.html',
    'sections/05_03_partial_scan.html',
    'sections/05_04_multiple_scan_intro.html',
    'sections/05_05_other_scan.html',
    'sections/06_00_chapter.html',
    'sections/06_01_rtl_full_scan.html',
    'sections/06_02_rtl_full_scan_ex.html',
    'sections/06_03_rtl_multiple_scan.html',
    'sections/06_04_rtl_multiple_scan_ex.html',
    'sections/07_00_chapter.html',
    'sections/07_01_comparison.html',
    'sections/07_02_casestudy.html',
    'sections/07_03_summary.html',
    'sections/07_04_references.html',
    'sections/07_99_thanks.html'
];

function getSlideUrls() {
    if (Array.isArray(window.slidesList) && window.slidesList.length > 0) {
        return window.slidesList;
    }
    return DEFAULT_SLIDES_LIST;
}

const wrapper = document.getElementById('slides_wrapper');
var currentSlide = 0;
var isPresenting = false;
let scaleObserver = null;

function initResizeObserver() {
    if (!scaleObserver) {
        scaleObserver = new ResizeObserver((entries) => {
            if (!isPresenting) return;
            for (let entry of entries) {
                if (entry.target.classList.contains('active')) {
                    recalculateScale(entry.target);
                    break;
                }
            }
        });
    }
}

function recalculateScale(activeSlide) {
    let baseWidth = 1440;
    let baseHeight = 900;

    if (activeSlide && activeSlide.scrollHeight > baseHeight) {
        baseHeight = activeSlide.scrollHeight + 40;
    }

    const sx = window.innerWidth / baseWidth;
    const sy = window.innerHeight / baseHeight;
    const scale = Math.min(sx, sy);
    document.body.style.setProperty('--scale', scale);
}

function observeActiveSlide() {
    initResizeObserver();
    scaleObserver.disconnect();
    const activeSlide = document.querySelector('.slide-container.active');
    if (activeSlide) {
        scaleObserver.observe(activeSlide);
        recalculateScale(activeSlide);
    }
}

function updateOverviewZoom() {
    if (isPresenting) return;
    const vw = window.innerWidth;
    const slideWidth = 1440;
    const zoom = Math.min(1, (vw * 0.9) / slideWidth);
    document.documentElement.style.setProperty('--slide-zoom', zoom);
}
updateOverviewZoom();

window.addEventListener('resize', () => {
    if (isPresenting) {
        const activeSlide = document.querySelector('.slide-container.active');
        recalculateScale(activeSlide);
    } else {
        updateOverviewZoom();
    }
});

async function loadSlides() {
    const slideUrls = getSlideUrls();

    if (!wrapper) {
        const loadingEl = document.getElementById('loading');
        if (loadingEl) {
            loadingEl.innerHTML =
                '<p style="text-align:center;color:#b91c1c;">Thiếu phần tử <code>#slides_wrapper</code> trong HTML.</p>';
        }
        return;
    }

    try {
        const promises = slideUrls.map((url) =>
            fetch(url).then((res) => {
                if (!res.ok) throw new Error(`Could not load ${url}`);
                return res.text();
            })
        );

        const contents = await Promise.all(promises);

        let globalIndex = 0;
        contents.forEach((html) => {
            const div = document.createElement('div');
            div.innerHTML = html;
            const subSlides = div.querySelectorAll('.slide-container');
            if (subSlides.length > 0) {
                subSlides.forEach((slide) => {
                    slide.id = `slide-${globalIndex++}`;
                    wrapper.appendChild(slide);
                });
            } else if (div.firstElementChild) {
                div.firstElementChild.id = `slide-${globalIndex++}`;
                wrapper.appendChild(div.firstElementChild);
            }
        });

        const loadingEl = document.getElementById('loading');
        if (loadingEl) loadingEl.style.display = 'none';
        updateCounter();

        if (window.MathJax && typeof MathJax.typesetPromise === 'function') {
            MathJax.typesetPromise().catch((err) => console.log('MathJax error: ', err));
        } else {
            console.log('MathJax not ready yet, will typeset when available.');
            document.getElementById('MathJax-script')?.addEventListener('load', () => {
                if (typeof MathJax.typesetPromise === 'function') {
                    MathJax.typesetPromise().catch((err) => console.log('MathJax error: ', err));
                }
            });
        }

        return Promise.resolve();
    } catch (error) {
        console.error(error);
        const loadingEl = document.getElementById('loading');
        if (loadingEl) {
            loadingEl.innerHTML = `
            <div style="text-align: center; color: #ff6b6b; padding: 20px;">
                <h1>Lỗi tải dữ liệu Slide!</h1>
                <p>Chi tiết lỗi:</p>
                <div style="background: #333; padding: 20px; border-radius: 8px; margin-top: 20px; word-break: break-word;">
                    <code>${error.message}</code>
                </div>
                <p style="margin-top:16px;font-size:0.95rem;color:#94a3b8;">Mở qua HTTP server (vd. <code>python -m http.server</code>), không mở file trực tiếp <code>file://</code>.</p>
            </div>
        `;
        }
    }
}

function updateCounter() {
    const total = document.querySelectorAll('.slide-container').length;
    const el = document.getElementById('counter');
    if (el) el.innerText = `${currentSlide + 1} / ${total}`;
}

function updateView() {
    const slides = document.querySelectorAll('.slide-container');
    updateCounter();

    if (isPresenting) {
        slides.forEach((s, i) => {
            s.classList.toggle('active', i === currentSlide);
        });
        observeActiveSlide();
    } else if (slides[currentSlide]) {
        slides[currentSlide].scrollIntoView({ behavior: 'smooth', block: 'center' });
    }
}

function nextSlide() {
    const total = document.querySelectorAll('.slide-container').length;
    if (currentSlide < total - 1) {
        currentSlide++;
        updateView();
    }
}

function prevSlide() {
    if (currentSlide > 0) {
        currentSlide--;
        updateView();
    }
}

let wasFullscreenAchieved = false;

function togglePresentation() {
    const slides = document.querySelectorAll('.slide-container');
    isPresenting = !isPresenting;
    document.body.classList.toggle('presentation-mode', isPresenting);

    if (isPresenting) {
        wasFullscreenAchieved = false;
        document.documentElement.requestFullscreen().then(() => {
            wasFullscreenAchieved = true;
        }).catch(() => {
            console.log('Fullscreen not available, presenting in windowed mode.');
            wasFullscreenAchieved = false;
        });
        updateView();
        const btnIcon = document.querySelector('#controls button:nth-child(2) i');
        if (btnIcon) {
            btnIcon.classList.remove('fa-play');
            btnIcon.classList.add('fa-compress');
        }
    } else {
        wasFullscreenAchieved = false;
        if (document.fullscreenElement) {
            document.exitFullscreen().catch(() => {});
        }
        document.body.style.setProperty('--scale', 1);
        slides.forEach((s) => s.classList.remove('active'));
        const btnIcon = document.querySelector('#controls button:nth-child(2) i');
        if (btnIcon) {
            btnIcon.classList.remove('fa-compress');
            btnIcon.classList.add('fa-play');
        }
        if (window.presentationTools) {
            window.presentationTools.cleanup();
        }
        setTimeout(() => slides[currentSlide]?.scrollIntoView({ behavior: 'smooth', block: 'center' }), 100);
    }
}

document.addEventListener('fullscreenchange', () => {
    if (!document.fullscreenElement && isPresenting && wasFullscreenAchieved) {
        togglePresentation();
    }
});

document.addEventListener('keydown', (e) => {
    if (document.querySelector('#slide-jump-overlay.visible') || document.querySelector('#chapter-nav-overlay.visible')) return;
    if (document.querySelector('#blackout-overlay.visible')) return;

    if (!isPresenting) {
        if (e.key === 'ArrowRight' || e.key === ' ') {
            if (!document.body.classList.contains('drawing-mode')) nextSlide();
        }
        if (e.key === 'ArrowLeft') {
            if (!document.body.classList.contains('drawing-mode')) prevSlide();
        }
    }

    if (e.key === 'f' || e.key === 'F' || e.key === 'p' || e.key === 'P') {
        if (e.key === 'f' || e.key === 'F') togglePresentation();
        if ((e.key === 'p' || e.key === 'P') && !isPresenting) togglePresentation();
    }
});

document.addEventListener('click', (e) => {
    if (
        isPresenting &&
        !e.target.closest('#controls') &&
        !e.target.closest('#pres-toolbar') &&
        !e.target.closest('#context-menu') &&
        !e.target.closest('#drawing-toolbar') &&
        !document.body.classList.contains('drawing-mode') &&
        !document.body.classList.contains('laser-mode') &&
        !document.querySelector('#slide-jump-overlay.visible') &&
        !document.querySelector('#chapter-nav-overlay.visible')
    ) {
        nextSlide();
    }
});

const observer = new IntersectionObserver(
    (entries) => {
        if (isPresenting) return;
        entries.forEach((entry) => {
            if (entry.isIntersecting) {
                const index = parseInt(entry.target.id.replace('slide-', ''), 10);
                if (!isNaN(index)) {
                    currentSlide = index;
                    updateCounter();
                }
            }
        });
    },
    { threshold: 0.6 }
);

function wireControls() {
    const prevBtn = document.querySelector('#controls button:nth-child(1)');
    const playBtn = document.querySelector('#controls button:nth-child(2)');
    const nextBtn = document.querySelector('#controls button:nth-child(3)');
    if (prevBtn) {
        prevBtn.addEventListener('click', (e) => {
            e.stopPropagation();
            prevSlide();
        });
    }
    if (playBtn) {
        playBtn.addEventListener('click', (e) => {
            e.stopPropagation();
            togglePresentation();
        });
    }
    if (nextBtn) {
        nextBtn.addEventListener('click', (e) => {
            e.stopPropagation();
            nextSlide();
        });
    }
}

wireControls();

loadSlides().then(() => {
    document.querySelectorAll('.slide-container').forEach((slide) => {
        observer.observe(slide);
    });
});
