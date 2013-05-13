# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := GYP
LOCAL_MODULE := third_party_WebKit_Source_devtools_concatenated_heap_snapshot_worker_js_gyp
LOCAL_MODULE_STEM := concatenated_heap_snapshot_worker_js
LOCAL_MODULE_SUFFIX := .stamp
LOCAL_MODULE_TAGS := optional
gyp_intermediate_dir := $(call local-intermediates-dir)
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared)

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES :=

### Rules for action "concatenate_heap_snapshot_worker_js":
$(gyp_shared_intermediate_dir)/resources/inspector/HeapSnapshotWorker.js: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/resources/inspector/HeapSnapshotWorker.js: gyp_intermediate_dir := $(GYP_ABS_ANDROID_TOP_DIR)/$(gyp_intermediate_dir)
$(gyp_shared_intermediate_dir)/resources/inspector/HeapSnapshotWorker.js: gyp_shared_intermediate_dir := $(GYP_ABS_ANDROID_TOP_DIR)/$(gyp_shared_intermediate_dir)
$(gyp_shared_intermediate_dir)/resources/inspector/HeapSnapshotWorker.js: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/resources/inspector/HeapSnapshotWorker.js: $(LOCAL_PATH)/third_party/WebKit/Source/devtools/scripts/inline_js_imports.py $(LOCAL_PATH)/third_party/WebKit/Source/devtools/front_end/HeapSnapshotWorker.js $(LOCAL_PATH)/third_party/WebKit/Source/devtools/front_end/HeapSnapshot.js $(LOCAL_PATH)/third_party/WebKit/Source/devtools/front_end/HeapSnapshotLoader.js $(LOCAL_PATH)/third_party/WebKit/Source/devtools/front_end/HeapSnapshotWorkerDispatcher.js $(LOCAL_PATH)/third_party/WebKit/Source/devtools/front_end/JSHeapSnapshot.js $(LOCAL_PATH)/third_party/WebKit/Source/devtools/front_end/utilities.js $(GYP_TARGET_DEPENDENCIES)
	@echo "Gyp action: third_party_WebKit_Source_devtools_devtools_gyp_concatenated_heap_snapshot_worker_js_target_concatenate_heap_snapshot_worker_js ($@)"
	$(hide)cd $(gyp_local_path)/third_party/WebKit/Source/devtools; mkdir -p $(gyp_shared_intermediate_dir)/resources/inspector; python scripts/inline_js_imports.py front_end/HeapSnapshotWorker.js front_end "$(gyp_shared_intermediate_dir)/resources/inspector/HeapSnapshotWorker.js"



GYP_GENERATED_OUTPUTS := \
	$(gyp_shared_intermediate_dir)/resources/inspector/HeapSnapshotWorker.js

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

### Rules for final target.
# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: third_party_WebKit_Source_devtools_concatenated_heap_snapshot_worker_js_gyp

# Alias gyp target name.
.PHONY: concatenated_heap_snapshot_worker_js
concatenated_heap_snapshot_worker_js: third_party_WebKit_Source_devtools_concatenated_heap_snapshot_worker_js_gyp

LOCAL_MODULE_PATH := $(PRODUCT_OUT)/gyp_stamp
LOCAL_UNINSTALLABLE_MODULE := true

include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): $(LOCAL_ADDITIONAL_DEPENDENCIES)
	$(hide) echo "Gyp timestamp: $@"
	$(hide) mkdir -p $(dir $@)
	$(hide) touch $@