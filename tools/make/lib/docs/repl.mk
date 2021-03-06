#/
# @license Apache-2.0
#
# Copyright (c) 2017 The Stdlib Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#/

# TARGETS #

# Generate REPL docs.
#
# This target generates REPL documentation.

repl-docs: repl-help repl-examples repl-aliases repl-alias2pkg repl-pkg2alias repl-alias2related repl-pkg2related

.PHONY: repl-docs


# Generate REPL help.
#
# This target generates REPL help documentation.

repl-help: $(NODE_MODULES) $(SRC_DIR)/@stdlib/repl/help/scripts/build.js
	$(QUIET) $(NODE) "$(SRC_DIR)/@stdlib/repl/help/scripts/build.js"

.PHONY: repl-help


# Aggregate REPL examples.
#
# This target aggregates REPL examples.

repl-examples: $(NODE_MODULES) $(SRC_DIR)/@stdlib/repl/code-blocks/scripts/build.js
	$(QUIET) $(NODE) "$(SRC_DIR)/@stdlib/repl/code-blocks/scripts/build.js"

.PHONY: repl-examples


# Aggregate REPL aliases.
#
# This target aggregates REPL aliases.

repl-aliases: $(NODE_MODULES) $(SRC_DIR)/@stdlib/namespace/aliases/scripts/build.js
	$(QUIET) $(NODE) "$(SRC_DIR)/@stdlib/namespace/aliases/scripts/build.js"

.PHONY: repl-aliases


# Build the mapping between REPL aliases and package names.
#
# This target rebuilds the REPL database.

repl-alias2pkg: $(NODE_MODULES) $(SRC_DIR)/@stdlib/namespace/alias2pkg/scripts/build.js
	$(QUIET) $(NODE) "$(SRC_DIR)/@stdlib/namespace/alias2pkg/scripts/build.js"

.PHONY: repl-alias2pkg


# Build the mapping between REPL package names and aliases.
#
# This target rebuilds the REPL database.

repl-pkg2alias: $(NODE_MODULES) $(SRC_DIR)/@stdlib/namespace/pkg2alias/scripts/build.js
	$(QUIET) $(NODE) "$(SRC_DIR)/@stdlib/namespace/pkg2alias/scripts/build.js"

.PHONY: repl-pkg2alias


# Build the mapping between REPL aliases and related aliases.
#
# This target rebuilds the REPL database.

repl-alias2related: $(NODE_MODULES) $(SRC_DIR)/@stdlib/namespace/alias2related/scripts/build.js
	$(QUIET) $(NODE) "$(SRC_DIR)/@stdlib/namespace/alias2related/scripts/build.js"

.PHONY: repl-alias2related


# Build the mapping between REPL package names and related packages.
#
# This target rebuilds the REPL database.

repl-pkg2related: $(NODE_MODULES) $(SRC_DIR)/@stdlib/namespace/pkg2related/scripts/build.js
	$(QUIET) $(NODE) "$(SRC_DIR)/@stdlib/namespace/pkg2related/scripts/build.js"

.PHONY: repl-pkg2related
