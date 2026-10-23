<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- ============ [EDIT] PAGE TITLE (browser tab) ============ -->
<title>Amaan Ansari — Portfolio</title>

<style>
  /* ============ [EDIT] COLORS & FONT ============ */
  :root{
    --ink:#161616;        /* main text / heading colour */
    --muted:#6b6b6b;      /* secondary text */
    --bg:#ffffff;         /* page background */
    --line:#e6e6e6;       /* thin divider lines */
    --accent:#4a0d48;     /* accent used in the image placeholder */
    /* Helvetica-style font stack like the screenshots */
    --font:"Helvetica Neue",Helvetica,Arial,"Inter",system-ui,sans-serif;
  }

  *{margin:0;padding:0;box-sizing:border-box}
  html{scroll-behavior:smooth}
  body{font-family:var(--font);background:var(--bg);color:var(--ink);-webkit-font-smoothing:antialiased}

  /* Each "slide" is one full section of the long page */
  .slide{
    min-height:100vh;
    padding:48px 6vw 56px;
    display:flex;flex-direction:column;
    border-bottom:1px solid var(--line);
    position:relative;
  }

  /* Top bar on every slide: label (left) + date (right) */
  .topbar{display:flex;justify-content:space-between;font-size:15px;letter-spacing:-.01em}

  /* Big tight headings (the signature look) */
  .big{
    font-weight:800;
    letter-spacing:-.07em;
    line-height:.88;
    font-size:clamp(56px,11vw,170px);
    margin-top:7vh;
  }
  .big.thin{font-weight:400}

  .para{max-width:560px;font-size:clamp(14px,1.25vw,18px);line-height:1.5;text-align:justify;margin-top:5vh}
  .para b{font-weight:700}

  /* reveal-on-scroll animation */
  .reveal{opacity:0;transform:translateY(34px);transition:opacity .9s ease,transform .9s ease}
  .reveal.in{opacity:1;transform:none}

  /* ================= SLIDE 1 — COVER ================= */
  #s1{justify-content:space-between}
  #s1 .meta{margin-top:18px;line-height:1.35}
  #s1 .meta strong{display:block;font-size:22px;letter-spacing:-.03em}
  #s1 .logo{width:90px;margin-bottom:14px}
  #s1 .row{display:flex;justify-content:space-between;flex-wrap:wrap;gap:12px;font-size:16px;margin-top:10vh}
  #s1 .portfolio-word{
    font-weight:800;letter-spacing:-.09em;line-height:.8;
    font-size:clamp(90px,24vw,400px);
    margin-top:2vh;margin-left:-.04em;
  }

  /* ================= SLIDE 2 — HELLO / ABOUT ================= */
  .hello{display:grid;grid-template-columns:1fr 1fr;gap:5vw;align-items:start;margin-top:6vh}
  .photo{
    aspect-ratio:1/1;width:100%;
    background:var(--accent);
    border-radius:26px;overflow:hidden;
    display:flex;align-items:center;justify-content:center;
  }
  .photo img{width:100%;height:100%;object-fit:cover;display:block}
  .hello h1{font-size:clamp(48px,8.5vw,140px);font-weight:800;letter-spacing:-.07em;line-height:.88}
  .hello h1 span{font-weight:400;display:block}
  .hello .para{max-width:none}
  .contact{display:flex;justify-content:space-between;flex-wrap:wrap;gap:10px;margin-top:auto;padding-top:40px;font-size:15px}

  /* ================= SLIDE 3 — WHAT I DO ================= */
  .skills{
    display:grid;grid-template-columns:repeat(4,1fr);gap:28px 20px;
    margin-top:auto;padding-top:60px;
    font-weight:700;font-size:clamp(15px,1.7vw,24px);letter-spacing:-.02em;
  }

  /* ================= SLIDE 4 — TOOLS ================= */
  .toolchips{display:flex;flex-wrap:wrap;gap:12px;margin-top:6vh}
  .chip{border:1.5px solid var(--ink);border-radius:999px;padding:10px 20px;font-weight:600;font-size:16px;transition:.25s}
  .chip:hover{background:var(--ink);color:#fff}

  /* ================= SLIDE 5 — EXPERIENCE ================= */
  #s5 .split{display:grid;grid-template-columns:1.1fr 1fr;gap:5vw;margin-top:4vh}
  #s5 .big{margin-top:0}
  .timeline{display:flex;flex-direction:column;gap:26px;padding-top:6px}
  .job{display:grid;grid-template-columns:120px 1fr;gap:10px;font-size:15px}
  .job .yr{color:var(--muted)}
  .job .role{font-weight:700;font-size:19px;letter-spacing:-.02em}
  .job .co{color:var(--muted);font-size:18px}

  /* ================= FOOTER / THANK YOU ================= */
  #s6{justify-content:space-between;border-bottom:none}
  #s6 a{color:inherit;text-decoration:none;border-bottom:2px solid var(--ink)}

  /* Side dots navigation */
  .dots{position:fixed;right:18px;top:50%;transform:translateY(-50%);display:flex;flex-direction:column;gap:12px;z-index:10}
  .dots a{width:10px;height:10px;border-radius:50%;background:#c9c9c9;transition:.25s}
  .dots a.active{background:var(--ink);transform:scale(1.4)}

  /* Mobile */
  @media(max-width:800px){
    .hello,#s5 .split{grid-template-columns:1fr}
    .skills{grid-template-columns:repeat(2,1fr)}
    .job{grid-template-columns:90px 1fr}
    .dots{display:none}
  }
</style>
</head>

<body>

<!-- side navigation dots (one per slide) -->
<nav class="dots">
  <a href="#s1" class="active"></a><a href="#s2"></a><a href="#s3"></a>
  <a href="#s4"></a><a href="#s5"></a><a href="#s6"></a>
</nav>


<!-- =====================================================================
     SLIDE 1 — COVER
     ===================================================================== -->
<section class="slide" id="s1">
  <div class="reveal">
    <!-- [EDIT] LOGO: replace with your own logo image, or delete this line -->
    <svg class="logo" viewBox="0 0 100 40" fill="none" stroke="#161616" stroke-width="1.5">
      <ellipse cx="50" cy="20" rx="44" ry="17"/><ellipse cx="50" cy="20" rx="20" ry="17"/>
      <line x1="6" y1="20" x2="94" y2="20"/><path d="M50 9l4 11-4 11-4-11z" fill="#161616"/>
    </svg>
    <!-- [EDIT] DATE -->
    <div>20 Oct, 2026</div>
    <!-- [EDIT] PRESENTATION TITLE -->
    <div class="meta"><strong>DevOps Portfolio</strong>
      <!-- [EDIT] YOUR NAME -->
      Amaan Ansari
    </div>
  </div>

  <div>
    <div class="row reveal">
      <!-- [EDIT] YOUR ROLES (separated by slashes) -->
      <div>DevOps Engineer  &nbsp;/&nbsp; Linux &nbsp;/&nbsp; Cloud</div>
      <!-- [EDIT] CONTACT: EMAIL / PHONE / CITY -->
      <div>ansariamaan.298@gmail.com &nbsp;&nbsp; +91 90824 79108 &nbsp;&nbsp; Mumbai, India</div>
    </div>
    <!-- [EDIT] HUGE WORD at the bottom -->
    <div class="portfolio-word reveal">Portfolio</div>
  </div>
</section>


<!-- =====================================================================
     SLIDE 2 — HELLO / ABOUT ME
     ===================================================================== -->
<section class="slide" id="s2">
  <div class="topbar"><span>DevOps Portfolio</span><span>20 Oct, 2026</span></div>

  <div class="hello">
    <!-- [EDIT] IMAGE: put your photo path in src (e.g. "me.jpg").
         If the file is missing, the purple box stays as a placeholder -->
    <div class="photo reveal">
      <img src="me.jpg" alt="Amaan Ansari" onerror="this.style.display='none'">
    </div>

    <div class="reveal">
      <!-- [EDIT] NAME SECTION -->
      <h1>$ whoami<span>Amaan Ansari</span></h1>

      <!-- [EDIT] SHORT INTRO -->
      <p class="para" style="margin-top:6vh">
        A DevOps fresher building and automating infrastructure with Linux, Docker and the cloud.
      </p>
      <!-- [EDIT] LONGER ABOUT TEXT -->
      <p class="para" style="margin-top:2.4vh">
        I enjoy understanding how systems work end to end — from a Linux terminal to servers running
        on AWS. I learn by doing: spinning up VMs, SSH-ing into EC2 instances, and automating repetitive
        work. To me, DevOps is about making software reliable, repeatable and easy to ship.
      </p>
    </div>
  </div>

  <div class="contact">
    <!-- [EDIT] EMAIL / PHONE / LOCATION (bottom row) -->
    <span>ansariamaan.298@@gmail.com</span><span>+91 90824 79108</span><span>Mumbai, India</span>
  </div>
</section>


<!-- =====================================================================
     SLIDE 3 — WHAT I DO
     ===================================================================== -->
<section class="slide" id="s3">
  <div class="topbar"><span>DevOps Portfolio</span><span>20 Oct, 2026</span></div>

  <!-- [EDIT] HEADING -->
  <h2 class="big reveal">What I do?<br>(and love doing)</h2>

  <!-- [EDIT] DESCRIPTION -->
  <p class="para reveal" style="max-width:520px">
    I set up, automate and troubleshoot systems — sometimes clean, sometimes messy, but always
    working. I love the terminal, repeatable setups, and learning by breaking things in a VM.
  </p>

  <!-- [EDIT] SKILLS / SERVICES LIST (add or remove <div> lines) -->
  <div class="skills reveal">
    <div>Linux Admin</div><div>Docker</div><div>Ansible</div><div>Git &amp; GitHub</div>
    <div>AWS EC2</div><div>SSH &amp; Networking</div><div>Shell Scripting</div><div>Cloud Computing</div>
  </div>
</section>


<!-- =====================================================================
     SLIDE 4 — TOOLS
     ===================================================================== -->
<section class="slide" id="s4">
  <div class="topbar"><span>DevOps Portfolio</span><span>20 Oct, 2026</span></div>

  <!-- [EDIT] HEADING -->
  <h2 class="big reveal">Tools<br>I'm fluent in.</h2>

  <!-- [EDIT] TOOLS PARAGRAPH (bold part is inside <b>) -->
  <p class="para reveal" style="max-width:640px">
    <b>Linux, Docker, Ansible, Git, AWS</b> and I keep exploring new tools, trying to
    use them across automation, deployment, and learning projects.
  </p>

  <!-- [EDIT] TOOL CHIPS (add / remove) -->
  <div class="toolchips reveal">
    <span class="chip">Linux</span><span class="chip">Docker</span><span class="chip">Ansible</span>
    <span class="chip">Git</span><span class="chip">GitHub</span><span class="chip">AWS EC2</span>
    <span class="chip">VirtualBox</span><span class="chip">Bash</span><span class="chip">Angular</span>
    <span class="chip">Firebase</span><span class="chip">React</span>
  </div>
</section>


<!-- =====================================================================
     SLIDE 5 — EXPERIENCE / PROJECTS (timeline)
     ===================================================================== -->
<section class="slide" id="s5">
  <div class="topbar"><span>DevOps Portfolio</span><span>20 Oct, 2026</span></div>

  <div class="split">
    <!-- [EDIT] HEADING -->
    <h2 class="big reveal">What<br>I've built.</h2>

    <!-- [EDIT] TIMELINE ITEMS — copy a whole <div class="job"> block to add more -->
    <div class="timeline reveal">
      <div class="job">
        <div class="yr">2026</div>
        <div><div class="role">AWS EC2 &amp; SSH Practice</div><div class="co">Remote servers, key permissions, GitHub access</div></div>
      </div>
      <div class="job">
        <div class="yr">2026</div>
        <div><div class="role">Linux VM Lab</div><div class="co">Rocky Linux on VirtualBox</div></div>
      </div>
      <div class="job">
        <div class="yr">2026</div>
        <div><div class="role">Chat App</div><div class="co">Angular + Firebase</div></div>
      </div>
      <div class="job">
        <div class="yr">2025</div>
        <div><div class="role">Personal Portfolio Site</div><div class="co">React</div></div>
      </div>
      <!-- [EDIT] add more projects / jobs here -->
    </div>
  </div>
</section>


<!-- =====================================================================
     SLIDE 6 — THANK YOU / CONTACT
     ===================================================================== -->
<section class="slide" id="s6">
  <div class="topbar"><span>DevOps Portfolio</span><span>23 Oct, 2026</span></div>

  <!-- [EDIT] CLOSING HEADING -->
  <h2 class="big reveal" style="font-size:clamp(70px,16vw,260px)">Let's<br>work.</h2>

  <div class="contact reveal" style="margin-top:0">
    <!-- [EDIT] LINKS: email, GitHub, LinkedIn -->
    <a href="ansariamaan.298@gmail.com">youremail@gmail.com</a>
    <a href="https://github.com/obs-fury" target="_blank">GitHub</a>
    <a href="https://linkedin.com/in/your-username" target="_blank">LinkedIn</a>
  </div>
</section>


<script>
  /* Reveal sections as you scroll */
  const io = new IntersectionObserver(es => {
    es.forEach(e => { if (e.isIntersecting) e.target.classList.add('in'); });
  }, { threshold: .15 });
  document.querySelectorAll('.reveal').forEach(el => io.observe(el));

  /* Highlight the active side dot */
  const dots = document.querySelectorAll('.dots a');
  const slides = document.querySelectorAll('.slide');
  const so = new IntersectionObserver(es => {
    es.forEach(e => {
      if (e.isIntersecting) {
        dots.forEach(d => d.classList.toggle('active', d.getAttribute('href') === '#' + e.target.id));
      }
    });
  }, { threshold: .55 });
  slides.forEach(s => so.observe(s));
</script>
</body>
</html>
