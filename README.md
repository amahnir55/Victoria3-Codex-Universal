# Victoria 3 Codex Universal – GPT Operational Protocol

**Target Scope:** Victoria 3 versions 1.6.2 → 1.11.0
**Access Tier:** GPT-Only | Machine-Driven Mod Modernization
**Purpose:** Establish deterministic, version-aware editing logic for all mod-repair tasks referencing this Codex.

---

## 🧠 Codex Function

The Codex functions as a **semantic reference layer** between historical and current Victoria 3 syntaxes.
It supplies:

* Valid parameter maps across 1.6.2 → 1.11.0.
* Deprecation lists and trigger re-nesting rules.
* Localization field alignment data.
* Contextual fix templates for auto-commented inline documentation.

All GPT sessions referencing this repository must load the full Codex dataset before applying any edits.

---

## 🧩 GPT Workflow Specification

### 1. Initialization

1. Identify mod version compatibility using its error log.
2. Load corresponding **semantic map** and **legacy schema** from this repository.
3. Normalize all `.txt` source files to UTF-8 +BOM + CRLF.
4. Register the session in (or create) `Codex_Repair_Log.txt`.

### 2. Repair Logic

* **Lookup:** Cross-reference each unknown or deprecated keyword with `semanticmap/`.
* **Replace:** Insert new syntax from latest version ruleset.
* **Preserve:** Original context must remain commented below the fix.
* **Annotate:** Follow Inline Fix format exactly (see below).
* **Validate:** Ensure post-edit syntax matches current game version JSON map.
* **Log:** Append the modification event to the external repair log.

---

## 🧾 Inline Fix Format (Strict)

Example – Replacing invalid top-level `limit` trigger:

```
# FIXED (v1.11.0)
# Original: limit = { root = { infamy >= 24.9 } }
# Reason: "Unknown trigger type: limit" (deprecated top-level trigger, must be nested)
# Replacement: trigger = { limit = { root = { infamy >= 24.9 } } }
```

If multiple sequential fixes are made, append new FIXED blocks below previous ones.

---

## 📑 External Repair Log Structure (Codex_Repair_Log.txt)

Each repair entry must follow this structure verbatim:

```
==================================================================
Victoria 3 – GPT Codex Repair Log
Mod: [Mod Name]
Target Version: [Game Version]
Repair Type: [Minimal | Structural | Full Modernization]
Maintained by: GPT Codex System
==================================================================

[ENTRY X]
File: [relative path]
Line: [number]
Error: [verbatim log message]
Original:
    [original code]
Fixed:
    [replacement code]
Reason:
    [brief justification, referencing semantic rule]
```

---

## 🔁 Session Continuation Rules

1. **Never overwrite existing entries** — always append.
2. Include both original and replacement code snippets.
3. Record source version and target version for each change.
4. Maintain chronological ordering.
5. End each session with a “Session Commit” note including timestamp and GPT build ID.

---

## 🧩 Data Hierarchy

```
common/        → v1.11.0 base definitions
legacy/        → 1.7.6–1.10.6 reference layers
semanticmap/   → token + trigger migration map
meta/          → version chain metadata
Codex_Readme.txt
Codex_Merge_Report.txt
```

---

## ⚙️ GPT Editing Policy

* **Deterministic edits only:** no stylistic reformatting or line re-ordering.
* **No deletion:** deprecated entries are commented out, not removed.
* **Cross-validation:** reference semanticmap before confirming change.
* **Repair Log synchronization:** required every session.
* **No speculative modifications:** changes must be justified via a legacy→current rule mapping.

---

## 🔒 Version and Continuity

All modifications must remain fully reversible through the combined historical context stored in:
`legacy/` + `semanticmap/` + `Codex_Repair_Log.txt`.

If a rule conflict occurs between Codex layers, defer to the **latest stable version (1.11.0)** unless the mod explicitly targets an earlier baseline.

---

## 🧭 Invocation Protocol

When a mod repair request references this repository, execute the following in order:

1. Load semantic + legacy data sets.
2. Parse mod error log.
3. Apply Inline Fixes.
4. Write or append to Codex_Repair_Log.txt.
5. Generate a short delta summary (`_Delta_Report_[date].txt`).

---

## 🧩 Future Extension Hooks

* **autofix/** (planned): ML-assisted context patching.
* **codex_cache/** (planned): tokenized pre-loads for large mod sets.
* **validation/** (planned): formal syntax testing per Paradox parser schema.

---

**Repository Reference:**
`https://github.com/amahnir55/Victoria3-Codex-Universal`
All GPT operations referencing this link must conform to this operational manual.
