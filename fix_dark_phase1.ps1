$file = 'c:\xampp\htdocs\Solar-web\testimonial.html'
$content = [System.IO.File]::ReadAllText($file, [System.Text.Encoding]::UTF8)

# ─────────────────────────────────────────────────────────
# Replace the entire first <style> block with a comprehensive dark mode CSS
# ─────────────────────────────────────────────────────────
$oldStyle = '<style>
        .material-symbols-outlined {
            font-variation-settings: \'FILL\' 0, \'wght\' 400, \'GRAD\' 0, \'opsz\' 24;
        }
        .material-symbols-outlined.fill {
            font-variation-settings: \'FILL\' 1;
        }
        .btn-gradient {
            background: linear-gradient(180deg, theme(\'colors.primary-container\') 0%, #E5A32E 100%);
        }
        .btn-gradient:hover {
            background: linear-gradient(180deg, #E5A32E 0%, #D49629 100%);
            transform: translateY(-2px);
            box-shadow: 0 4px 20px rgba(9, 27, 54, 0.15);
        }
        .card-shadow {
            box-shadow: 0 4px 20px rgba(9, 27, 54, 0.04);
        }
        .card-hover:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 30px rgba(9, 27, 54, 0.08);
        }
        .social-icon { width: 24px; height: 24px; fill: currentColor; }

        @keyframes marquee {
            0% { transform: translateX(0); }
            100% { transform: translateX(-50%); }
        }
        .animate-marquee {
            display: flex;
            width: max-content;
            animation: marquee 35s linear infinite;
        }
        .animate-marquee:hover {
            animation-play-state: paused;
        }
        .card-shadow {
            box-shadow: 0 4px 20px rgba(9, 27, 54, 0.04);
        }
        .card-hover:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 30px rgba(9, 27, 54, 0.08);
        }
        /* Dark-mode overrides for inverse-surface sections */
        :root.dark .industrial-card {
            background: rgba(255, 255, 255, 0.08) !important;
            border-color: rgba(255, 255, 255, 0.15) !important;
        }
        :root.dark .industrial-card:hover {
            background: rgba(255, 255, 255, 0.14) !important;
        }
        :root.dark .industrial-card .ind-capacity {
            color: rgb(213 196 174) !important;
        }
        :root.dark .industrial-card .ind-body {
            color: rgb(249 249 255) !important;
        }
        :root.dark .industrial-card .ind-name {
            color: rgb(249 249 255) !important;
        }
        :root.dark .industrial-card .ind-role {
            color: rgb(213 196 174) !important;
        }
        :root.dark .industrial-card .ind-company {
            color: #FFB300 !important;
        }
        :root.dark .industrial-card .ind-border {
            border-color: rgba(255, 255, 255, 0.12) !important;
        }
        :root.dark .cta-inverse .cta-body {
            color: rgba(249, 249, 255, 0.85) !important;
        }
    </style>'

$newStyle = '<style>
        .material-symbols-outlined {
            font-variation-settings: \'FILL\' 0, \'wght\' 400, \'GRAD\' 0, \'opsz\' 24;
        }
        .material-symbols-outlined.fill {
            font-variation-settings: \'FILL\' 1;
        }
        .btn-gradient {
            background: linear-gradient(180deg, theme(\'colors.primary-container\') 0%, #E5A32E 100%);
        }
        .btn-gradient:hover {
            background: linear-gradient(180deg, #E5A32E 0%, #D49629 100%);
            transform: translateY(-2px);
            box-shadow: 0 4px 20px rgba(9, 27, 54, 0.15);
        }
        .card-shadow {
            box-shadow: 0 4px 20px rgba(9, 27, 54, 0.04);
        }
        .card-hover:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 30px rgba(9, 27, 54, 0.08);
        }
        .social-icon { width: 24px; height: 24px; fill: currentColor; }

        @keyframes marquee {
            0% { transform: translateX(0); }
            100% { transform: translateX(-50%); }
        }
        .animate-marquee {
            display: flex;
            width: max-content;
            animation: marquee 35s linear infinite;
        }
        .animate-marquee:hover {
            animation-play-state: paused;
        }

        /* ═══════════════════════════════════════════════════
           COMPREHENSIVE DARK MODE OVERRIDES
        ═══════════════════════════════════════════════════ */

        /* 1. Hero subtitle on dark bg-inverse-surface hero */
        :root.dark section.hero-testimonial p.hero-subtitle {
            color: rgba(213, 196, 174, 0.9) !important;
        }

        /* 2. Section headings that use text-inverse-surface (dark blue = invisible on dark bg) */
        :root.dark .section-heading {
            color: rgb(249, 249, 255) !important;
        }

        /* 3. Residential marquee cards dark mode */
        :root.dark .review-card {
            background: rgb(var(--color-surface-container-rgb)) !important;
            border-color: rgba(255,255,255,0.08) !important;
        }
        :root.dark .review-card .reviewer-name {
            color: rgb(249, 249, 255) !important;
        }
        :root.dark .review-card .review-body {
            color: rgb(213, 196, 174) !important;
        }
        :root.dark .review-card .review-verified {
            color: rgba(213, 196, 174, 0.6) !important;
        }

        /* 4. Commercial Partnership cards */
        :root.dark .comm-card {
            background: rgb(var(--color-surface-container-rgb)) !important;
            border-color: rgba(255,255,255,0.08) !important;
        }
        :root.dark .comm-card .comm-header {
            background: rgb(var(--color-surface-container-high-rgb)) !important;
            border-color: rgba(255,255,255,0.1) !important;
        }
        :root.dark .comm-card .comm-company-name {
            color: rgb(249, 249, 255) !important;
        }
        :root.dark .comm-card .comm-icon {
            color: rgb(213, 196, 174) !important;
        }
        :root.dark .comm-card .comm-person-name {
            color: rgb(249, 249, 255) !important;
        }
        :root.dark .comm-card .comm-person-role {
            color: rgb(213, 196, 174) !important;
        }
        :root.dark .comm-card .comm-verify-icon {
            color: rgb(213, 196, 174) !important;
        }

        /* 5. Industrial-Grade Deployment cards */
        :root.dark .industrial-card {
            background: rgba(255, 255, 255, 0.07) !important;
            border-color: rgba(255, 255, 255, 0.12) !important;
        }
        :root.dark .industrial-card:hover {
            background: rgba(255, 255, 255, 0.12) !important;
        }
        :root.dark .industrial-card .ind-company {
            color: #FFB300 !important;
        }
        :root.dark .industrial-card .ind-capacity {
            color: rgb(213, 196, 174) !important;
        }
        :root.dark .industrial-card .ind-body {
            color: rgba(249, 249, 255, 0.92) !important;
        }
        :root.dark .industrial-card .ind-name {
            color: rgb(249, 249, 255) !important;
        }
        :root.dark .industrial-card .ind-role {
            color: rgb(213, 196, 174) !important;
        }
        :root.dark .industrial-card .ind-border {
            border-color: rgba(255, 255, 255, 0.1) !important;
        }

        /* 6. In-Depth Case Studies cards */
        :root.dark .case-card {
            background: rgb(var(--color-surface-container-rgb)) !important;
            border-color: rgba(255,255,255,0.08) !important;
        }
        :root.dark .case-card .case-title {
            color: rgb(249, 249, 255) !important;
        }
        :root.dark .case-card .case-label-strong {
            color: #FFB300 !important;
        }
        :root.dark .case-card .case-body-text {
            color: rgb(213, 196, 174) !important;
        }

        /* 7. CTA Section */
        :root.dark .cta-inverse .cta-body {
            color: rgba(249, 249, 255, 0.85) !important;
        }
    </style>'

if ($content.Contains('.card-shadow {
            box-shadow: 0 4px 20px rgba(9, 27, 54, 0.04);
        }
        .card-hover:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 30px rgba(9, 27, 54, 0.08);
        }
        /* Dark-mode overrides for inverse-surface sections */')) {
    Write-Host "Style block found, replacing..."
} else {
    Write-Host "WARNING: Style block not matched exactly. Attempting partial replacement..."
}

# Replace from first .card-shadow duplicate to end of style
$content = $content -replace '(?s)(        \.card-shadow \{.*?box-shadow: 0 4px 20px rgba\(9, 27, 54, 0\.04\);.*?\}.*?\.card-hover:hover \{.*?box-shadow: 0 8px 30px rgba\(9, 27, 54, 0\.08\);.*?\}.*?)(        /\* Dark-mode overrides.*?</style>)', '    </style>'

Write-Host "Style deduplication done"

# Now add the comprehensive CSS block before the closing of the first </style>
# Find the first </style> tag and add before it
$firstStyleClose = '    </style>'
$idx = $content.IndexOf($firstStyleClose)
if ($idx -ge 0) {
    $before = $content.Substring(0, $idx)
    $after = $content.Substring($idx + $firstStyleClose.Length)
    
    $darkCSS = '
        /* ═══════════════════════════════════════════════════
           COMPREHENSIVE DARK MODE OVERRIDES
        ═══════════════════════════════════════════════════ */

        /* 1. Hero subtitle on dark hero */
        :root.dark .hero-subtitle {
            color: rgba(213, 196, 174, 0.9) !important;
        }

        /* 2. Section headings with text-inverse-surface (dark blue invisible on dark) */
        :root.dark .section-heading {
            color: rgb(249, 249, 255) !important;
        }

        /* 3. Residential marquee cards */
        :root.dark .review-card {
            background: rgb(var(--color-surface-container-rgb)) !important;
            border-color: rgba(255,255,255,0.08) !important;
        }
        :root.dark .review-card .reviewer-name {
            color: rgb(249, 249, 255) !important;
        }
        :root.dark .review-card .review-body {
            color: rgba(213, 196, 174, 0.9) !important;
        }
        :root.dark .review-card .review-verified {
            color: rgba(213, 196, 174, 0.55) !important;
        }

        /* 4. Commercial Partnership cards */
        :root.dark .comm-card {
            background: rgb(var(--color-surface-container-rgb)) !important;
            border-color: rgba(255,255,255,0.08) !important;
        }
        :root.dark .comm-card .comm-header {
            background: rgb(var(--color-surface-container-high-rgb)) !important;
            border-color: rgba(255,255,255,0.1) !important;
        }
        :root.dark .comm-card .comm-company-name {
            color: rgb(249, 249, 255) !important;
        }
        :root.dark .comm-card .comm-icon {
            color: rgb(249, 178, 51) !important;
        }
        :root.dark .comm-card .comm-person-name {
            color: rgb(249, 249, 255) !important;
        }
        :root.dark .comm-card .comm-person-role {
            color: rgb(213, 196, 174) !important;
        }
        :root.dark .comm-card .comm-verify-icon {
            color: rgb(213, 196, 174) !important;
        }

        /* 5. Industrial cards */
        :root.dark .industrial-card {
            background: rgba(255, 255, 255, 0.07) !important;
            border-color: rgba(255, 255, 255, 0.12) !important;
        }
        :root.dark .industrial-card:hover {
            background: rgba(255, 255, 255, 0.12) !important;
        }
        :root.dark .industrial-card .ind-company { color: #FFB300 !important; }
        :root.dark .industrial-card .ind-capacity { color: rgb(213, 196, 174) !important; }
        :root.dark .industrial-card .ind-body { color: rgba(249, 249, 255, 0.92) !important; }
        :root.dark .industrial-card .ind-name { color: rgb(249, 249, 255) !important; }
        :root.dark .industrial-card .ind-role { color: rgb(213, 196, 174) !important; }
        :root.dark .industrial-card .ind-border { border-color: rgba(255,255,255,0.1) !important; }

        /* 6. Case Study cards */
        :root.dark .case-card {
            background: rgb(var(--color-surface-container-rgb)) !important;
            border-color: rgba(255,255,255,0.08) !important;
        }
        :root.dark .case-card .case-title { color: rgb(249, 249, 255) !important; }
        :root.dark .case-card .case-label-strong { color: #FFB300 !important; }
        :root.dark .case-card .case-body-text { color: rgb(213, 196, 174) !important; }

        /* 7. CTA Section */
        :root.dark .cta-inverse .cta-body { color: rgba(249, 249, 255, 0.85) !important; }
    </style>'
    
    $content = $before + $darkCSS + $after
    Write-Host "Dark CSS injected successfully"
} else {
    Write-Host "ERROR: Could not find first </style> tag"
}

[System.IO.File]::WriteAllText($file, $content, [System.Text.Encoding]::UTF8)
Write-Host "Phase 1 done - CSS updated"
