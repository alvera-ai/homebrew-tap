# Changelog

## [0.12.1](https://github.com/alvera-ai/platform-sdk/compare/v0.12.0...v0.12.1) (2026-06-25)


### Bug Fixes

* **release:** host CLI binaries on public tap + split licensing ([9eb8f2f](https://github.com/alvera-ai/platform-sdk/commit/9eb8f2f5f72c3ff450378f779f62a14cc0662aa2))

## [0.12.0](https://github.com/alvera-ai/platform-sdk/compare/v0.11.0...v0.12.0) (2026-06-25)


### Features

* talk-to-data — SDK endpoints + CLI verbs + cookbook operate sections ([8ab7e53](https://github.com/alvera-ai/platform-sdk/commit/8ab7e534ec034822ec57334bcad05d89e7e1307c))
* talk-to-data — SDK endpoints + CLI verbs + cookbooks ([ca213a4](https://github.com/alvera-ai/platform-sdk/commit/ca213a4c070b9342dc103232bdc3246589da6624))


### Bug Fixes

* **cli:** canonicalize contract path before dynamic import ([cd94218](https://github.com/alvera-ai/platform-sdk/commit/cd9421810e688506b6bef99e8bb98cfbd152b4f9))

## [0.11.0](https://github.com/alvera-ai/platform-sdk/compare/v0.11.0-rc.25...v0.11.0) (2026-06-25)


### ⚠ BREAKING CHANGES

* **cli:** profile-only auth, zero system-env coupling

### Features

* 0.9.0 — integration-tests cleanup + pnpm → bun migration ([9d623bf](https://github.com/alvera-ai/platform-sdk/commit/9d623bf2b8b8fadf30346aa36d7384fca3d9f8bf))
* alvera CLI + platform SDK v1 — monorepo, npm, brew, verbs ([1cffb10](https://github.com/alvera-ai/platform-sdk/commit/1cffb109428b7dd004bd4f483c84bb6d829ec489))
* bundle integration-tests cleanup + pnpm → bun migration into 0.9.0 ([41fc906](https://github.com/alvera-ai/platform-sdk/commit/41fc9062c0f90e01db0d8bcac93ce679f5acb5fe))
* bundle integration-tests cleanup + pnpm → bun migration into 0.9.0 ([10c5fb4](https://github.com/alvera-ai/platform-sdk/commit/10c5fb4c7764d802bbcbb00264f9d57bcf56af42))
* **cli:** bun:test harness + repoint onto SDK metadata/metadataDetails ([a60cfac](https://github.com/alvera-ai/platform-sdk/commit/a60cfac6301e11b3bfd1261428f5d8bd67472d4e))
* **cli:** payment-risk + accounts-receivable CLI completion ([1acae25](https://github.com/alvera-ai/platform-sdk/commit/1acae25f63b130f4a42d264c4ace3dd3f303bd95))
* **gh-41:** delete reconcile diff engine, preserve validation envelope ([ef7c6dd](https://github.com/alvera-ai/platform-sdk/commit/ef7c6dd82a6402f435e45ea6f4fc13d9a8f586a5))
* **gh-41:** format-outcomes.ts — 3-state plan diff + apply table ([a3a29db](https://github.com/alvera-ai/platform-sdk/commit/a3a29dbf1da73325c7557e15816f58169e06d895))
* **gh-41:** migrate plan/apply onto the fold pipeline ([70001ed](https://github.com/alvera-ai/platform-sdk/commit/70001edb0575797d4a23708e804f0b4d22cb21ce))
* **gh-41:** per-kind config-resource drift fingerprint ([f68c68a](https://github.com/alvera-ai/platform-sdk/commit/f68c68aba062cb8abfef6c6e1aa102401c099a24))
* **gh-41:** persist drift baseline in StateResource ([2c8eccf](https://github.com/alvera-ai/platform-sdk/commit/2c8eccf8bdb558d3902b4a0f8af559d2c570fd44))
* **gh-41:** step.ts — the shared plan/apply fold step ([59344ec](https://github.com/alvera-ai/platform-sdk/commit/59344ec2bb8b7d65cd6b17841a0ac73f055708c7))
* **gh-685:** §12.11 cluster E1 — alvera serve-mock verb (lazy-installs @mockoon/cli into ~/.cache/alvera/mockoon/&lt;version&gt;/) ([e56f415](https://github.com/alvera-ai/platform-sdk/commit/e56f4159e2fabf0933ab04db89058e502ddf1f45))
* **gh-685:** §12.11 cluster E2 — alvera llm-export verb (replaces SDK bin's llm-export) ([718a719](https://github.com/alvera-ai/platform-sdk/commit/718a7193359992b060c8b4be5ff94be107fefca4))
* **gh-685:** §13.10 A+C — Eta render foundation + alvera secrets needed on recursive AST scan + secrets.toml JS-ident validator ([c7ef48c](https://github.com/alvera-ai/platform-sdk/commit/c7ef48cfc2cc19344683f4df18bf6842cd66f4ee))
* **gh-685:** §13.14a explicit-per-kind types — no generics, no casts, foundation slice (10 kinds) strict-typecheck green ([e7b6bcc](https://github.com/alvera-ai/platform-sdk/commit/e7b6bcc2d3e8783bd650e823d82976123987be97))
* **gh-685:** §13.14a scaffold — types + dispatch + datalake base + foundation overlay ([4df0680](https://github.com/alvera-ai/platform-sdk/commit/4df0680b36a07357ad0f021cbc755b56ffa2c14d))
* **gh-685:** §13.14e cell 1 — foundation × datalake green on mock (4/4 pass) ([07cdb96](https://github.com/alvera-ai/platform-sdk/commit/07cdb96f20e8f04edf9d1c66e3dcdd8394b43b58))
* **gh-685:** §13.14e cell 2 — foundation × data_source green on mock (4/4 pass, 8/8 cumulative) ([87b8838](https://github.com/alvera-ai/platform-sdk/commit/87b88387c09c2f4f7eb2a4ff83e19917245283e5))
* **gh-685:** §13.14e cells 1+2 — verbose explicit refactor green on mock (8/8) + local UAT-validated against alvera-foundation profile ([e8dd127](https://github.com/alvera-ai/platform-sdk/commit/e8dd1272b1a43dca3d28b256c7e94a3135123a53))
* **gh-685:** §13.4 — alvera init + add-or-modify + templates layer ([c88423f](https://github.com/alvera-ai/platform-sdk/commit/c88423faf35350d4ff6c1fd455d85785f8e43fba))
* **gh-685:** §13.5 — --help block-MD footer macro + config.toml/secrets.toml rename ([e46e9ca](https://github.com/alvera-ai/platform-sdk/commit/e46e9caa44316e01ba30c1daa20ba0190efdfbd8))
* **gh-685:** §13.6 — alvera validate contract + reusable lint module ([094e3ed](https://github.com/alvera-ai/platform-sdk/commit/094e3edea6604f2942efdbacdeaa0c019814c7d2))
* **gh-685:** §13.8 — apply four-phase runner + in-process contract execution ([37ea607](https://github.com/alvera-ai/platform-sdk/commit/37ea60701ffac0e85ecf7301f8b439676beef754))
* **gh-685:** §13.9 — alvera gen contract + contract-scaffold catalogue ([56e2154](https://github.com/alvera-ai/platform-sdk/commit/56e2154255b17073b002beadb6237bace2750abe))
* **gh-685:** §2.10.21 v15 — one-line gen-contract emit + apply dispatch + hook composition + per-iteration Eta render (datalake cell green on local UAT) ([347626b](https://github.com/alvera-ai/platform-sdk/commit/347626b9d5c26b6336a0561ca91752dbefa30f9b))
* **gh-685:** action_status_updater runtime green on mock across both variants (cloud_watch + restapi) ([45de84d](https://github.com/alvera-ai/platform-sdk/commit/45de84db8a29c69a732e555b54edfa12fa2c05ee))
* **gh-685:** add explicit state module — types, read, atomic write, example synthesis, Eta context builder ([4a463a3](https://github.com/alvera-ai/platform-sdk/commit/4a463a3008e44ca7a7cd271d4cff2f2428cafb15))
* **gh-685:** ai_agent runtime green on mock — completes 10/10 kind matrix ([f377bcb](https://github.com/alvera-ai/platform-sdk/commit/f377bcbfde9b863f513a90fc636910756ef48d09))
* **gh-685:** ASU local TDD green — 10 of 10 kinds now 🟡 (mock + local TDD complete, UAT pending) ([e99cc52](https://github.com/alvera-ai/platform-sdk/commit/e99cc525e9d8e376917a5c304edea74767b38120))
* **gh-685:** consolidate gen group + profile-only auth; verify configure ([4a04973](https://github.com/alvera-ai/platform-sdk/commit/4a04973fd073fb679f7d0367119bc288f716cdde))
* **gh-685:** data_activation_client runtime green on mock (restapi_request variant) — slug-keyed contract template ([9b9e40d](https://github.com/alvera-ai/platform-sdk/commit/9b9e40dd459b31dcdfda7728d8257643a34b9c22))
* **gh-685:** gen config — postgres.conf-style exhaustive templates + 4/4 row ([7907f50](https://github.com/alvera-ai/platform-sdk/commit/7907f50fa5da6f8a7d5b10f346e35d7c6fbf22c6))
* **gh-685:** gen contract — tenant-bound $alvera + { execute, dryRun } orchestrator + round-trip tests against mock and local ([5ad0f0b](https://github.com/alvera-ai/platform-sdk/commit/5ad0f0bc9882dd36914b5d283f7431807ed8edb8))
* **gh-685:** gen-config templates auto-emit datalake_id; restapi method comment lowercase ([06415a9](https://github.com/alvera-ai/platform-sdk/commit/06415a9f3d43ebaca29d3092439ed1ae0403008d))
* **gh-685:** generic_table runtime green on mock — sync mock.json + opt-in CONTRACT_DEBUG ([14ef815](https://github.com/alvera-ai/platform-sdk/commit/14ef8157f8f829d29ebeb77875571e0766cbd24d))
* **gh-685:** interoperability_contract runtime green on mock across 4 industries — slug-keyed contract template + ResourceStateRecord.slug ([5d2705d](https://github.com/alvera-ai/platform-sdk/commit/5d2705da6e16d8a6a55964aaa14dccdab05fd27e))
* **gh-685:** Milestone 13 — CLI completion ([1aa90d8](https://github.com/alvera-ai/platform-sdk/commit/1aa90d89d008292794f61259d95189d223ab0e80))
* **gh-685:** Option B — no singleton leakage; init --datalake mandatory; gen contract --resource &lt;id&gt; ([05e72b7](https://github.com/alvera-ai/platform-sdk/commit/05e72b774f01624b41c0d3d22fabe81e406ee780))
* **gh-685:** pivot body refs to $file sentinel; add cast-collector + render config verb; remove validate-config ([51a3083](https://github.com/alvera-ai/platform-sdk/commit/51a308356f787fd283492e7165b513c2424c1f23))
* **gh-685:** SDK regains llm-export bin (npx) + CLI [@import](https://github.com/import) pointer ([71771a9](https://github.com/alvera-ai/platform-sdk/commit/71771a90862242ff0d214da7cdadce4d8c35753f))
* **gh-685:** wire Eta state context into render pipeline; rip cast-collector FAKE machinery ([2b7df28](https://github.com/alvera-ai/platform-sdk/commit/2b7df289072d4d93104e40d0695098b7e28445ca))
* **gh-685:** workflow runtime green on mock across 4 industries (dataset_type industry-bound) ([32a7444](https://github.com/alvera-ai/platform-sdk/commit/32a7444f29198fca42c23dd762c80183b2f9af03))
* **sdk:** alvera-sdk-init bun-runnable bin (Milestone 12.2) ([8d8a8ef](https://github.com/alvera-ai/platform-sdk/commit/8d8a8efefa4ab4c75ce91a835a556328a2396337))
* talk-to-data — SDK endpoints + CLI verbs + cookbook operate sections ([8ab7e53](https://github.com/alvera-ai/platform-sdk/commit/8ab7e534ec034822ec57334bcad05d89e7e1307c))
* talk-to-data — SDK endpoints + CLI verbs + cookbooks ([ca213a4](https://github.com/alvera-ai/platform-sdk/commit/ca213a4c070b9342dc103232bdc3246589da6624))


### Bug Fixes

* address PR [#49](https://github.com/alvera-ai/platform-sdk/issues/49) review feedback + release rc.25 ([e0b3d24](https://github.com/alvera-ai/platform-sdk/commit/e0b3d2449ca6743259eb07d080b486f1e57ea228))
* **cli:** canonicalize contract path before dynamic import ([cd94218](https://github.com/alvera-ai/platform-sdk/commit/cd9421810e688506b6bef99e8bb98cfbd152b4f9))
* **cli:** doc-aligned validation envelope per decisions [#14](https://github.com/alvera-ai/platform-sdk/issues/14) + [#16](https://github.com/alvera-ai/platform-sdk/issues/16) (12.3 4a) ([81b8d50](https://github.com/alvera-ai/platform-sdk/commit/81b8d5065900985df4732388ffcf58abefe57c20))
* **cli:** graceful 404 on get-metadata; scope drift in tool + ASU; datalake list+drill ([2e08618](https://github.com/alvera-ai/platform-sdk/commit/2e086189f796bb87a7786c16b7bc64f3472d4573))
* **cli:** id-stable reconcile — profile-scoped state, last-write-wins id, id-only probe ([94ae517](https://github.com/alvera-ai/platform-sdk/commit/94ae5178871ace118ec16789c4ff3b4454837058))
* **cli:** wire redactInstalled into plan/apply table output + drop tool scope drift ([3c22e95](https://github.com/alvera-ai/platform-sdk/commit/3c22e954d4173f90420845358357705f02951e18))
* **contracts:** assert seeded DACs are present, not an exact count ([443ecfa](https://github.com/alvera-ai/platform-sdk/commit/443ecfac108ba3d57827fd44b32f4cd22f11a1c1))
* **gh-685:** local TDD surfaces + fixes — cross-resource idRef overrides, probe-by-title, real-platform body shapes ([5b44de6](https://github.com/alvera-ai/platform-sdk/commit/5b44de633ffc42ba71681943797a61149cc54fbc))


### Documentation

* **cli:** note ingest is async (202) in contract-hook lessons ([41c29ed](https://github.com/alvera-ai/platform-sdk/commit/41c29edefb2a8e3777887458042bf4b82da4bfe1))


### Code Refactoring

* **cli:** profile-only auth, zero system-env coupling ([fcf1991](https://github.com/alvera-ai/platform-sdk/commit/fcf19911e5775908069788c2ff829bc2a60fb17e))

## [0.11.0-rc.25](https://github.com/alvera-ai/platform-sdk/compare/cli-v0.10.0-rc.25...cli-v0.11.0-rc.25) (2026-06-21)


### ⚠ BREAKING CHANGES

* **cli:** profile-only auth, zero system-env coupling

### Features

* 0.9.0 — integration-tests cleanup + pnpm → bun migration ([9d623bf](https://github.com/alvera-ai/platform-sdk/commit/9d623bf2b8b8fadf30346aa36d7384fca3d9f8bf))
* alvera CLI + platform SDK v1 — monorepo, npm, brew, verbs ([1cffb10](https://github.com/alvera-ai/platform-sdk/commit/1cffb109428b7dd004bd4f483c84bb6d829ec489))
* bundle integration-tests cleanup + pnpm → bun migration into 0.9.0 ([41fc906](https://github.com/alvera-ai/platform-sdk/commit/41fc9062c0f90e01db0d8bcac93ce679f5acb5fe))
* bundle integration-tests cleanup + pnpm → bun migration into 0.9.0 ([10c5fb4](https://github.com/alvera-ai/platform-sdk/commit/10c5fb4c7764d802bbcbb00264f9d57bcf56af42))
* **cli:** bun:test harness + repoint onto SDK metadata/metadataDetails ([a60cfac](https://github.com/alvera-ai/platform-sdk/commit/a60cfac6301e11b3bfd1261428f5d8bd67472d4e))
* **cli:** payment-risk + accounts-receivable CLI completion ([1acae25](https://github.com/alvera-ai/platform-sdk/commit/1acae25f63b130f4a42d264c4ace3dd3f303bd95))
* **gh-41:** delete reconcile diff engine, preserve validation envelope ([ef7c6dd](https://github.com/alvera-ai/platform-sdk/commit/ef7c6dd82a6402f435e45ea6f4fc13d9a8f586a5))
* **gh-41:** format-outcomes.ts — 3-state plan diff + apply table ([a3a29db](https://github.com/alvera-ai/platform-sdk/commit/a3a29dbf1da73325c7557e15816f58169e06d895))
* **gh-41:** migrate plan/apply onto the fold pipeline ([70001ed](https://github.com/alvera-ai/platform-sdk/commit/70001edb0575797d4a23708e804f0b4d22cb21ce))
* **gh-41:** per-kind config-resource drift fingerprint ([f68c68a](https://github.com/alvera-ai/platform-sdk/commit/f68c68aba062cb8abfef6c6e1aa102401c099a24))
* **gh-41:** persist drift baseline in StateResource ([2c8eccf](https://github.com/alvera-ai/platform-sdk/commit/2c8eccf8bdb558d3902b4a0f8af559d2c570fd44))
* **gh-41:** step.ts — the shared plan/apply fold step ([59344ec](https://github.com/alvera-ai/platform-sdk/commit/59344ec2bb8b7d65cd6b17841a0ac73f055708c7))
* **gh-685:** §12.11 cluster E1 — alvera serve-mock verb (lazy-installs @mockoon/cli into ~/.cache/alvera/mockoon/&lt;version&gt;/) ([e56f415](https://github.com/alvera-ai/platform-sdk/commit/e56f4159e2fabf0933ab04db89058e502ddf1f45))
* **gh-685:** §12.11 cluster E2 — alvera llm-export verb (replaces SDK bin's llm-export) ([718a719](https://github.com/alvera-ai/platform-sdk/commit/718a7193359992b060c8b4be5ff94be107fefca4))
* **gh-685:** §13.10 A+C — Eta render foundation + alvera secrets needed on recursive AST scan + secrets.toml JS-ident validator ([c7ef48c](https://github.com/alvera-ai/platform-sdk/commit/c7ef48cfc2cc19344683f4df18bf6842cd66f4ee))
* **gh-685:** §13.14a explicit-per-kind types — no generics, no casts, foundation slice (10 kinds) strict-typecheck green ([e7b6bcc](https://github.com/alvera-ai/platform-sdk/commit/e7b6bcc2d3e8783bd650e823d82976123987be97))
* **gh-685:** §13.14a scaffold — types + dispatch + datalake base + foundation overlay ([4df0680](https://github.com/alvera-ai/platform-sdk/commit/4df0680b36a07357ad0f021cbc755b56ffa2c14d))
* **gh-685:** §13.14e cell 1 — foundation × datalake green on mock (4/4 pass) ([07cdb96](https://github.com/alvera-ai/platform-sdk/commit/07cdb96f20e8f04edf9d1c66e3dcdd8394b43b58))
* **gh-685:** §13.14e cell 2 — foundation × data_source green on mock (4/4 pass, 8/8 cumulative) ([87b8838](https://github.com/alvera-ai/platform-sdk/commit/87b88387c09c2f4f7eb2a4ff83e19917245283e5))
* **gh-685:** §13.14e cells 1+2 — verbose explicit refactor green on mock (8/8) + local UAT-validated against alvera-foundation profile ([e8dd127](https://github.com/alvera-ai/platform-sdk/commit/e8dd1272b1a43dca3d28b256c7e94a3135123a53))
* **gh-685:** §13.4 — alvera init + add-or-modify + templates layer ([c88423f](https://github.com/alvera-ai/platform-sdk/commit/c88423faf35350d4ff6c1fd455d85785f8e43fba))
* **gh-685:** §13.5 — --help block-MD footer macro + config.toml/secrets.toml rename ([e46e9ca](https://github.com/alvera-ai/platform-sdk/commit/e46e9caa44316e01ba30c1daa20ba0190efdfbd8))
* **gh-685:** §13.6 — alvera validate contract + reusable lint module ([094e3ed](https://github.com/alvera-ai/platform-sdk/commit/094e3edea6604f2942efdbacdeaa0c019814c7d2))
* **gh-685:** §13.8 — apply four-phase runner + in-process contract execution ([37ea607](https://github.com/alvera-ai/platform-sdk/commit/37ea60701ffac0e85ecf7301f8b439676beef754))
* **gh-685:** §13.9 — alvera gen contract + contract-scaffold catalogue ([56e2154](https://github.com/alvera-ai/platform-sdk/commit/56e2154255b17073b002beadb6237bace2750abe))
* **gh-685:** §2.10.21 v15 — one-line gen-contract emit + apply dispatch + hook composition + per-iteration Eta render (datalake cell green on local UAT) ([347626b](https://github.com/alvera-ai/platform-sdk/commit/347626b9d5c26b6336a0561ca91752dbefa30f9b))
* **gh-685:** action_status_updater runtime green on mock across both variants (cloud_watch + restapi) ([45de84d](https://github.com/alvera-ai/platform-sdk/commit/45de84db8a29c69a732e555b54edfa12fa2c05ee))
* **gh-685:** add explicit state module — types, read, atomic write, example synthesis, Eta context builder ([4a463a3](https://github.com/alvera-ai/platform-sdk/commit/4a463a3008e44ca7a7cd271d4cff2f2428cafb15))
* **gh-685:** ai_agent runtime green on mock — completes 10/10 kind matrix ([f377bcb](https://github.com/alvera-ai/platform-sdk/commit/f377bcbfde9b863f513a90fc636910756ef48d09))
* **gh-685:** ASU local TDD green — 10 of 10 kinds now 🟡 (mock + local TDD complete, UAT pending) ([e99cc52](https://github.com/alvera-ai/platform-sdk/commit/e99cc525e9d8e376917a5c304edea74767b38120))
* **gh-685:** consolidate gen group + profile-only auth; verify configure ([4a04973](https://github.com/alvera-ai/platform-sdk/commit/4a04973fd073fb679f7d0367119bc288f716cdde))
* **gh-685:** data_activation_client runtime green on mock (restapi_request variant) — slug-keyed contract template ([9b9e40d](https://github.com/alvera-ai/platform-sdk/commit/9b9e40dd459b31dcdfda7728d8257643a34b9c22))
* **gh-685:** gen config — postgres.conf-style exhaustive templates + 4/4 row ([7907f50](https://github.com/alvera-ai/platform-sdk/commit/7907f50fa5da6f8a7d5b10f346e35d7c6fbf22c6))
* **gh-685:** gen contract — tenant-bound $alvera + { execute, dryRun } orchestrator + round-trip tests against mock and local ([5ad0f0b](https://github.com/alvera-ai/platform-sdk/commit/5ad0f0bc9882dd36914b5d283f7431807ed8edb8))
* **gh-685:** gen-config templates auto-emit datalake_id; restapi method comment lowercase ([06415a9](https://github.com/alvera-ai/platform-sdk/commit/06415a9f3d43ebaca29d3092439ed1ae0403008d))
* **gh-685:** generic_table runtime green on mock — sync mock.json + opt-in CONTRACT_DEBUG ([14ef815](https://github.com/alvera-ai/platform-sdk/commit/14ef8157f8f829d29ebeb77875571e0766cbd24d))
* **gh-685:** interoperability_contract runtime green on mock across 4 industries — slug-keyed contract template + ResourceStateRecord.slug ([5d2705d](https://github.com/alvera-ai/platform-sdk/commit/5d2705da6e16d8a6a55964aaa14dccdab05fd27e))
* **gh-685:** Milestone 13 — CLI completion ([1aa90d8](https://github.com/alvera-ai/platform-sdk/commit/1aa90d89d008292794f61259d95189d223ab0e80))
* **gh-685:** Option B — no singleton leakage; init --datalake mandatory; gen contract --resource &lt;id&gt; ([05e72b7](https://github.com/alvera-ai/platform-sdk/commit/05e72b774f01624b41c0d3d22fabe81e406ee780))
* **gh-685:** pivot body refs to $file sentinel; add cast-collector + render config verb; remove validate-config ([51a3083](https://github.com/alvera-ai/platform-sdk/commit/51a308356f787fd283492e7165b513c2424c1f23))
* **gh-685:** SDK regains llm-export bin (npx) + CLI [@import](https://github.com/import) pointer ([71771a9](https://github.com/alvera-ai/platform-sdk/commit/71771a90862242ff0d214da7cdadce4d8c35753f))
* **gh-685:** wire Eta state context into render pipeline; rip cast-collector FAKE machinery ([2b7df28](https://github.com/alvera-ai/platform-sdk/commit/2b7df289072d4d93104e40d0695098b7e28445ca))
* **gh-685:** workflow runtime green on mock across 4 industries (dataset_type industry-bound) ([32a7444](https://github.com/alvera-ai/platform-sdk/commit/32a7444f29198fca42c23dd762c80183b2f9af03))
* **sdk:** alvera-sdk-init bun-runnable bin (Milestone 12.2) ([8d8a8ef](https://github.com/alvera-ai/platform-sdk/commit/8d8a8efefa4ab4c75ce91a835a556328a2396337))


### Bug Fixes

* address PR [#49](https://github.com/alvera-ai/platform-sdk/issues/49) review feedback + release rc.25 ([e0b3d24](https://github.com/alvera-ai/platform-sdk/commit/e0b3d2449ca6743259eb07d080b486f1e57ea228))
* **cli:** doc-aligned validation envelope per decisions [#14](https://github.com/alvera-ai/platform-sdk/issues/14) + [#16](https://github.com/alvera-ai/platform-sdk/issues/16) (12.3 4a) ([81b8d50](https://github.com/alvera-ai/platform-sdk/commit/81b8d5065900985df4732388ffcf58abefe57c20))
* **cli:** graceful 404 on get-metadata; scope drift in tool + ASU; datalake list+drill ([2e08618](https://github.com/alvera-ai/platform-sdk/commit/2e086189f796bb87a7786c16b7bc64f3472d4573))
* **cli:** id-stable reconcile — profile-scoped state, last-write-wins id, id-only probe ([94ae517](https://github.com/alvera-ai/platform-sdk/commit/94ae5178871ace118ec16789c4ff3b4454837058))
* **cli:** wire redactInstalled into plan/apply table output + drop tool scope drift ([3c22e95](https://github.com/alvera-ai/platform-sdk/commit/3c22e954d4173f90420845358357705f02951e18))
* **contracts:** assert seeded DACs are present, not an exact count ([443ecfa](https://github.com/alvera-ai/platform-sdk/commit/443ecfac108ba3d57827fd44b32f4cd22f11a1c1))
* **gh-685:** local TDD surfaces + fixes — cross-resource idRef overrides, probe-by-title, real-platform body shapes ([5b44de6](https://github.com/alvera-ai/platform-sdk/commit/5b44de633ffc42ba71681943797a61149cc54fbc))


### Code Refactoring

* **cli:** profile-only auth, zero system-env coupling ([fcf1991](https://github.com/alvera-ai/platform-sdk/commit/fcf19911e5775908069788c2ff829bc2a60fb17e))
