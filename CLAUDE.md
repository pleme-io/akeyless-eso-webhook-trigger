# Akeyless-Eso-Webhook-Trigger

> **★★★ CSE / Knowable Construction.** This repo operates under **Constructive Substrate Engineering** — canonical specification at [`pleme-io/theory/CONSTRUCTIVE-SUBSTRATE-ENGINEERING.md`](https://github.com/pleme-io/theory/blob/main/CONSTRUCTIVE-SUBSTRATE-ENGINEERING.md). The Compounding Directive (operational rules: solve once, load-bearing fixes only, idiom-first, models stay current, direction beats velocity) is in the org-level pleme-io/CLAUDE.md ★★★ section. Read both before non-trivial changes.

This application enables a push-based model for updating ExternalSecrets in a Kubernetes cluster. It listens for webhooks triggered by secret updates in the Secret Store Provider (which can be Akeyless or any other supported ESO Secret Store Provider) and propagates these changes to the corresponding ExternalSecret resources, initiating the secret update process.
