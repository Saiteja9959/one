<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NexusShop — Premium Store</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap" rel="stylesheet">

    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
    >

    <style>
        /* =========================================================
           RESET
        ========================================================= */

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: "DM Sans", sans-serif;
            background: #f7f5f0;
            color: #181818;
            line-height: 1.5;
            overflow-x: hidden;
        }

        img {
            display: block;
            width: 100%;
        }

        button,
        input {
            font: inherit;
        }

        button {
            border: 0;
            cursor: pointer;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        ::selection {
            background: #d98c68;
            color: white;
        }

        /* =========================================================
           VARIABLES
        ========================================================= */

        :root {
            --black: #181818;
            --black-2: #242424;
            --cream: #f7f5f0;
            --white: #ffffff;
            --orange: #d9825b;
            --orange-dark: #bc6541;
            --orange-light: #f3d8ca;
            --gray: #737373;
            --gray-light: #a5a5a5;
            --line: rgba(24, 24, 24, .09);
            --green: #2d9b78;
            --yellow: #e9b949;

            --radius-xl: 28px;
            --radius-lg: 20px;
            --radius-md: 14px;

            --shadow:
                0 15px 45px rgba(25, 25, 25, .07);

            --shadow-hover:
                0 25px 65px rgba(25, 25, 25, .13);

            --container: 1240px;

            --ease: .3s cubic-bezier(.4, 0, .2, 1);
        }

        /* =========================================================
           UTILITIES
        ========================================================= */

        .container {
            width: min(var(--container), calc(100% - 40px));
            margin-inline: auto;
        }

        .section {
            padding: 90px 0;
        }

        .muted {
            color: var(--gray);
        }

        .hide {
            display: none !important;
        }

        /* =========================================================
           HEADER
        ========================================================= */

        .header {
            position: sticky;
            top: 0;
            z-index: 1000;
            padding: 14px 0;
            background: rgba(247, 245, 240, .84);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid rgba(0, 0, 0, .05);
        }

        .header-inner {
            min-height: 62px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 25px;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 11px;
            font-size: 21px;
            font-weight: 800;
            letter-spacing: -.7px;
            flex-shrink: 0;
        }

        .logo-mark {
            width: 40px;
            height: 40px;
            display: grid;
            place-items: center;
            background: var(--black);
            color: white;
            border-radius: 13px;
            font-size: 17px;
            box-shadow: 0 7px 20px rgba(0, 0, 0, .14);
        }

        .logo span {
            color: var(--orange);
        }

        .desktop-nav {
            display: flex;
            align-items: center;
            gap: 4px;
        }

        .desktop-nav a {
            padding: 10px 14px;
            color: #6f6f6f;
            font-size: 14px;
            font-weight: 600;
            border-radius: 10px;
            transition: var(--ease);
        }

        .desktop-nav a:hover,
        .desktop-nav a.active {
            background: #ebe8e1;
            color: var(--black);
        }

        .header-right {
            display: flex;
            align-items: center;
            gap: 9px;
        }

        .search {
            height: 44px;
            width: 220px;
            display: flex;
            align-items: center;
            gap: 9px;
            padding: 0 14px;
            background: white;
            border: 1px solid var(--line);
            border-radius: 13px;
            transition: var(--ease);
        }

        .search:focus-within {
            border-color: var(--orange);
            box-shadow: 0 0 0 4px rgba(217, 130, 91, .10);
        }

        .search i {
            color: #999;
            font-size: 14px;
        }

        .search input {
            width: 100%;
            border: 0;
            outline: 0;
            background: transparent;
            font-size: 13px;
            color: var(--black);
        }

        .search input::placeholder {
            color: #aaa;
        }

        .icon-btn {
            width: 44px;
            height: 44px;
            border-radius: 13px;
            display: grid;
            place-items: center;
            background: white;
            border: 1px solid var(--line);
            color: #555;
            position: relative;
            transition: var(--ease);
        }

        .icon-btn:hover {
            background: var(--black);
            color: white;
            transform: translateY(-2px);
        }

        .cart-badge {
            position: absolute;
            top: -5px;
            right: -5px;
            width: 19px;
            height: 19px;
            display: grid;
            place-items: center;
            background: var(--orange);
            color: white;
            border: 2px solid var(--cream);
            border-radius: 50%;
            font-size: 9px;
            font-weight: 800;
        }

        .menu-btn {
            display: none;
        }

        /* =========================================================
           HERO
        ========================================================= */

        .hero {
            padding: 30px 0 0;
        }

        .hero-card {
            position: relative;
            min-height: 600px;
            overflow: hidden;
            border-radius: var(--radius-xl);
            background:
                linear-gradient(
                    100deg,
                    rgba(15, 15, 18, .97) 0%,
                    rgba(15, 15, 18, .84) 46%,
                    rgba(15, 15, 18, .34) 100%
                ),
                url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1800&q=90")
                center/cover;
            display: flex;
            align-items: center;
            box-shadow: 0 25px 80px rgba(0, 0, 0, .15);
        }

        .hero-content {
            width: 60%;
            padding: 70px;
            color: white;
            position: relative;
            z-index: 2;
        }

        .hero-label {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 8px 13px;
            background: rgba(217, 130, 91, .15);
            border: 1px solid rgba(217, 130, 91, .35);
            color: #f4b092;
            border-radius: 999px;
            font-size: 12px;
            font-weight: 700;
            letter-spacing: .5px;
            text-transform: uppercase;
            margin-bottom: 22px;
        }

        .hero h1 {
            font-family: "Playfair Display", serif;
            font-size: clamp(45px, 5.5vw, 76px);
            line-height: .98;
            letter-spacing: -2px;
            max-width: 680px;
            margin-bottom: 25px;
        }

        .hero h1 span {
            color: #e59b7b;
        }

        .hero-description {
            max-width: 520px;
            color: rgba(255, 255, 255, .72);
            font-size: 16px;
            line-height: 1.75;
            margin-bottom: 32px;
        }

        .hero-actions {
            display: flex;
            flex-wrap: wrap;
            gap: 12px;
        }

        .btn {
            min-height: 50px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 9px;
            padding: 0 22px;
            border-radius: 13px;
            font-size: 14px;
            font-weight: 700;
            transition: var(--ease);
        }

        .btn-primary {
            background: var(--orange);
            color: white;
            box-shadow: 0 10px 30px rgba(217, 130, 91, .25);
        }

        .btn-primary:hover {
            background: var(--orange-dark);
            transform: translateY(-3px);
            box-shadow: 0 15px 35px rgba(217, 130, 91, .35);
        }

        .btn-light {
            background: rgba(255, 255, 255, .1);
            color: white;
            border: 1px solid rgba(255, 255, 255, .18);
            backdrop-filter: blur(10px);
        }

        .btn-light:hover {
            background: white;
            color: var(--black);
            transform: translateY(-3px);
        }

        .hero-floating {
            position: absolute;
            right: 55px;
            bottom: 45px;
            z-index: 3;
            width: 230px;
            padding: 18px;
            background: rgba(255, 255, 255, .10);
            backdrop-filter: blur(18px);
            border: 1px solid rgba(255, 255, 255, .18);
            border-radius: 20px;
            color: white;
        }

        .hero-floating-top {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 14px;
        }

        .hero-floating small {
            color: rgba(255, 255, 255, .6);
            font-size: 11px;
        }

        .hero-floating strong {
            font-size: 19px;
        }

        .avatars {
            display: flex;
        }

        .avatars img {
            width: 32px;
            height: 32px;
            object-fit: cover;
            border-radius: 50%;
            border: 2px solid #292929;
            margin-left: -7px;
        }

        .avatars img:first-child {
            margin-left: 0;
        }

        .hero-floating-footer {
            display: flex;
            align-items: center;
            justify-content: space-between;
            color: rgba(255, 255, 255, .7);
            font-size: 11px;
        }

        /* =========================================================
           TRUST BAR
        ========================================================= */

        .trust-bar {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 1px;
            background: var(--line);
            border: 1px solid var(--line);
            margin-top: 20px;
            border-radius: 18px;
            overflow: hidden;
        }

        .trust-item {
            background: white;
            padding: 20px;
            display: flex;
            align-items: center;
            gap: 13px;
        }

        .trust-icon {
            width: 42px;
            height: 42px;
            display: grid;
            place-items: center;
            flex-shrink: 0;
            background: #f5e3da;
            color: var(--orange);
            border-radius: 12px;
        }

        .trust-item strong {
            display: block;
            font-size: 13px;
            margin-bottom: 2px;
        }

        .trust-item span {
            color: #8b8b8b;
            font-size: 11px;
        }

        /* =========================================================
           SECTION HEADER
        ========================================================= */

        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            gap: 20px;
            margin-bottom: 32px;
        }

        .eyebrow {
            color: var(--orange);
            font-size: 11px;
            text-transform: uppercase;
            font-weight: 800;
            letter-spacing: 1.5px;
            margin-bottom: 7px;
        }

        .section-title {
            font-family: "Playfair Display", serif;
            font-size: 36px;
            line-height: 1.1;
            letter-spacing: -.7px;
        }

        .section-subtitle {
            color: var(--gray);
            font-size: 14px;
            margin-top: 8px;
        }

        .view-link {
            color: var(--black);
            font-size: 13px;
            font-weight: 700;
            display: flex;
            align-items: center;
            gap: 8px;
            padding-bottom: 5px;
            border-bottom: 1px solid var(--black);
        }

        /* =========================================================
           CATEGORIES
        ========================================================= */

        .categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 14px;
        }

        .category {
            background: white;
            border: 1px solid var(--line);
            border-radius: 18px;
            padding: 22px 14px;
            text-align: center;
            cursor: pointer;
            transition: var(--ease);
        }

        .category:hover {
            transform: translateY(-6px);
            border-color: #e7c1b1;
            box-shadow: var(--shadow);
        }

        .category-icon {
            width: 58px;
            height: 58px;
            margin: 0 auto 14px;
            display: grid;
            place-items: center;
            border-radius: 17px;
            background: #f6eee9;
            color: var(--orange);
            font-size: 21px;
            transition: var(--ease);
        }

        .category:hover .category-icon {
            background: var(--orange);
            color: white;
            transform: rotate(-4deg);
        }

        .category h3 {
            font-size: 13px;
            margin-bottom: 4px;
        }

        .category p {
            color: #999;
            font-size: 11px;
        }

        /* =========================================================
           PRODUCTS
        ========================================================= */

        .products {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .product {
            position: relative;
            overflow: hidden;
            background: white;
            border: 1px solid var(--line);
            border-radius: 20px;
            transition: var(--ease);
        }

        .product:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-hover);
            border-color: rgba(217, 130, 91, .25);
        }

        .product-image {
            position: relative;
            aspect-ratio: 1 / 1.05;
            overflow: hidden;
            background: #f1efeb;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: .55s ease;
        }

        .product:hover .product-image img {
            transform: scale(1.06);
        }

        .product-badge {
            position: absolute;
            top: 13px;
            left: 13px;
            padding: 6px 10px;
            border-radius: 8px;
            background: var(--black);
            color: white;
            font-size: 9px;
            text-transform: uppercase;
            font-weight: 800;
            letter-spacing: .7px;
        }

        .product-badge.sale {
            background: var(--orange);
        }

        .wishlist {
            position: absolute;
            right: 13px;
            top: 13px;
            width: 36px;
            height: 36px;
            display: grid;
            place-items: center;
            border-radius: 50%;
            background: rgba(255, 255, 255, .92);
            color: #777;
            transition: var(--ease);
            backdrop-filter: blur(8px);
        }

        .wishlist:hover,
        .wishlist.active {
            color: #e05252;
            transform: scale(1.08);
        }

        .product-body {
            padding: 17px;
        }

        .product-category {
            color: #a0a0a0;
            font-size: 10px;
            font-weight: 700;
            letter-spacing: .8px;
            text-transform: uppercase;
            margin-bottom: 6px;
        }

        .product-title {
            min-height: 40px;
            font-size: 14px;
            line-height: 1.4;
            font-weight: 700;
        }

        .product-rating {
            margin-top: 8px;
            display: flex;
            align-items: center;
            gap: 5px;
            color: #e5a62d;
            font-size: 11px;
        }

        .product-rating span {
            color: #999;
        }

        .product-bottom {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 10px;
            margin-top: 13px;
        }

        .price {
            font-size: 17px;
            font-weight: 800;
        }

        .old-price {
            color: #aaa;
            text-decoration: line-through;
            font-size: 11px;
            margin-left: 4px;
        }

        .add-btn {
            width: 39px;
            height: 39px;
            display: grid;
            place-items: center;
            background: var(--black);
            color: white;
            border-radius: 11px;
            transition: var(--ease);
        }

        .add-btn:hover {
            background: var(--orange);
            transform: rotate(-5deg) scale(1.05);
        }

        .add-btn.added {
            background: var(--green);
        }

        /* =========================================================
           FLASH DEAL
        ========================================================= */

        .deal {
            position: relative;
            overflow: hidden;
            display: grid;
            grid-template-columns: 1fr 1fr;
            min-height: 440px;
            background: var(--black);
            color: white;
            border-radius: var(--radius-xl);
        }

        .deal-image {
            position: relative;
            min-height: 440px;
        }

        .deal-image::after {
            content: "";
            position: absolute;
            inset: 0;
            background: linear-gradient(
                90deg,
                transparent 50%,
                rgba(24,24,24,.8)
            );
        }

        .deal-image img {
            height: 100%;
            object-fit: cover;
        }

        .deal-content {
            display: flex;
            flex-direction: column;
            justify-content: center;
            padding: 55px;
            position: relative;
            z-index: 2;
        }

        .deal-label {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            color: #efad8e;
            text-transform: uppercase;
            font-size: 10px;
            letter-spacing: 1.4px;
            font-weight: 800;
            margin-bottom: 15px;
        }

        .deal h2 {
            font-family: "Playfair Display", serif;
            font-size: 43px;
            line-height: 1.05;
            margin-bottom: 12px;
        }

        .deal-description {
            color: rgba(255,255,255,.62);
            max-width: 430px;
            font-size: 14px;
            line-height: 1.7;
            margin-bottom: 18px;
        }

        .deal-price {
            font-size: 30px;
            font-weight: 800;
        }

        .deal-price del {
            color: rgba(255,255,255,.35);
            font-size: 17px;
            font-weight: 400;
            margin-left: 8px;
        }

        .stock {
            color: rgba(255,255,255,.55);
            font-size: 12px;
            margin: 4px 0 22px;
        }

        .stock strong {
            color: #f19d7b;
        }

        .timer {
            display: flex;
            gap: 9px;
            margin-bottom: 25px;
        }

        .timer-box {
            min-width: 67px;
            padding: 10px 8px;
            text-align: center;
            border: 1px solid rgba(255,255,255,.12);
            background: rgba(255,255,255,.05);
            border-radius: 11px;
        }

        .timer-box strong {
            display: block;
            font-size: 21px;
        }

        .timer-box span {
            color: rgba(255,255,255,.4);
            font-size: 8px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        /* =========================================================
           TESTIMONIALS
        ========================================================= */

        .testimonials {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 18px;
        }

        .testimonial {
            background: white;
            border: 1px solid var(--line);
            border-radius: 19px;
            padding: 25px;
            transition: var(--ease);
        }

        .testimonial:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow);
        }

        .testimonial-stars {
            color: #e4a62f;
            font-size: 12px;
            letter-spacing: 2px;
            margin-bottom: 15px;
        }

        .testimonial blockquote {
            font-family: "Playfair Display", serif

