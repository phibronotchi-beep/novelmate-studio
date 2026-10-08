(function () {
  document.documentElement.classList.add("motion-ready");

  var bar = document.createElement("div");
  bar.className = "scroll-glow";
  bar.setAttribute("aria-hidden", "true");
  document.body.appendChild(bar);

  var motes = document.createElement("div");
  motes.className = "motes";
  motes.setAttribute("aria-hidden", "true");
  for (var n = 0; n < 22; n++) {
    var mote = document.createElement("i");
    mote.style.left = (4 + (n * 4.3) % 92) + "%";
    mote.style.animationDuration = (9 + (n % 7) * 1.4) + "s";
    mote.style.animationDelay = (n * 0.45) + "s";
    mote.style.setProperty("--mx", ((n % 2 ? 1 : -1) * (12 + n % 18)) + "px");
    motes.appendChild(mote);
  }
  document.body.appendChild(motes);

  function onScroll() {
    var max = document.documentElement.scrollHeight - window.innerHeight;
    var pct = max > 0 ? (window.scrollY / max) * 100 : 0;
    bar.style.width = pct + "%";
  }
  onScroll();
  window.addEventListener("scroll", onScroll, { passive: true });

  var nodes = document.querySelectorAll(
    ".section-title, .section-kicker, .card, .step, .mosaic figure, .sister-card, .feature-media, .check li, .feature-copy, .price"
  );
  nodes.forEach(function (el, i) {
    el.classList.add("reveal");
    el.style.setProperty("--d", (i % 6) * 0.06 + "s");
  });

  if ("IntersectionObserver" in window) {
    var seen = new IntersectionObserver(function (entries) {
      entries.forEach(function (entry) {
        if (!entry.isIntersecting) return;
        entry.target.classList.add("in");
        seen.unobserve(entry.target);
      });
    }, { threshold: 0.16, rootMargin: "0px 0px -8% 0px" });
    nodes.forEach(function (el) { seen.observe(el); });
  } else {
    nodes.forEach(function (el) { el.classList.add("in"); });
  }

  var cap = document.getElementById("heroCaption");
  if (cap && "MutationObserver" in window) {
    var capWatch = new MutationObserver(function () {
      cap.classList.remove("is-fresh");
      void cap.offsetWidth;
      cap.classList.add("is-fresh");
    });
    capWatch.observe(cap, { childList: true, characterData: true, subtree: true });
  }
})();
