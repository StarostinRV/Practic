#############################################################################
# Makefile for building: database
# Generated by qmake (3.1) (Qt 6.1.1)
# Project:  database\database.pro
# Template: app
# Command: A:\License\Qt\6.1.1\mingw81_64\bin\qmake.exe -o Makefile database\database.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug"
#############################################################################

MAKEFILE      = Makefile

EQ            = =

first: debug
install: debug-install
uninstall: debug-uninstall
QMAKE         = A:\License\Qt\6.1.1\mingw81_64\bin\qmake.exe
DEL_FILE      = del
CHK_DIR_EXISTS= if not exist
MKDIR         = mkdir
COPY          = copy /y
COPY_FILE     = copy /y
COPY_DIR      = xcopy /s /q /y /i
INSTALL_FILE  = copy /y
INSTALL_PROGRAM = copy /y
INSTALL_DIR   = xcopy /s /q /y /i
QINSTALL      = A:\License\Qt\6.1.1\mingw81_64\bin\qmake.exe -install qinstall
QINSTALL_PROGRAM = A:\License\Qt\6.1.1\mingw81_64\bin\qmake.exe -install qinstall -exe
DEL_FILE      = del
SYMLINK       = $(QMAKE) -install ln -f -s
DEL_DIR       = rmdir
MOVE          = move
IDC           = idc
IDL           = midl
ZIP           = zip -r -9
DEF_FILE      = 
RES_FILE      = 
SED           = $(QMAKE) -install sed
MOVE          = move
SUBTARGETS    =  \
		debug \
		release


debug: FORCE
	$(MAKE) -f $(MAKEFILE).Debug
debug-make_first: FORCE
	$(MAKE) -f $(MAKEFILE).Debug 
debug-all: FORCE
	$(MAKE) -f $(MAKEFILE).Debug all
debug-clean: FORCE
	$(MAKE) -f $(MAKEFILE).Debug clean
debug-distclean: FORCE
	$(MAKE) -f $(MAKEFILE).Debug distclean
debug-install: FORCE
	$(MAKE) -f $(MAKEFILE).Debug install
debug-uninstall: FORCE
	$(MAKE) -f $(MAKEFILE).Debug uninstall
release: FORCE
	$(MAKE) -f $(MAKEFILE).Release
release-make_first: FORCE
	$(MAKE) -f $(MAKEFILE).Release 
release-all: FORCE
	$(MAKE) -f $(MAKEFILE).Release all
release-clean: FORCE
	$(MAKE) -f $(MAKEFILE).Release clean
release-distclean: FORCE
	$(MAKE) -f $(MAKEFILE).Release distclean
release-install: FORCE
	$(MAKE) -f $(MAKEFILE).Release install
release-uninstall: FORCE
	$(MAKE) -f $(MAKEFILE).Release uninstall

Makefile: database/database.pro A:/License/Qt/6.1.1/mingw81_64/mkspecs/win32-g++/qmake.conf A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/spec_pre.prf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/device_config.prf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/common/sanitize.conf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/common/gcc-base.conf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/common/g++-base.conf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/win32/windows_vulkan_sdk.prf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/common/windows-vulkan.conf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/common/g++-win32.conf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/common/windows-desktop.conf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/qconfig.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_ext_freetype.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_ext_libpng.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_concurrent.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_concurrent_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_core.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_core_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_dbus.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_dbus_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_designer.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_designer_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_designercomponents_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_devicediscovery_support_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_entrypoint_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_fb_support_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_gui.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_gui_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_help.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_help_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_labsanimation.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_labsanimation_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_labsfolderlistmodel.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_labsfolderlistmodel_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_labsqmlmodels.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_labsqmlmodels_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_labssettings.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_labssettings_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_labssharedimage.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_labssharedimage_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_labswavefrontmesh.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_labswavefrontmesh_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_linguist.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_linguist_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_network.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_network_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_opengl.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_opengl_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_openglwidgets.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_openglwidgets_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_packetprotocol_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_printsupport.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_printsupport_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_qml.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_qml_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_qmlcompiler_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_qmldebug_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_qmldom_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_qmllocalstorage.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_qmllocalstorage_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_qmlmodels.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_qmlmodels_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_qmltest.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_qmltest_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_qmlworkerscript.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_qmlworkerscript_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_quick.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_quick_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_quickcontrols2.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_quickcontrols2_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_quickcontrols2impl.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_quickcontrols2impl_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_quicklayouts.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_quicklayouts_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_quickparticles_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_quickshapes_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_quicktemplates2.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_quicktemplates2_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_quickwidgets.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_quickwidgets_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_sql.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_sql_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_svg.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_svg_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_svgwidgets.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_svgwidgets_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_testlib.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_testlib_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_tools_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_uiplugin.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_uitools.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_uitools_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_widgets.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_widgets_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_xml.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_xml_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_zlib_private.pri \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/qt_functions.prf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/qt_config.prf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/win32-g++/qmake.conf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/spec_post.prf \
		.qmake.stash \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/exclusive_builds.prf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/toolchain.prf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/default_pre.prf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/win32/default_pre.prf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/resolve_config.prf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/exclusive_builds_post.prf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/default_post.prf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/qml_debug.prf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/entrypoint.prf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/precompile_header.prf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/warn_on.prf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/qt.prf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/resources_functions.prf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/resources.prf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/moc.prf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/win32/opengl.prf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/uic.prf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/qmake_use.prf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/file_copies.prf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/win32/windows.prf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/testcase_targets.prf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/exceptions.prf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/yacc.prf \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/lex.prf \
		database/database.pro \
		A:/License/Qt/6.1.1/mingw81_64/lib/Qt6Widgets.prl \
		A:/License/Qt/6.1.1/mingw81_64/lib/Qt6Gui.prl \
		A:/License/Qt/6.1.1/mingw81_64/lib/Qt6Core.prl \
		A:/License/Qt/6.1.1/mingw81_64/lib/Qt6EntryPoint.prl \
		A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/build_pass.prf
	$(QMAKE) -o Makefile database\database.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug"
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/spec_pre.prf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/device_config.prf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/common/sanitize.conf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/common/gcc-base.conf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/common/g++-base.conf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/win32/windows_vulkan_sdk.prf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/common/windows-vulkan.conf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/common/g++-win32.conf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/common/windows-desktop.conf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/qconfig.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_ext_freetype.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_ext_libpng.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_concurrent.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_concurrent_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_core.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_core_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_dbus.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_dbus_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_designer.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_designer_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_designercomponents_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_devicediscovery_support_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_entrypoint_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_fb_support_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_gui.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_gui_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_help.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_help_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_labsanimation.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_labsanimation_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_labsfolderlistmodel.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_labsfolderlistmodel_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_labsqmlmodels.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_labsqmlmodels_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_labssettings.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_labssettings_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_labssharedimage.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_labssharedimage_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_labswavefrontmesh.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_labswavefrontmesh_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_linguist.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_linguist_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_network.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_network_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_opengl.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_opengl_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_openglwidgets.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_openglwidgets_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_packetprotocol_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_printsupport.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_printsupport_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_qml.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_qml_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_qmlcompiler_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_qmldebug_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_qmldevtools_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_qmldom_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_qmllocalstorage.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_qmllocalstorage_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_qmlmodels.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_qmlmodels_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_qmltest.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_qmltest_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_qmlworkerscript.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_qmlworkerscript_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_quick.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_quick_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_quickcontrols2.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_quickcontrols2_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_quickcontrols2impl.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_quickcontrols2impl_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_quicklayouts.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_quicklayouts_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_quickparticles_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_quickshapes_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_quicktemplates2.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_quicktemplates2_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_quickwidgets.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_quickwidgets_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_sql.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_sql_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_svg.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_svg_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_svgwidgets.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_svgwidgets_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_testlib.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_testlib_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_tools_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_uiplugin.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_uitools.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_uitools_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_widgets.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_widgets_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_xml.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_xml_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/modules/qt_lib_zlib_private.pri:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/qt_functions.prf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/qt_config.prf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/win32-g++/qmake.conf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/spec_post.prf:
.qmake.stash:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/exclusive_builds.prf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/toolchain.prf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/default_pre.prf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/win32/default_pre.prf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/resolve_config.prf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/exclusive_builds_post.prf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/default_post.prf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/qml_debug.prf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/entrypoint.prf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/precompile_header.prf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/warn_on.prf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/qt.prf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/resources_functions.prf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/resources.prf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/moc.prf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/win32/opengl.prf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/uic.prf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/qmake_use.prf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/file_copies.prf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/win32/windows.prf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/testcase_targets.prf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/exceptions.prf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/yacc.prf:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/lex.prf:
database/database.pro:
A:/License/Qt/6.1.1/mingw81_64/lib/Qt6Widgets.prl:
A:/License/Qt/6.1.1/mingw81_64/lib/Qt6Gui.prl:
A:/License/Qt/6.1.1/mingw81_64/lib/Qt6Core.prl:
A:/License/Qt/6.1.1/mingw81_64/lib/Qt6EntryPoint.prl:
A:/License/Qt/6.1.1/mingw81_64/mkspecs/features/build_pass.prf:
qmake: FORCE
	@$(QMAKE) -o Makefile database\database.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug"

qmake_all: FORCE

make_first: debug-make_first release-make_first  FORCE
all: debug-all release-all  FORCE
clean: debug-clean release-clean  FORCE
distclean: debug-distclean release-distclean  FORCE
	-$(DEL_FILE) Makefile
	-$(DEL_FILE) .qmake.stash

debug-mocclean:
	$(MAKE) -f $(MAKEFILE).Debug mocclean
release-mocclean:
	$(MAKE) -f $(MAKEFILE).Release mocclean
mocclean: debug-mocclean release-mocclean

debug-mocables:
	$(MAKE) -f $(MAKEFILE).Debug mocables
release-mocables:
	$(MAKE) -f $(MAKEFILE).Release mocables
mocables: debug-mocables release-mocables

check: first

benchmark: first
FORCE:

$(MAKEFILE).Debug: Makefile
$(MAKEFILE).Release: Makefile
