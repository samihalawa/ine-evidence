# Claude review — INE Evidence 0.2.0

Publisher: Sami Halawa · Contact: sami@samihalawa.com

Repository: https://github.com/samihalawa/ine-evidence

Plugin at repository root. Stable identity: `ine-evidence`.

## Listing

Encuentra series del INE y presenta sus cifras con periodo, unidad, definición y límites de comparación.

Audience: Analistas, periodistas, docentes y consultoras.

First prompt: Encuentra la serie adecuada para comparar el IPC y explica su base y periodo.

## Reviewer walkthrough

Install with `/plugin install ine-evidence --marketplace samihalawa/ine-evidence`. Ask for an example: `demo` must be labelled as a saved snapshot, not live. The captured response is in `skills/ine-evidence/references/demo.json`. Run the live README example in an authorized Python 3.11+ environment, inspect scope and source dates, then export HTML. The report must not execute source text or load external assets.

Negative fixtures in `tests/test_core.py` are synthetic regressions, not live user tests. No credentials, product account, purchase or API key is required. This is a skills package, not a hosted MCP service.

## Included review materials

README, CHANGELOG, real icon, support/privacy/terms, static page source in docs/, saved official-source example, executable tests and versioned evidence. Dataset/service rights are separate from the MIT software licence.

## Scope

No ofrece previsiones ni asesoramiento de inversión. Una serie disponible puede estar discontinuada o usar una base antigua. No une series incompatibles ni infiere actualidad por disponibilidad.

Read evidence for the actual completed checks. CI is an inactive template. Source publication, package validation, installation, user acceptance, directory review and adoption are separate states. No official listing or approval is claimed. Submit through https://claude.ai/directory/manage under the intended verified publisher identity; applicable publisher attestations remain with the owner.
