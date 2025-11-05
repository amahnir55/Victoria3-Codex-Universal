Codex Universal Complete (v1.6.2 → v1.11.0+)

Contents:
- common/           : Latest version (1.11.0) merged_current
- events/           : Latest version (1.11.0) merged_current
- localization/     : Latest version (1.11.0) merged_current
- legacy/<version>/ : Snapshots for 1.7.6, 1.8.2, 1.9.8, 1.10.6
- semanticmap/      : Combined semantic maps from provided Codex archives
- meta/version_chain.json : Version sequence used to build this universal Codex

Notes:
- Where duplicate files existed, latest version data took precedence.
- Semantic maps were merged shallowly; conflicts were preserved by list-collation when possible.
- All text files are saved with UTF-8 encoding; some source encodings were left intact to avoid corruption.