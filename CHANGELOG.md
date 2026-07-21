# Changelog

## [0.13.0](https://github.com/alvera-ai/platform-sdk/compare/v0.12.1...v0.13.0) (2026-07-19)


### ⚠ BREAKING CHANGES

* **cli:** cached bundles move to ~/.alvera/configs/<stem>/<hash>/; the next render repopulates them.
* **cli:** per-environment manifests — the filename is the stem, nothing is guessed

### Features

* **cli:** alvera fork-env — the second environment, born red ([2c5d3de](https://github.com/alvera-ai/platform-sdk/commit/2c5d3de0d2dc4264f0be1d386d2733fbaa3cb555))
* **cli:** alvera import — Terraform-style adoption of live resources, all 10 kinds ([0668bd4](https://github.com/alvera-ai/platform-sdk/commit/0668bd4cc72979a243e631a6c449a597133e4ea8))
* **cli:** alvera init scaffolds infra/AGENTS.md (infra-member agent router) ([2650d53](https://github.com/alvera-ai/platform-sdk/commit/2650d53ddc44407b59e6634d907c7fe0df021e8c))
* **cli:** apply points at llm-export the moment the cache matters ([b75e5ab](https://github.com/alvera-ai/platform-sdk/commit/b75e5ab1087ef710e6d4ee74946e37da8094cb14))
* **cli:** cookbook batch A — rest-fetch, generic-tables, ASU, agent-invoke, system-templates, bulk-ingest ([080a12e](https://github.com/alvera-ai/platform-sdk/commit/080a12ed823bb91bad3a8fb1ab668530e375239b))
* **cli:** cookbook batch B — the six SMS/workflow business scenarios ([3ec434a](https://github.com/alvera-ai/platform-sdk/commit/3ec434aa1d19c17db3d79261c4875d261617eac5))
* **cli:** cookbook batch C — LLM scenarios + talk-to-data mapping note; corpus complete (17) ([0097f5b](https://github.com/alvera-ai/platform-sdk/commit/0097f5b5ed50e05f3dcf99e51793dea01b023fd5))
* **cli:** cookbook corpus macro + welcome-sms pilot scenario ([f3587fe](https://github.com/alvera-ai/platform-sdk/commit/f3587feee3b1339f8c3a98f10f808e8fc2ffbcd4))
* **cli:** every verb accepts -c/-s; errors name the verb's correct form ([a2a3223](https://github.com/alvera-ai/platform-sdk/commit/a2a3223657c8481a8fa9c133fb5006e420c73a29))
* **cli:** GH-767 Mailgun endpoint_url override on the email tool ([e910054](https://github.com/alvera-ai/platform-sdk/commit/e910054502c48d2ba5b78dd7a628310eab14876a))
* **cli:** llm-export bare mode — ground an empty tenant with no -c ([a594f4f](https://github.com/alvera-ai/platform-sdk/commit/a594f4f709bc5da1147ece53149060e58e165023))
* **cli:** llm-export vendors both corpora into root .agent/ ([500f38b](https://github.com/alvera-ai/platform-sdk/commit/500f38b27a109d923d3dbc8a15d2b1b32ab767b5))
* **cli:** per-environment manifests — the filename is the stem, nothing is guessed ([4a1cce7](https://github.com/alvera-ai/platform-sdk/commit/4a1cce74475b9af22bd06fe7af9b2bb9fe62ea2b))
* **cli:** the human gate — render-human verb + init hook injection ([6521012](https://github.com/alvera-ai/platform-sdk/commit/6521012963a2fa536edaf9f193b098d37a5f76c0))
* **cli:** verify against the mono — llm-export infra topology, guides, GH-749 domains ([132efd0](https://github.com/alvera-ai/platform-sdk/commit/132efd01f91913a43c0513efd770889d83babef7))
* GH-767 action-status-updater refresh — SDK method + CLI verb ([c57a04a](https://github.com/alvera-ai/platform-sdk/commit/c57a04a151b3e1326e357b2ace745c6903f73803))
* **llm-export:** inline the by-use-case cookbook index into the managed block ([b72ccfb](https://github.com/alvera-ai/platform-sdk/commit/b72ccfb489d08be4b636ebb4ffe8bb384b366a5e))


### Bug Fixes

* **cli:** a created resource with a red contract reports created, not failed ([21fb2dc](https://github.com/alvera-ai/platform-sdk/commit/21fb2dc419ce1b25f2fd9a17917219952bb92474))
* **cli:** alvera import emits tool credential secrets the GET omits ([25745d6](https://github.com/alvera-ai/platform-sdk/commit/25745d6a2021858ae1df3130aca4d545492222b5))
* **cli:** alvera import preserves nested writable sub-objects (workflow actions, interop agents) ([4027ae4](https://github.com/alvera-ai/platform-sdk/commit/4027ae4e3c4fb7fa9315ac49bd04a42a85af0399))
* **cli:** alvera import preserves workflow decision_config.output_schema ([4268b25](https://github.com/alvera-ai/platform-sdk/commit/4268b259b0931423e145d96fe061a9957b59cff0))
* **cli:** correct stale ASU message_config test fixture ([f53a572](https://github.com/alvera-ai/platform-sdk/commit/f53a572c5d2f1ba3f3921834d22aa305fc56d34e))
* **cli:** gate generic-table search smoke on regulated-table migration ([97f7e75](https://github.com/alvera-ai/platform-sdk/commit/97f7e75c85408616180c59137b31d54973492246))
* **cli:** gitignore every secrets file, and never re-run a mutating command for a GIF ([2c3db44](https://github.com/alvera-ai/platform-sdk/commit/2c3db44f24699aab677db680033be9f1fee425a0))
* **cli:** green the mock CI — two long-red contract tests ([6643b51](https://github.com/alvera-ai/platform-sdk/commit/6643b5196c2a2b2164f6979c9039e0636c730acb))
* **cli:** init tells the truth about infra/.state/ — committed, not gitignored ([f518772](https://github.com/alvera-ai/platform-sdk/commit/f518772e3562c8176732950376dfdb3302f351c0))
* **cli:** keep internal recorder gotcha out of the consumer guides corpus ([9d68ed4](https://github.com/alvera-ai/platform-sdk/commit/9d68ed4e51b88675925e883ec276e698df3a762d))
* **cli:** message-family datasets carry no default DAC — align the datalake contracts ([c13371e](https://github.com/alvera-ai/platform-sdk/commit/c13371ecc2518c5d18178ebe3da665330070ada2))
* **cli:** regen off GH-749 — render gate rejects non-whitelist timezones locally ([3e33beb](https://github.com/alvera-ai/platform-sdk/commit/3e33beb87167af580ea65568df2ed105a2c980f0))
* **cli:** render-human — datalake section + artifact-faithful detail panes ([be284d7](https://github.com/alvera-ai/platform-sdk/commit/be284d7ea77d1d085eccafe44324fb860b5d6c6c))
* **cli:** scaffolds tell the wire truth; empty tables fail at render ([ae0c9d4](https://github.com/alvera-ai/platform-sdk/commit/ae0c9d4daaebbd3c34d1abd90648ad6dfd4ac6de))
* **cli:** secrets scan is TOML-first — comments are not templates ([9198c5d](https://github.com/alvera-ai/platform-sdk/commit/9198c5d99a125b0065fad672c9ce07abd6f8e2ca))
* **cli:** the datalake timezone is an 8-zone US whitelist — say so everywhere ([61ceb24](https://github.com/alvera-ai/platform-sdk/commit/61ceb24b3c65b0b213d3f875a0a8edc29954db11))
* **cli:** the render cache is keyed by manifest, not by directory ([cc266a7](https://github.com/alvera-ai/platform-sdk/commit/cc266a7d99b88e0cc1f04512438db4d88d73a5f1))
* **sdk:** --debug names the server, not just the route ([36eb58e](https://github.com/alvera-ai/platform-sdk/commit/36eb58ed87b454b127f35f850876038243d61092))

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
