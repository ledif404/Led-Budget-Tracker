# The Ledger — Led Budget Passbook

A single-file web app version of the budget planner, in Philippine Peso, synced to your own Firebase project so you can log in from your computer and your phone.

## Put it on GitHub Pages
1. Create a new GitHub repo (public or private).
2. Upload `index.html` to the repo root.
3. Repo → Settings → Pages → Source: **Deploy from branch**, branch `main`, folder `/ (root)` → Save.
4. GitHub gives you a URL like `https://yourname.github.io/repo-name/` — that's your budget tracker on any device.

## One-time Firebase setup (free)
The app needs somewhere to save your data. On first visit it walks you through this, but in short:
1. Go to console.firebase.google.com → **Add project**.
2. **Build → Firestore Database → Create database** → start in test mode.
3. **Build → Authentication → Sign-in method** → enable **Email/Password**.
4. **Project settings (gear icon) → your apps → Add app → Web (`</>`)** → copy the `firebaseConfig` object it shows you.
5. Paste that config into the app when it asks. It's saved in that browser only — do this once per device.
6. Create an account (any email/password) in the app — the same account logs you in from your phone too, and everything syncs.

## What's inside
- **Dashboard** — year income/expenses, savings goal progress, this month's bills, cash flow chart, money health checker.
- **Savings Tracker** — monthly income, the 60/20/20 rule (editable), a named goal with a progress bar, and a month-by-month savings plan.
- **Bills Tracker** — per-month bill list with due dates and paid checkboxes, a paid/unpaid donut, recurring credit-card subscriptions, and a notes box.
- **Credit Card Tracker** — limit, available credit, a used/available donut, and a charge/payment transaction log.
- **Monthly Budget (Jan–Dec)** — two payouts, needs/wants/investments broken out per payout, amount left per payout, and a per-month health check + cash flow chart.

Everything autosaves a moment after you stop typing (watch the "Saved" pill top-right).
