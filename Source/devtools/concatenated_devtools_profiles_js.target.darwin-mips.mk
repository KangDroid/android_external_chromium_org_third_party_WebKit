# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := GYP
LOCAL_MODULE := third_party_WebKit_Source_devtools_concatenated_devtools_profiles_js_gyp
LOCAL_MODULE_STEM := concatenated_devtools_profiles_js
LOCAL_MODULE_SUFFIX := .stamp
LOCAL_MODULE_TAGS := optional
gyp_intermediate_dir := $(call local-intermediates-dir)
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared)

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES :=

### Rules for action "concatenate_devtools_profiles_js":
$(gyp_shared_intermediate_dir)/resources/inspector/ProfilesPanel.js: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/resources/inspector/ProfilesPanel.js: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/resources/inspector/ProfilesPanel.js: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/resources/inspector/ProfilesPanel.js: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/resources/inspector/ProfilesPanel.js: $(LOCAL_PATH)/third_party/WebKit/Source/devtools/scripts/inline_js_imports.py $(LOCAL_PATH)/third_party/WebKit/Source/devtools/front_end/BottomUpProfileDataGridTree.js $(LOCAL_PATH)/third_party/WebKit/Source/devtools/front_end/CPUProfileView.js $(LOCAL_PATH)/third_party/WebKit/Source/devtools/front_end/CSSSelectorProfileView.js $(LOCAL_PATH)/third_party/WebKit/Source/devtools/front_end/FlameChart.js $(LOCAL_PATH)/third_party/WebKit/Source/devtools/front_end/HeapSnapshot.js $(LOCAL_PATH)/third_party/WebKit/Source/devtools/front_end/HeapSnapshotDataGrids.js $(LOCAL_PATH)/third_party/WebKit/Source/devtools/front_end/HeapSnapshotGridNodes.js $(LOCAL_PATH)/third_party/WebKit/Source/devtools/front_end/HeapSnapshotLoader.js $(LOCAL_PATH)/third_party/WebKit/Source/devtools/front_end/HeapSnapshotProxy.js $(LOCAL_PATH)/third_party/WebKit/Source/devtools/front_end/HeapSnapshotView.js $(LOCAL_PATH)/third_party/WebKit/Source/devtools/front_end/HeapSnapshotWorkerDispatcher.js $(LOCAL_PATH)/third_party/WebKit/Source/devtools/front_end/JSHeapSnapshot.js $(LOCAL_PATH)/third_party/WebKit/Source/devtools/front_end/NativeHeapSnapshot.js $(LOCAL_PATH)/third_party/WebKit/Source/devtools/front_end/NativeMemorySnapshotView.js $(LOCAL_PATH)/third_party/WebKit/Source/devtools/front_end/ProfileDataGridTree.js $(LOCAL_PATH)/third_party/WebKit/Source/devtools/front_end/ProfilesPanel.js $(LOCAL_PATH)/third_party/WebKit/Source/devtools/front_end/ProfileLauncherView.js $(LOCAL_PATH)/third_party/WebKit/Source/devtools/front_end/TopDownProfileDataGridTree.js $(LOCAL_PATH)/third_party/WebKit/Source/devtools/front_end/CanvasProfileView.js $(GYP_TARGET_DEPENDENCIES)
	@echo "Gyp action: third_party_WebKit_Source_devtools_devtools_gyp_concatenated_devtools_profiles_js_target_concatenate_devtools_profiles_js ($@)"
	$(hide)cd $(gyp_local_path)/third_party/WebKit/Source/devtools; mkdir -p $(gyp_shared_intermediate_dir)/resources/inspector; python scripts/inline_js_imports.py front_end/ProfilesPanel.js front_end "$(gyp_shared_intermediate_dir)/resources/inspector/ProfilesPanel.js"



GYP_GENERATED_OUTPUTS := \
	$(gyp_shared_intermediate_dir)/resources/inspector/ProfilesPanel.js

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

### Rules for final target.
# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: third_party_WebKit_Source_devtools_concatenated_devtools_profiles_js_gyp

# Alias gyp target name.
.PHONY: concatenated_devtools_profiles_js
concatenated_devtools_profiles_js: third_party_WebKit_Source_devtools_concatenated_devtools_profiles_js_gyp

LOCAL_MODULE_PATH := $(PRODUCT_OUT)/gyp_stamp
LOCAL_UNINSTALLABLE_MODULE := true

include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): $(LOCAL_ADDITIONAL_DEPENDENCIES)
	$(hide) echo "Gyp timestamp: $@"
	$(hide) mkdir -p $(dir $@)
	$(hide) touch $@