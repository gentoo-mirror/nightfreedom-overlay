# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# NOTE: The comments in this file are for instruction and documentation.
# They're not meant to appear with your final, production ebuild.  Please
# remember to remove them before submitting or committing your ebuild.  That
# doesn't mean you can't add your own comments though.

# The EAPI variable tells the ebuild format in use.
# It is suggested that you use the latest EAPI approved by the Council.
# The PMS contains specifications for all EAPIs. Eclasses will test for this
# variable if they need to use features that are not universal in all EAPIs.
# If an eclass doesn't support latest EAPI, use the previous EAPI instead.
EAPI=8


# inherit lists eclasses to inherit functions from. For example, an ebuild
# that needs the eautoreconf function from autotools.eclass won't work
# without the following line:
#inherit autotools
#
# Eclasses tend to list descriptions of how to use their functions properly.
# Take a look at the eclass/ directory for more examples.
inherit yarn_picgo

# Short one-line description of this package.
DESCRIPTION="A simple & beautiful tool for pictures uploading built by electron-vue"

# Homepage, not used by Portage directly but handy for developer reference
HOMEPAGE="https://github.com/Molunerfinn/PicGo"

# Point to any required sources; these will be automatically downloaded by
# Portage.
#SRC_URI="ftp://foo.example.org/${P}.tar.gz"
#SRC_URI="https://github.com/Molunerfinn/PicGo/archive/refs/tags/v{PVR}.tar.gz" -> ${P}.tar.gz
SRC_URI="${YARN_SRC_URI}"
# Source directory; the dir where the sources can be found (automatically
# unpacked) inside ${WORKDIR}.  The default value for S is ${WORKDIR}/${P}
# If you don't need to change it, leave the S= line out of the ebuild
# to keep it tidy.
#S="${WORKDIR}/${P}"
S=

YARN_PKGS=(
	@achrinza/node-ipc@9.2.6
	@ampproject/remapping@2.2.0
	@babel/code-frame@7.16.7
	@babel/compat-data@7.20.10
	@babel/core@7.20.7
	@babel/generator@7.20.7
	@babel/helper-annotate-as-pure@7.18.6
	@babel/helper-builder-binary-assignment-operator-visitor@7.18.9
	@babel/helper-compilation-targets@7.20.7
	@babel/helper-create-class-features-plugin@7.20.7
	@babel/helper-create-regexp-features-plugin@7.20.5
	@babel/helper-define-polyfill-provider@0.3.3
	@babel/helper-environment-visitor@7.18.9
	@babel/helper-explode-assignable-expression@7.18.6
	@babel/helper-function-name@7.19.0
	@babel/helper-get-function-arity@7.16.7
	@babel/helper-hoist-variables@7.18.6
	@babel/helper-member-expression-to-functions@7.20.7
	@babel/helper-module-imports@7.16.7
	@babel/helper-module-transforms@7.20.11
	@babel/helper-optimise-call-expression@7.18.6
	@babel/helper-plugin-utils@7.20.2
	@babel/helper-remap-async-to-generator@7.18.9
	@babel/helper-replace-supers@7.20.7
	@babel/helper-simple-access@7.20.2
	@babel/helper-skip-transparent-expression-wrappers@7.20.0
	@babel/helper-split-export-declaration@7.18.6
	@babel/helper-string-parser@7.19.4
	@babel/helper-validator-identifier@7.19.1
	@babel/helper-validator-option@7.18.6
	@babel/helper-wrap-function@7.20.5
	@babel/helpers@7.20.7
	@babel/highlight@7.16.7
	@babel/parser@7.20.7
	@babel/plugin-bugfix-safari-id-destructuring-collision-in-function-expression@7.18.6
	@babel/plugin-bugfix-v8-spread-parameters-in-optional-chaining@7.20.7
	@babel/plugin-proposal-async-generator-functions@7.20.7
	@babel/plugin-proposal-class-properties@7.18.6
	@babel/plugin-proposal-class-static-block@7.20.7
	@babel/plugin-proposal-decorators@7.20.7
	@babel/plugin-proposal-dynamic-import@7.18.6
	@babel/plugin-proposal-export-namespace-from@7.18.9
	@babel/plugin-proposal-json-strings@7.18.6
	@babel/plugin-proposal-logical-assignment-operators@7.20.7
	@babel/plugin-proposal-nullish-coalescing-operator@7.18.6
	@babel/plugin-proposal-numeric-separator@7.18.6
	@babel/plugin-proposal-object-rest-spread@7.20.7
	@babel/plugin-proposal-optional-catch-binding@7.18.6
	@babel/plugin-proposal-optional-chaining@7.16.7
	@babel/plugin-proposal-private-methods@7.18.6
	@babel/plugin-proposal-private-property-in-object@7.20.5
	@babel/plugin-proposal-unicode-property-regex@7.18.6
	@babel/plugin-syntax-async-generators@7.8.4
	@babel/plugin-syntax-class-properties@7.12.13
	@babel/plugin-syntax-class-static-block@7.14.5
	@babel/plugin-syntax-decorators@7.19.0
	@babel/plugin-syntax-dynamic-import@7.8.3
	@babel/plugin-syntax-export-namespace-from@7.8.3
	@babel/plugin-syntax-import-assertions@7.20.0
	@babel/plugin-syntax-json-strings@7.8.3
	@babel/plugin-syntax-jsx@7.16.7
	@babel/plugin-syntax-logical-assignment-operators@7.10.4
	@babel/plugin-syntax-nullish-coalescing-operator@7.8.3
	@babel/plugin-syntax-numeric-separator@7.10.4
	@babel/plugin-syntax-object-rest-spread@7.8.3
	@babel/plugin-syntax-optional-catch-binding@7.8.3
	@babel/plugin-syntax-optional-chaining@7.8.3
	@babel/plugin-syntax-private-property-in-object@7.14.5
	@babel/plugin-syntax-top-level-await@7.14.5
	@babel/plugin-transform-arrow-functions@7.20.7
	@babel/plugin-transform-async-to-generator@7.20.7
	@babel/plugin-transform-block-scoped-functions@7.18.6
	@babel/plugin-transform-block-scoping@7.20.11
	@babel/plugin-transform-classes@7.20.7
	@babel/plugin-transform-computed-properties@7.20.7
	@babel/plugin-transform-destructuring@7.20.7
	@babel/plugin-transform-dotall-regex@7.18.6
	@babel/plugin-transform-duplicate-keys@7.18.9
	@babel/plugin-transform-exponentiation-operator@7.18.6
	@babel/plugin-transform-for-of@7.18.8
	@babel/plugin-transform-function-name@7.18.9
	@babel/plugin-transform-literals@7.18.9
	@babel/plugin-transform-member-expression-literals@7.18.6
	@babel/plugin-transform-modules-amd@7.20.11
	@babel/plugin-transform-modules-commonjs@7.20.11
	@babel/plugin-transform-modules-systemjs@7.20.11
	@babel/plugin-transform-modules-umd@7.18.6
	@babel/plugin-transform-named-capturing-groups-regex@7.20.5
	@babel/plugin-transform-new-target@7.18.6
	@babel/plugin-transform-object-super@7.18.6
	@babel/plugin-transform-parameters@7.20.7
	@babel/plugin-transform-property-literals@7.18.6
	@babel/plugin-transform-regenerator@7.20.5
	@babel/plugin-transform-reserved-words@7.18.6
	@babel/plugin-transform-runtime@7.19.6
	@babel/plugin-transform-shorthand-properties@7.18.6
	@babel/plugin-transform-spread@7.20.7
	@babel/plugin-transform-sticky-regex@7.18.6
	@babel/plugin-transform-template-literals@7.18.9
	@babel/plugin-transform-typeof-symbol@7.18.9
	@babel/plugin-transform-unicode-escapes@7.18.10
	@babel/plugin-transform-unicode-regex@7.18.6
	@babel/preset-env@7.20.2
	@babel/preset-modules@0.1.5
	@babel/runtime@7.20.7
	@babel/template@7.20.7
	@babel/traverse@7.20.10
	@babel/types@7.20.7
	@commitlint/cli@7.6.1
	@commitlint/config-validator@16.0.0
	@commitlint/ensure@7.6.0
	@commitlint/execute-rule@7.6.0
	@commitlint/format@7.6.1
	@commitlint/is-ignored@7.6.0
	@commitlint/lint@7.6.0
	@commitlint/load@7.6.2
	@commitlint/message@7.6.0
	@commitlint/parse@7.6.0
	@commitlint/read@7.6.0
	@commitlint/resolve-extends@7.6.0
	@commitlint/rules@7.6.0
	@commitlint/to-lines@7.6.0
	@commitlint/top-level@7.6.0
	@commitlint/types@16.0.0
	@commonify/lowdb@3.0.0
	@commonify/steno@2.1.0
	@cspotcode/source-map-consumer@0.8.0
	@cspotcode/source-map-support@0.7.0
	@ctrl/tinycolor@3.5.0
	@develar/schema-utils@2.6.5
	@electron/get@1.13.1
	@electron/universal@1.2.1
	@element-plus/icons-vue@2.0.10
	@eslint/eslintrc@1.4.1
	@floating-ui/core@1.1.0
	@floating-ui/dom@1.1.0
	@hapi/hoek@9.3.0
	@hapi/topo@5.1.0
	@humanwhocodes/config-array@0.11.8
	@humanwhocodes/module-importer@1.0.1
	@humanwhocodes/object-schema@1.2.1
	@hutson/parse-repository-url@3.0.2
	@jridgewell/gen-mapping@0.3.2
	@jridgewell/resolve-uri@3.1.0
	@jridgewell/set-array@1.1.2
	@jridgewell/source-map@0.3.2
	@jridgewell/sourcemap-codec@1.4.14
	@jridgewell/trace-mapping@0.3.17
	@leichtgewicht/ip-codec@2.0.4
	@malept/cross-spawn-promise@1.1.1
	@malept/flatpak-bundler@0.4.0
	@marionebl/sander@0.6.1
	@node-ipc/js-queue@2.0.3
	@nodelib/fs.scandir@2.1.5
	@nodelib/fs.stat@2.0.5
	@nodelib/fs.walk@1.2.8
	@picgo/bump-version@1.1.2
	@picgo/i18n@1.0.0
	@picgo/store@2.0.4
	@polka/url@1.0.0-next.21
	@popperjs/core@2.11.7
	@sideway/address@4.1.4
	@sideway/formula@3.0.1
	@sideway/pinpoint@2.0.0
	@sindresorhus/is@0.14.0
	@soda/friendly-errors-webpack-plugin@1.8.1
	@soda/get-current-script@1.0.2
	@szmarczak/http-timer@1.1.2
	@tootallnate/once@1.1.2
	@trysound/sax@0.2.0
	@tsconfig/node10@1.0.8
	@tsconfig/node12@1.0.9
	@tsconfig/node14@1.0.1
	@tsconfig/node16@1.0.2
	@types/body-parser@1.19.2
	@types/bonjour@3.5.10
	@types/bson@4.2.0
	@types/caseless@0.12.2
	@types/connect-history-api-fallback@1.3.5
	@types/connect@3.4.35
	@types/debug@4.1.7
	@types/electron-devtools-installer@2.2.2
	@types/eslint-scope@3.7.4
	@types/eslint@8.4.10
	@types/estree@1.0.0
	@types/express-serve-static-core@4.17.27
	@types/express@4.17.15
	@types/fs-extra@9.0.13
	@types/glob@7.2.0
	@types/graceful-fs@4.1.5
	@types/html-minifier-terser@6.1.0
	@types/http-proxy@1.17.9
	@types/inquirer@6.5.0
	@types/js-yaml@4.0.5
	@types/json-schema@7.0.11
	@types/json5@0.0.29
	@types/lodash-es@4.17.6
	@types/lodash@4.14.178
	@types/lowdb@1.0.11
	@types/mime@1.3.2
	@types/minimatch@3.0.5
	@types/minimist@1.2.2
	@types/ms@0.7.31
	@types/node@16.11.18
	@types/normalize-package-data@2.4.1
	@types/parse-json@4.0.0
	@types/plist@3.0.2
	@types/qs@6.9.7
	@types/range-parser@1.2.4
	@types/request-promise-native@1.0.18
	@types/request@2.48.8
	@types/retry@0.12.0
	@types/semver@7.3.9
	@types/serve-index@1.9.1
	@types/serve-static@1.13.10
	@types/sockjs@0.3.33
	@types/through@0.0.30
	@types/tough-cookie@4.0.1
	@types/uuid@8.3.1
	@types/verror@1.10.5
	@types/web-bluetooth@0.0.16
	@types/webpack-env@1.16.3
	@types/write-file-atomic@4.0.0
	@types/ws@8.5.3
	@types/yargs-parser@20.2.1
	@types/yargs@17.0.8
	@typescript-eslint/eslint-plugin@5.48.0
	@typescript-eslint/parser@5.48.0
	@typescript-eslint/scope-manager@5.48.0
	@typescript-eslint/type-utils@5.48.0
	@typescript-eslint/types@5.48.0
	@typescript-eslint/typescript-estree@5.48.0
	@typescript-eslint/utils@5.48.0
	@typescript-eslint/visitor-keys@5.48.0
	@vue/babel-helper-vue-jsx-merge-props@1.4.0
	@vue/babel-helper-vue-transform-on@1.0.2
	@vue/babel-plugin-jsx@1.1.1
	@vue/babel-plugin-transform-vue-jsx@1.4.0
	@vue/babel-preset-app@5.0.8
	@vue/babel-preset-jsx@1.4.0
	@vue/babel-sugar-composition-api-inject-h@1.4.0
	@vue/babel-sugar-composition-api-render-instance@1.4.0
	@vue/babel-sugar-functional-vue@1.4.0
	@vue/babel-sugar-inject-h@1.4.0
	@vue/babel-sugar-v-model@1.4.0
	@vue/babel-sugar-v-on@1.4.0
	@vue/cli-overlay@5.0.8
	@vue/cli-plugin-babel@5.0.8
	@vue/cli-plugin-eslint@5.0.8
	@vue/cli-plugin-router@5.0.8
	@vue/cli-plugin-typescript@5.0.8
	@vue/cli-plugin-vuex@5.0.8
	@vue/cli-service@5.0.8
	@vue/cli-shared-utils@5.0.8
	@vue/compiler-core@3.2.45
	@vue/compiler-dom@3.2.45
	@vue/compiler-sfc@3.2.45
	@vue/compiler-ssr@3.2.45
	@vue/component-compiler-utils@3.3.0
	@vue/devtools-api@6.4.5
	@vue/eslint-config-standard@8.0.1
	@vue/eslint-config-typescript@11.0.2
	@vue/reactivity-transform@3.2.45
	@vue/reactivity@3.2.45
	@vue/runtime-core@3.2.45
	@vue/runtime-dom@3.2.45
	@vue/server-renderer@3.2.45
	@vue/shared@3.2.45
	@vue/vue-loader-v15@15.10.1
	@vue/web-component-wrapper@1.3.0
	@vueuse/core@9.9.0
	@vueuse/metadata@9.9.0
	@vueuse/shared@9.9.0
	@webassemblyjs/ast@1.11.1
	@webassemblyjs/floating-point-hex-parser@1.11.1
	@webassemblyjs/helper-api-error@1.11.1
	@webassemblyjs/helper-buffer@1.11.1
	@webassemblyjs/helper-numbers@1.11.1
	@webassemblyjs/helper-wasm-bytecode@1.11.1
	@webassemblyjs/helper-wasm-section@1.11.1
	@webassemblyjs/ieee754@1.11.1
	@webassemblyjs/leb128@1.11.1
	@webassemblyjs/utf8@1.11.1
	@webassemblyjs/wasm-edit@1.11.1
	@webassemblyjs/wasm-gen@1.11.1
	@webassemblyjs/wasm-opt@1.11.1
	@webassemblyjs/wasm-parser@1.11.1
	@webassemblyjs/wast-printer@1.11.1
	@xtuc/ieee754@1.2.0
	@xtuc/long@4.2.2
	7zip-bin@5.1.1
	accepts@1.3.7
	acorn-import-assertions@1.8.0
	acorn-jsx@5.3.2
	acorn-walk@8.2.0
	acorn@8.8.1
	add-stream@1.0.0
	address@1.1.2
	agent-base@6.0.2
	agentkeepalive@4.2.1
	ajv-formats@2.1.1
	ajv-keywords@3.5.2
	ajv@6.12.6
	ansi-align@3.0.1
	ansi-escapes@3.2.0
	ansi-html-community@0.0.8
	ansi-regex@5.0.1
	ansi-styles@4.3.0
	any-promise@1.3.0
	anymatch@3.1.2
	app-builder-bin@4.0.0
	app-builder-lib@23.3.3
	arch@2.2.0
	archive-type@4.0.0
	arg@4.1.3
	argparse@2.0.1
	array-find-index@1.0.2
	array-flatten@1.1.1
	array-ify@1.0.0
	array-includes@3.1.4
	array-timsort@1.0.3
	array-union@2.1.0
	array.prototype.flat@1.2.5
	arrify@1.0.1
	asar@3.2.0
	assert-plus@1.0.0
	ast-types@0.13.4
	astral-regex@2.0.0
	async-exit-hook@2.0.1
	async-validator@4.2.5
	async@2.6.3
	asynckit@0.4.0
	at-least-node@1.0.0
	atob@2.1.2
	autoprefixer@10.4.13
	axios@0.19.2
	babel-loader@8.3.0
	babel-plugin-dynamic-import-node@2.3.3
	babel-plugin-polyfill-corejs2@0.3.3
	babel-plugin-polyfill-corejs3@0.6.0
	babel-plugin-polyfill-regenerator@0.4.1
	babel-polyfill@6.26.0
	babel-runtime@6.26.0
	balanced-match@1.0.2
	base64-js@1.5.1
	batch@0.6.1
	before@0.0.1
	big.js@5.2.2
	binary-extensions@2.2.0
	bl@4.1.0
	block-stream2@2.1.0
	bluebird-lst@1.0.9
	bluebird@3.7.2
	body-parser@1.20.1
	bonjour-service@1.0.14
	boolbase@1.0.0
	boolean@3.1.4
	boxen@5.1.2
	brace-expansion@1.1.11
	braces@3.0.2
	browserslist@4.21.4
	bson@4.6.0
	buffer-alloc-unsafe@1.1.0
	buffer-alloc@1.2.0
	buffer-crc32@0.2.13
	buffer-equal@1.0.0
	buffer-fill@1.0.0
	buffer-from@1.1.2
	buffer@5.7.1
	builder-util-runtime@9.0.3
	builder-util@23.3.3
	builtins@5.0.1
	bytes@3.1.2
	cacheable-request@6.1.0
	cachedir@2.2.0
	call-bind@1.0.2
	caller-callsite@2.0.0
	caller-path@2.0.0
	callsites@3.1.0
	camel-case@4.1.2
	camelcase-keys@4.2.0
	camelcase@5.3.1
	caniuse-api@3.0.0
	caniuse-lite@1.0.30001296
	case-sensitive-paths-webpack-plugin@2.4.0
	caw@2.0.1
	chalk@4.1.2
	chardet@0.7.0
	charenc@0.0.2
	chokidar@3.5.3
	chownr@2.0.0
	chrome-trace-event@1.0.3
	chromium-pickle-js@0.2.0
	ci-info@2.0.0
	clean-css@5.3.1
	cli-boxes@2.2.1
	cli-cursor@2.1.0
	cli-highlight@2.1.11
	cli-spinners@2.6.1
	cli-truncate@2.1.0
	cli-width@2.2.1
	clipboardy@2.3.0
	cliui@7.0.4
	clone-deep@4.0.1
	clone-response@1.0.2
	clone@1.0.4
	color-convert@2.0.1
	color-name@1.1.4
	colord@2.9.3
	colorette@2.0.19
	colors@1.0.3
	combined-stream@1.0.8
	commander@2.20.3
	comment-json@2.4.2
	commitizen@4.2.4
	commondir@1.0.1
	compare-func@2.0.0
	compare-version@0.1.2
	compare-versions@4.1.3
	compressible@2.0.18
	compression@1.7.4
	concat-map@0.0.1
	concat-stream@1.6.2
	config-chain@1.1.13
	configstore@5.0.1
	connect-history-api-fallback@2.0.0
	consolidate@0.15.1
	content-disposition@0.5.4
	content-type@1.0.4
	conventional-changelog-angular@5.0.13
	conventional-changelog-atom@2.0.8
	conventional-changelog-codemirror@2.0.8
	conventional-changelog-conventionalcommits@4.6.3
	conventional-changelog-core@4.2.4
	conventional-changelog-ember@2.0.9
	conventional-changelog-eslint@3.0.9
	conventional-changelog-express@2.0.6
	conventional-changelog-jquery@3.0.11
	conventional-changelog-jshint@2.0.9
	conventional-changelog-preset-loader@2.3.4
	conventional-changelog-writer@5.0.1
	conventional-changelog@3.1.25
	conventional-commit-types@3.0.0
	conventional-commits-filter@2.0.7
	conventional-commits-parser@3.2.4
	convert-source-map@1.8.0
	cookie-signature@1.0.6
	cookie@0.5.0
	copy-to@2.0.1
	copy-webpack-plugin@9.1.0
	core-js-compat@3.27.0
	core-js@3.27.1
	core-util-is@1.0.3
	cosmiconfig-typescript-loader@1.0.2
	cosmiconfig@5.2.1
	crc@3.8.0
	crc32@0.2.2
	create-require@1.1.1
	cross-spawn@7.0.3
	crypt@0.0.2
	crypto-random-string@2.0.0
	css-declaration-sorter@6.3.1
	css-loader@6.7.3
	css-minimizer-webpack-plugin@3.4.1
	css-parse@2.0.0
	css-select@4.2.1
	css-tree@1.1.3
	css-what@5.1.0
	css@2.2.4
	cssesc@3.0.0
	cssnano-preset-default@5.2.13
	cssnano-utils@3.1.0
	cssnano@5.1.14
	csstype@2.6.21
	currently-unhandled@0.4.1
	cz-conventional-changelog@3.2.0
	cz-customizable@6.3.0
	dargs@7.0.0
	data-uri-to-buffer@3.0.1
	dateformat@3.0.3
	dayjs@1.11.7
	debug@4.3.3
	decamelize-keys@1.1.0
	decamelize@1.2.0
	decode-uri-component@0.2.0
	decompress-response@3.3.0
	decompress-tar@4.1.1
	decompress-tarbz2@4.1.1
	decompress-targz@4.1.1
	decompress-unzip@4.0.1
	decompress@4.2.1
	dedent@0.7.0
	deep-extend@0.6.0
	deep-is@0.1.4
	deepmerge@1.5.2
	default-gateway@6.0.3
	default-shell@1.0.1
	default-user-agent@1.0.0
	defaults@1.0.3
	defer-to-connect@1.1.3
	define-lazy-prop@2.0.0
	define-properties@1.1.3
	degenerator@3.0.2
	delayed-stream@1.0.0
	depd@2.0.0
	destroy@1.2.0
	detect-file@1.0.0
	detect-indent@6.0.0
	detect-node@2.1.0
	diff@4.0.2
	digest-header@1.0.0
	dir-compare@2.4.0
	dir-glob@3.0.1
	dmg-builder@23.3.3
	dmg-license@1.0.11
	dns-equal@1.0.0
	dns-packet@5.4.0
	doctrine@2.1.0
	dom-converter@0.2.0
	dom-serializer@1.3.2
	domelementtype@2.2.0
	domhandler@4.3.0
	domutils@2.8.0
	dot-case@3.0.4
	dot-prop@5.3.0
	dotenv-expand@5.1.0
	dotenv@16.0.1
	download-git-repo@3.0.2
	download@7.1.0
	duplexer@0.1.2
	duplexer3@0.1.4
	easy-stack@1.0.1
	editor@1.0.0
	ee-first@1.1.1
	ejs@2.7.4
	electron-builder@23.3.3
	electron-devtools-installer@3.2.0
	electron-osx-sign@0.6.0
	electron-publish@23.3.3
	electron-to-chromium@1.4.284
	electron@16.0.6
	element-plus@2.2.28
	emoji-regex@8.0.0
	emojis-list@3.0.0
	encodeurl@1.0.2
	end-of-stream@1.4.4
	enhanced-resolve@5.12.0
	entities@2.2.0
	env-paths@2.2.1
	error-ex@1.3.2
	error-stack-parser@2.0.6
	es-abstract@1.19.1
	es-module-lexer@0.9.3
	es-to-primitive@1.2.1
	es6-error@4.1.1
	escalade@3.1.1
	escape-goat@2.1.1
	escape-html@1.0.3
	escape-string-regexp@1.0.5
	escodegen@1.14.3
	eslint-config-standard@16.0.3
	eslint-import-resolver-custom-alias@1.3.0
	eslint-import-resolver-node@0.3.6
	eslint-module-utils@2.7.2
	eslint-plugin-es@3.0.1
	eslint-plugin-import@2.25.4
	eslint-plugin-n@15.6.0
	eslint-plugin-node@11.1.0
	eslint-plugin-promise@5.2.0
	eslint-plugin-vue@9.8.0
	eslint-scope@5.1.1
	eslint-utils@3.0.0
	eslint-visitor-keys@3.3.0
	eslint-webpack-plugin@3.2.0
	eslint@8.31.0
	espree@9.4.1
	esprima@4.0.1
	esquery@1.4.0
	esrecurse@4.3.0
	estraverse@5.3.0
	estree-walker@2.0.2
	esutils@2.0.3
	etag@1.8.1
	event-pubsub@4.3.0
	eventemitter3@4.0.7
	events@3.3.0
	execa@1.0.0
	expand-tilde@2.0.2
	express@4.18.2
	ext-list@2.2.2
	ext-name@5.0.0
	extend-shallow@2.0.1
	external-editor@3.1.0
	extract-zip@1.7.0
	extsprintf@1.4.1
	fast-deep-equal@3.1.3
	fast-glob@3.2.9
	fast-json-stable-stringify@2.1.0
	fast-levenshtein@2.0.6
	fastq@1.13.0
	faye-websocket@0.11.4
	fd-slicer@1.1.0
	fflate@0.7.3
	figures@2.0.0
	file-entry-cache@6.0.1
	file-type@5.2.0
	file-uri-to-path@2.0.0
	filelist@1.0.2
	filename-reserved-regex@2.0.0
	filenamify@2.1.0
	fill-range@7.0.1
	finalhandler@1.2.0
	find-cache-dir@3.3.2
	find-config@1.0.0
	find-node-modules@2.1.2
	find-root@1.1.0
	find-up@2.1.0
	findup-sync@4.0.0
	flat-cache@3.0.4
	flatted@3.2.4
	follow-redirects@1.5.10
	fork-ts-checker-webpack-plugin@6.5.2
	form-data@4.0.0
	formstream@1.1.1
	forwarded@0.2.0
	fraction.js@4.2.0
	fresh@0.5.2
	from2@2.3.0
	fs-constants@1.0.0
	fs-extra@10.0.0
	fs-minipass@2.1.0
	fs-monkey@1.0.3
	fs.realpath@1.0.0
	fsevents@2.3.2
	ftp@0.3.10
	function-bind@1.1.1
	gensync@1.0.0-beta.2
	get-caller-file@2.0.5
	get-intrinsic@1.1.1
	get-pkg-repo@4.2.1
	get-proxy@2.1.0
	get-stdin@7.0.0
	get-stream@3.0.0
	get-symbol-description@1.0.0
	get-uri@3.0.2
	git-clone@0.1.0
	git-raw-commits@2.0.11
	git-remote-origin-url@2.0.0
	git-semver-tags@4.1.1
	gitconfiglocal@1.0.0
	glob-parent@5.1.2
	glob-to-regexp@0.4.1
	glob@7.2.0
	global-agent@3.0.0
	global-dirs@0.1.1
	global-modules@1.0.0
	global-prefix@1.0.2
	global-tunnel-ng@2.7.1
	globals@11.12.0
	globalthis@1.0.2
	globby@11.1.0
	got@9.6.0
	graceful-fs@4.2.8
	graceful-readlink@1.0.1
	grapheme-splitter@1.0.4
	gzip-size@6.0.0
	handle-thing@2.0.1
	handlebars@4.7.7
	hard-rejection@2.1.0
	has-bigints@1.0.1
	has-flag@4.0.0
	has-own-prop@2.0.0
	has-symbol-support-x@1.4.2
	has-symbols@1.0.2
	has-to-string-tag-x@1.4.1
	has-tostringtag@1.0.0
	has-yarn@2.1.0
	has@1.0.3
	hash-sum@1.0.2
	he@1.2.0
	highlight.js@10.7.3
	homedir-polyfill@1.0.3
	hosted-git-info@4.0.2
	hpack.js@2.1.6
	html-entities@2.3.3
	html-minifier-terser@6.1.0
	html-tags@2.0.0
	html-webpack-plugin@5.5.0
	htmlparser2@6.1.0
	http-cache-semantics@4.1.0
	http-deceiver@1.2.7
	http-errors@2.0.0
	http-parser-js@0.5.5
	http-proxy-agent@4.0.1
	http-proxy-middleware@2.0.6
	http-proxy@1.18.1
	https-proxy-agent@5.0.0
	human-signals@2.1.0
	humanize-ms@1.2.1
	husky@3.1.0
	iconv-corefoundation@1.1.7
	iconv-lite@0.4.24
	icss-utils@5.1.0
	ieee754@1.2.1
	ignore@5.2.0
	image-size@0.8.3
	immediate@3.0.6
	import-fresh@3.3.0
	import-lazy@2.1.0
	imurmurhash@0.1.4
	indent-string@3.2.0
	inflight@1.0.6
	inherits@2.0.4
	ini@1.3.8
	inquirer@6.5.2
	internal-slot@1.0.3
	into-stream@3.1.0
	ip@1.1.8
	ipaddr.js@2.0.1
	is-arrayish@0.2.1
	is-bigint@1.0.4
	is-binary-path@2.1.0
	is-boolean-object@1.1.2
	is-buffer@1.1.6
	is-callable@1.2.4
	is-ci@3.0.1
	is-core-module@2.11.0
	is-date-object@1.0.5
	is-directory@0.3.1
	is-docker@2.2.1
	is-extendable@0.1.1
	is-extglob@2.1.1
	is-file-esm@1.0.0
	is-fullwidth-code-point@3.0.0
	is-glob@4.0.3
	is-installed-globally@0.4.0
	is-interactive@1.0.0
	is-natural-number@4.0.1
	is-negative-zero@2.0.2
	is-npm@5.0.0
	is-number-object@1.0.6
	is-number@7.0.0
	is-obj@2.0.0
	is-object@1.0.2
	is-path-inside@3.0.3
	is-plain-obj@1.1.0
	is-plain-object@2.0.4
	is-promise@2.2.2
	is-regex@1.1.4
	is-retry-allowed@1.2.0
	is-shared-array-buffer@1.0.1
	is-stream@1.1.0
	is-string@1.0.7
	is-symbol@1.0.4
	is-text-path@1.0.1
	is-typedarray@1.0.0
	is-unicode-supported@0.1.0
	is-utf8@0.2.1
	is-weakref@1.0.2
	is-windows@1.0.2
	is-wsl@2.2.0
	is-yarn-global@0.3.0
	isarray@1.0.0
	isbinaryfile@4.0.10
	isexe@2.0.0
	isobject@3.0.1
	isurl@1.0.0
	jake@10.8.5
	javascript-stringify@2.1.0
	jest-worker@27.5.1
	joi@17.7.0
	js-message@1.0.7
	js-sdsl@4.2.0
	js-tokens@4.0.0
	js-yaml@4.1.0
	jsesc@0.5.0
	json-buffer@3.0.0
	json-parse-better-errors@1.0.2
	json-parse-even-better-errors@2.3.1
	json-schema-traverse@0.4.1
	json-stable-stringify-without-jsonify@1.0.1
	json-stringify-safe@5.0.1
	json5@1.0.1
	jsonfile@6.1.0
	jsonparse@1.3.1
	JSONStream@1.3.5
	jszip@3.7.1
	keycode@2.2.1
	keyv@3.1.0
	kind-of@6.0.3
	klona@2.0.5
	latest-version@5.1.0
	launch-editor-middleware@2.3.0
	launch-editor@2.3.0
	lazy-val@1.0.5
	levn@0.4.1
	lie@3.3.0
	lilconfig@2.0.6
	lines-and-columns@1.2.4
	load-json-file@4.0.0
	loader-runner@4.3.0
	loader-utils@1.4.0
	locate-path@2.0.0
	lodash-es@4.17.21
	lodash-id@0.14.1
	lodash-unified@1.0.3
	lodash._reinterpolate@3.0.0
	lodash.clonedeep@4.5.0
	lodash.debounce@4.0.8
	lodash.defaultsdeep@4.6.1
	lodash.ismatch@4.4.0
	lodash.kebabcase@4.1.1
	lodash.map@4.6.0
	lodash.mapvalues@4.6.0
	lodash.memoize@4.1.2
	lodash.merge@4.6.2
	lodash.template@4.5.0
	lodash.templatesettings@4.2.0
	lodash.uniq@4.5.0
	lodash@4.17.21
	log-symbols@2.2.0
	log-update@2.3.0
	longest@2.0.1
	loud-rejection@1.6.0
	lowdb@1.0.0
	lower-case@2.0.2
	lowercase-keys@1.0.1
	lru-cache@6.0.0
	magic-string@0.25.9
	make-dir@3.1.0
	make-error@1.3.6
	map-obj@2.0.0
	matcher@3.0.0
	md5@2.3.0
	mdn-data@2.0.14
	media-typer@0.3.0
	memfs@3.4.1
	memoize-one@6.0.0
	meow@8.1.2
	merge-descriptors@1.0.1
	merge-source-map@1.1.0
	merge-stream@2.0.0
	merge@2.1.1
	merge2@1.4.1
	methods@1.1.2
	micromatch@4.0.4
	mime-db@1.51.0
	mime-types@2.1.34
	mime@2.6.0
	mimic-fn@2.1.0
	mimic-response@1.0.1
	min-indent@1.0.1
	mini-css-extract-plugin@2.7.2
	minimalistic-assert@1.0.1
	minimatch@3.0.4
	minimist-options@3.0.2
	minimist@1.2.5
	minipass@3.1.6
	minizlib@2.1.2
	mitt@3.0.0
	mkdirp@0.5.5
	mockdate@3.0.5
	modify-values@1.0.1
	module-alias@2.2.2
	mrmime@1.0.1
	ms@2.1.3
	multicast-dns@7.2.5
	mute-stream@0.0.7
	mz@2.7.0
	nanoid@3.3.4
	natural-compare-lite@1.4.0
	natural-compare@1.4.0
	negotiator@0.6.2
	neo-async@2.6.2
	netmask@2.0.2
	nice-try@1.0.5
	no-case@3.0.4
	node-addon-api@1.7.2
	node-fetch@2.6.7
	node-forge@1.3.1
	node-releases@2.0.8
	normalize-package-data@2.5.0
	normalize-path@3.0.0
	normalize-range@0.1.2
	normalize-url@4.5.1
	normalize-wheel-es@1.2.0
	npm-conf@1.1.3
	npm-run-path@2.0.2
	nth-check@2.0.1
	number-is-nan@1.0.1
	object-assign@4.1.1
	object-inspect@1.12.0
	object-keys@1.1.1
	object.assign@4.1.2
	object.values@1.1.5
	obuf@1.1.2
	on-finished@2.4.1
	on-headers@1.0.2
	once@1.4.0
	onetime@5.1.2
	open@8.4.0
	opencollective-postinstall@2.0.3
	opener@1.5.2
	optionator@0.9.1
	ora@3.4.0
	os-homedir@1.0.2
	os-name@1.0.3
	os-tmpdir@1.0.2
	osx-release@1.1.0
	p-cancelable@1.1.0
	p-event@2.3.1
	p-finally@1.0.0
	p-is-promise@1.1.0
	p-limit@2.3.0
	p-locate@2.0.0
	p-retry@4.6.2
	p-timeout@2.0.1
	p-try@2.2.0
	pac-proxy-agent@5.0.0
	pac-resolver@5.0.1
	package-json@6.5.0
	pako@1.0.11
	param-case@3.0.4
	parent-module@1.0.1
	parse-json@4.0.0
	parse-passwd@1.0.0
	parse5-htmlparser2-tree-adapter@6.0.1
	parse5@5.1.1
	parseurl@1.3.3
	pascal-case@3.1.2
	path-exists@3.0.0
	path-is-absolute@1.0.1
	path-key@2.0.1
	path-parse@1.0.7
	path-to-regexp@0.1.7
	path-type@4.0.0
	pause-stream@0.0.11
	pend@1.2.0
	picgo@1.5.0
	picocolors@1.0.0
	picomatch@2.3.1
	pify@3.0.0
	pinkie-promise@2.0.1
	pinkie@2.0.4
	pkg-dir@4.2.0
	playwright-core@1.29.1
	please-upgrade-node@3.2.0
	plist@3.0.4
	portfinder@1.0.28
	postcss-calc@8.2.4
	postcss-colormin@5.3.0
	postcss-convert-values@5.1.3
	postcss-discard-comments@5.1.2
	postcss-discard-duplicates@5.1.0
	postcss-discard-empty@5.1.1
	postcss-discard-overridden@5.1.0
	postcss-loader@6.2.1
	postcss-merge-longhand@5.1.7
	postcss-merge-rules@5.1.3
	postcss-minify-font-values@5.1.0
	postcss-minify-gradients@5.1.1
	postcss-minify-params@5.1.4
	postcss-minify-selectors@5.2.1
	postcss-modules-extract-imports@3.0.0
	postcss-modules-local-by-default@4.0.0
	postcss-modules-scope@3.0.0
	postcss-modules-values@4.0.0
	postcss-normalize-charset@5.1.0
	postcss-normalize-display-values@5.1.0
	postcss-normalize-positions@5.1.1
	postcss-normalize-repeat-style@5.1.1
	postcss-normalize-string@5.1.0
	postcss-normalize-timing-functions@5.1.0
	postcss-normalize-unicode@5.1.1
	postcss-normalize-url@5.1.0
	postcss-normalize-whitespace@5.1.1
	postcss-ordered-values@5.1.3
	postcss-reduce-initial@5.1.1
	postcss-reduce-transforms@5.1.0
	postcss-selector-parser@6.0.11
	postcss-svgo@5.1.0
	postcss-unique-selectors@5.1.1
	postcss-value-parser@4.2.0
	postcss@8.4.20
	prelude-ls@1.1.2
	prepend-http@2.0.0
	prettier@2.5.1
	pretty-error@4.0.0
	process-nextick-args@2.0.1
	progress-webpack-plugin@1.0.16
	progress@2.0.3
	proto-list@1.2.4
	proxy-addr@2.0.7
	proxy-agent@5.0.0
	proxy-from-env@1.1.0
	pseudomap@1.0.2
	pump@3.0.0
	punycode@2.1.1
	pupa@2.1.1
	q@1.5.1
	qiniu@7.8.0
	qrcode.vue@3.3.3
	query-string@5.1.1
	queue-microtask@1.2.3
	queue@6.0.1
	quick-lru@1.1.0
	randombytes@2.1.0
	range-parser@1.2.1
	raw-body@2.5.1
	rc@1.2.8
	read-config-file@6.2.0
	read-pkg-up@3.0.0
	read-pkg@5.2.0
	readable-stream@2.3.7
	readdirp@3.6.0
	redent@2.0.0
	regenerate-unicode-properties@10.1.0
	regenerate@1.4.2
	regenerator-runtime@0.10.5
	regenerator-transform@0.15.1
	regexpp@3.2.0
	regexpu-core@5.2.2
	registry-auth-token@4.2.1
	registry-url@5.1.0
	regjsgen@0.7.1
	regjsparser@0.9.1
	relateurl@0.2.7
	renderkid@3.0.0
	repeat-string@1.6.1
	require-directory@2.1.1
	require-from-string@2.0.2
	requires-port@1.0.0
	resolve-dir@1.0.1
	resolve-from@5.0.0
	resolve-global@1.0.0
	resolve-url@0.2.1
	resolve@1.21.0
	responselike@1.0.2
	restore-cursor@2.0.0
	retry@0.13.1
	reusify@1.0.4
	rimraf@3.0.2
	roarr@2.15.4
	run-async@2.4.1
	run-node@1.0.0
	run-parallel@1.2.0
	rxjs@6.6.7
	safe-buffer@5.2.1
	safer-buffer@2.1.2
	sanitize-filename@1.6.3
	sax@1.2.4
	schema-utils@4.0.0
	seek-bzip@1.0.6
	select-hose@2.0.0
	selfsigned@2.1.1
	semver-compare@1.0.0
	semver-diff@3.1.1
	semver@6.3.0
	send@0.18.0
	serialize-error@7.0.1
	serialize-javascript@6.0.0
	serve-index@1.9.1
	serve-static@1.15.0
	set-immediate-shim@1.0.1
	setprototypeof@1.2.0
	shallow-clone@3.0.1
	shebang-command@1.2.0
	shebang-loader@0.0.1
	shebang-regex@1.0.0
	shell-env@0.3.0
	shell-path@2.1.0
	shell-quote@1.7.3
	side-channel@1.0.4
	signal-exit@3.0.6
	sirv@1.0.19
	slash@3.0.0
	slice-ansi@3.0.0
	smart-buffer@4.2.0
	sockjs@0.3.24
	socks-proxy-agent@5.0.1
	socks@2.7.1
	sort-keys-length@1.0.1
	sort-keys@1.1.2
	source-map-js@1.0.2
	source-map-resolve@0.5.3
	source-map-support@0.5.21
	source-map-url@0.4.1
	source-map@0.6.1
	sourcemap-codec@1.4.8
	spdx-correct@3.1.1
	spdx-exceptions@2.3.0
	spdx-expression-parse@3.0.1
	spdx-license-ids@3.0.11
	spdy-transport@3.0.0
	spdy@4.0.2
	split@1.0.1
	split2@2.2.0
	sprintf-js@1.0.3
	ssri@8.0.1
	stable@0.1.8
	stackframe@1.2.0
	stat-mode@1.0.0
	statuses@2.0.1
	steno@0.4.4
	strict-uri-encode@1.1.0
	string_decoder@1.1.1
	string-width@4.2.3
	string.prototype.trimend@1.0.4
	string.prototype.trimstart@1.0.4
	strip-ansi@6.0.1
	strip-bom@3.0.0
	strip-dirs@2.1.0
	strip-eof@1.0.0
	strip-final-newline@2.0.0
	strip-indent@2.0.0
	strip-json-comments@3.1.1
	strip-outer@1.0.1
	stylehacks@5.1.1
	stylus-loader@3.0.2
	stylus@0.54.8
	sumchecker@3.0.1
	supports-color@5.5.0
	supports-preserve-symlinks-flag@1.0.0
	svg-tags@1.0.0
	svgo@2.8.0
	tapable@2.2.1
	tar-stream@1.6.2
	tar@6.1.11
	temp-file@3.4.0
	temp@0.9.4
	terser-webpack-plugin@5.3.6
	terser@5.16.1
	text-extensions@1.9.0
	text-table@0.2.0
	thenify-all@1.6.0
	thenify@3.3.1
	thread-loader@3.0.4
	through@2.3.8
	through2@2.0.5
	thunky@1.1.0
	timed-out@4.0.1
	tmp-promise@3.0.3
	tmp@0.0.33
	to-buffer@1.1.1
	to-fast-properties@2.0.0
	to-readable-stream@1.0.0
	to-regex-range@5.0.1
	toidentifier@1.0.1
	totalist@1.1.0
	tr46@0.0.3
	trim-newlines@2.0.0
	trim-off-newlines@1.0.3
	trim-repeated@1.0.0
	truncate-utf8-bytes@1.0.2
	ts-loader@9.4.2
	ts-node@10.4.0
	tsconfig-paths@3.12.0
	tslib@2.4.1
	tsutils@3.21.0
	tunnel-agent@0.6.0
	tunnel@0.0.6
	type-check@0.3.2
	type-fest@0.20.2
	type-is@1.6.18
	typedarray-to-buffer@3.1.5
	typedarray@0.0.6
	typescript@4.5.4
	uglify-js@3.14.5
	unbox-primitive@1.0.1
	unbzip2-stream@1.4.3
	unescape@1.0.1
	unicode-canonical-property-names-ecmascript@2.0.0
	unicode-match-property-ecmascript@2.0.0
	unicode-match-property-value-ecmascript@2.1.0
	unicode-property-aliases-ecmascript@2.0.0
	unique-string@2.0.0
	universalify@2.0.0
	unpipe@1.0.0
	unzip-crx-3@0.2.0
	update-browserslist-db@1.0.10
	update-notifier@5.1.0
	uri-js@4.4.1
	urix@0.1.0
	url-parse-lax@3.0.0
	url-to-options@1.0.1
	urllib@2.40.0
	user-home@2.0.0
	utf8-byte-length@1.0.4
	util-deprecate@1.0.2
	utila@0.4.0
	utility@1.17.0
	utils-merge@1.0.1
	uuid@8.3.2
	uuidv4@6.2.12
	validate-npm-package-license@3.0.4
	vary@1.1.2
	verror@1.10.1
	vm2@3.9.13
	vue-cli-plugin-electron-builder@3.0.0-alpha.4
	vue-demi@0.13.11
	vue-eslint-parser@9.1.0
	vue-hot-reload-api@2.3.4
	vue-loader@17.0.1
	vue-router@4.1.6
	vue-style-loader@4.1.3
	vue-template-es2015-compiler@1.9.1
	vue@3.2.45
	vue3-lazyload@0.3.6
	vue3-photo-preview@0.2.9
	watchpack@2.4.0
	wbuf@1.7.3
	wcwidth@1.0.1
	webidl-conversions@3.0.1
	webpack-bundle-analyzer@4.7.0
	webpack-chain@6.5.1
	webpack-dev-middleware@5.3.3
	webpack-dev-server@4.11.1
	webpack-merge@5.8.0
	webpack-sources@3.2.3
	webpack-virtual-modules@0.4.6
	webpack@5.75.0
	websocket-driver@0.7.4
	websocket-extensions@0.1.4
	whatwg-fetch@3.6.2
	whatwg-url@5.0.0
	when@3.6.4
	which-boxed-primitive@1.0.2
	which@1.3.1
	widest-line@3.1.0
	wildcard@2.0.0
	win-release@1.1.1
	word-wrap@1.2.3
	wordwrap@1.0.0
	wrap-ansi@7.0.0
	wrappy@1.0.2
	write-file-atomic@4.0.1
	ws@7.5.9
	xdg-basedir@4.0.0
	xml-name-validator@4.0.0
	xmlbuilder@15.1.1
	xregexp@2.0.0
	xtend@4.0.2
	y18n@5.0.8
	yaku@0.16.7
	yallist@4.0.0
	yaml@1.10.2
	yargs-parser@20.2.9
	yargs@16.2.0
	yauzl@2.10.0
	yn@3.1.1
	yocto-queue@0.1.0
	yorkie@2.0.0
)

yarn_set_globals
yarn_src_unpack
yarn_src_prepare

# License of the package.  This must match the name of file(s) in the
# licenses/ directory.  For complex license combination see the developer
# docs on gentoo.org for details.
LICENSE="MIT"

# The SLOT variable is used to tell Portage if it's OK to keep multiple
# versions of the same package installed at the same time.  For example,
# if we have a libfoo-1.2.2 and libfoo-1.3.2 (which is not compatible
# with 1.2.2), it would be optimal to instruct Portage to not remove
# libfoo-1.2.2 if we decide to upgrade to libfoo-1.3.2.  To do this,
# we specify SLOT="1.2" in libfoo-1.2.2 and SLOT="1.3" in libfoo-1.3.2.
# emerge clean understands SLOTs, and will keep the most recent version
# of each SLOT and remove everything else.
# Note that normal applications should use SLOT="0" if possible, since
# there should only be exactly one version installed at a time.
# Do not use SLOT="", because the SLOT variable must not be empty.
SLOT="0"

# Using KEYWORDS, we can record masking information *inside* an ebuild
# instead of relying on an external package.mask file.  Right now, you
# should set the KEYWORDS variable for every ebuild so that it contains
# the names of all the architectures with which the ebuild works.
# All of the official architectures can be found in the arch.list file
# which is in the profiles/ directory.  Usually you should just set this
# to "~amd64".  The ~ in front of the architecture indicates that the
# package is new and should be considered unstable until testing proves
# its stability.  So, if you've confirmed that your ebuild works on
# amd64 and ppc, you'd specify:
# KEYWORDS="~amd64 ~ppc"
# Once packages go stable, the ~ prefix is removed.
# For binary packages, use -* and then list the archs the bin package
# exists for.  If the package was for an x86 binary package, then
# KEYWORDS would be set like this: KEYWORDS="-* x86"
# Do not use KEYWORDS="*"; this is not valid in an ebuild context.
KEYWORDS="~amd64"

# Comprehensive list of any and all USE flags leveraged in the ebuild,
# with some exceptions, e.g., ARCH specific flags like "amd64" or "ppc".
# Not needed if the ebuild doesn't use any USE flags.
IUSE=""

# A space delimited list of portage features to restrict. man 5 ebuild
# for details.  Usually not needed.
#RESTRICT="strip"

# Run-time dependencies. Must be defined to whatever this depends on to run.
# Example:
#    ssl? ( >=dev-libs/openssl-1.0.2q:0= )
#    >=dev-lang/perl-5.24.3-r1
# It is advisable to use the >= syntax show above, to reflect what you
# had installed on your system when you tested the package.  Then
# other users hopefully won't be caught without the right version of
# a dependency.
#RDEPEND=""

# Build-time dependencies that need to be binary compatible with the system
# being built (CHOST). These include libraries that we link against.
# The below is valid if the same run-time depends are required to compile.
#DEPEND="${RDEPEND}"
#DEPEND="sys-apps/yarn"

# Build-time dependencies that are executed during the emerge process, and
# only need to be present in the native build system (CBUILD). Example:
#BDEPEND="virtual/pkgconfig"


# The following src_configure function is implemented as default by portage, so
# you only need to call it if you need a different behaviour.
#src_configure() {
	# Most open-source packages use GNU autoconf for configuration.
	# The default, quickest (and preferred) way of running configure is:
	#econf
	#
	# You could use something similar to the following lines to
	# configure your package before compilation.  The "|| die" portion
	# at the end will stop the build process if the command fails.
	# You should use this at the end of critical commands in the build
	# process.  (Hint: Most commands are critical, that is, the build
	# process should abort if they aren't successful.)
	#./configure \
	#	--host=${CHOST} \
	#	--prefix=/usr \
	#	--infodir=/usr/share/info \
	#	--mandir=/usr/share/man || die
	# Note the use of --infodir and --mandir, above. This is to make
	# this package FHS 2.2-compliant.  For more information, see
	#   https://wiki.linuxfoundation.org/lsb/fhs
#}

# The following src_compile function is implemented as default by portage, so
# you only need to call it, if you need different behaviour.
#src_compile() {
	# emake is a script that calls the standard GNU make with parallel
	# building options for speedier builds (especially on SMP systems).
	# Try emake first.  It might not work for some packages, because
	# some makefiles have bugs related to parallelism, in these cases,
	# use emake -j1 to limit make to a single process.  The -j1 is a
	# visual clue to others that the makefiles have bugs that have been
	# worked around.

	#emake
#}

# The following src_install function is implemented as default by portage, so
# you only need to call it, if you need different behaviour.
#src_install() {
	# You must *personally verify* that this trick doesn't install
	# anything outside of DESTDIR; do this by reading and
	# understanding the install part of the Makefiles.
	# This is the preferred way to install.
	#emake DESTDIR="${D}" install

	# When you hit a failure with emake, do not just use make. It is
	# better to fix the Makefiles to allow proper parallelization.
	# If you fail with that, use "emake -j1", it's still better than make.

	# For Makefiles that don't make proper use of DESTDIR, setting
	# prefix is often an alternative.  However if you do this, then
	# you also need to specify mandir and infodir, since they were
	# passed to ./configure as absolute paths (overriding the prefix
	# setting).
	#emake \
	#	prefix="${D}"/usr \
	#	mandir="${D}"/usr/share/man \
	#	infodir="${D}"/usr/share/info \
	#	libdir="${D}"/usr/$(get_libdir) \
	#	install
	# Again, verify the Makefiles!  We don't want anything falling
	# outside of ${D}.
#}


src_compile() {
	cd ${S} || die
	yarn_src_compile || die "compile error"
	#NODE_OPTIONS=--openssl-legacy-provider yarn electron:build --dir "${S}" || die "compile error"
}

src_install() {
	#dodir "/usr/share/picgo"
	#dodir "/usr/bin/picgo"
	#insinto "/usr/share/picgo"
	#doins -r dist_electron/linux-unpacked/*
	#ln -s "${ED}/usr/share/picgo/picgo" "${ED}/usr/bin/picgo"
	yarn_src_install || die "install error"
}
