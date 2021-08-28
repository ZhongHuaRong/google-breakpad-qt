BREAKPAD_PATH=$$PWD/breakpad
INCLUDEPATH += $$BREAKPAD_PATH/src
DESTDIR = $$OUT_PWD/3rdparty/lib
 
mac: {
  HEADERS += $$BREAKPAD_PATH/src/client/mac/handler/exception_handler.h
  HEADERS += $$BREAKPAD_PATH/src/client/mac/crash_generation/crash_generation_client.h
  HEADERS += $$BREAKPAD_PATH/src/client/mac/crash_generation/crash_generation_server.h
  HEADERS += $$BREAKPAD_PATH/src/client/mac/crash_generation/client_info.h
  HEADERS += $$BREAKPAD_PATH/src/client/mac/handler/minidump_generator.h
  HEADERS += $$BREAKPAD_PATH/src/client/mac/handler/dynamic_images.h
  HEADERS += $$BREAKPAD_PATH/src/client/mac/handler/breakpad_nlist_64.h
  HEADERS += $$BREAKPAD_PATH/src/client/mac/handler/mach_vm_compat.h
  HEADERS += $$BREAKPAD_PATH/src/client/minidump_file_writer.h
  HEADERS += $$BREAKPAD_PATH/src/client/minidump_file_writer-inl.h
  HEADERS += $$BREAKPAD_PATH/src/common/mac/macho_utilities.h
  HEADERS += $$BREAKPAD_PATH/src/common/mac/byteswap.h
  HEADERS += $$BREAKPAD_PATH/src/common/mac/MachIPC.h
  HEADERS += $$BREAKPAD_PATH/src/common/mac/scoped_task_suspend-inl.h
  HEADERS += $$BREAKPAD_PATH/src/common/mac/file_id.h
  HEADERS += $$BREAKPAD_PATH/src/common/mac/macho_id.h
  HEADERS += $$BREAKPAD_PATH/src/common/mac/macho_walker.h
  HEADERS += $$BREAKPAD_PATH/src/common/mac/macho_utilities.h
  HEADERS += $$BREAKPAD_PATH/src/common/mac/bootstrap_compat.h
  HEADERS += $$BREAKPAD_PATH/src/common/mac/string_utilities.h
  HEADERS += $$BREAKPAD_PATH/src/common/linux/linux_libc_support.h
  HEADERS += $$BREAKPAD_PATH/src/common/string_conversion.h
  HEADERS += $$BREAKPAD_PATH/src/common/md5.h
  HEADERS += $$BREAKPAD_PATH/src/common/using_std_string.h
  HEADERS += $$BREAKPAD_PATH/src/common/convert_UTF.h
  HEADERS += $$BREAKPAD_PATH/src/google_breakpad/common/minidump_exception_mac.h
  HEADERS += $$BREAKPAD_PATH/src/google_breakpad/common/breakpad_types.h
  HEADERS += $$BREAKPAD_PATH/src/google_breakpad/common/minidump_format.h
  HEADERS += $$BREAKPAD_PATH/src/google_breakpad/common/minidump_size.h
  HEADERS += $$BREAKPAD_PATH/src/third_party/lss/linux_syscall_support.h
 
  SOURCES += $$BREAKPAD_PATH/src/client/mac/handler/exception_handler.cc
  SOURCES += $$BREAKPAD_PATH/src/client/mac/crash_generation/crash_generation_client.cc
  SOURCES += $$BREAKPAD_PATH/src/client/mac/crash_generation/crash_generation_server.cc
  SOURCES += $$BREAKPAD_PATH/src/client/mac/handler/minidump_generator.cc
  SOURCES += $$BREAKPAD_PATH/src/client/mac/handler/dynamic_images.cc
  SOURCES += $$BREAKPAD_PATH/src/client/mac/handler/breakpad_nlist_64.cc
  SOURCES += $$BREAKPAD_PATH/src/client/minidump_file_writer.cc
  SOURCES += $$BREAKPAD_PATH/src/common/mac/macho_id.cc
  SOURCES += $$BREAKPAD_PATH/src/common/mac/macho_walker.cc
  SOURCES += $$BREAKPAD_PATH/src/common/mac/macho_utilities.cc
  SOURCES += $$BREAKPAD_PATH/src/common/mac/string_utilities.cc
  SOURCES += $$BREAKPAD_PATH/src/common/mac/file_id.cc
  SOURCES += $$BREAKPAD_PATH/src/common/mac/MachIPC.mm
  SOURCES += $$BREAKPAD_PATH/src/common/mac/bootstrap_compat.cc
  SOURCES += $$BREAKPAD_PATH/src/common/md5.cc
  SOURCES += $$BREAKPAD_PATH/src/common/string_conversion.cc
  SOURCES += $$BREAKPAD_PATH/src/common/linux/linux_libc_support.cc
  SOURCES += $$BREAKPAD_PATH/src/common/convert_UTF.cc
  LIBS += /System/Library/Frameworks/CoreFoundation.framework/Versions/A/CoreFoundation
  LIBS += /System/Library/Frameworks/CoreServices.framework/Versions/A/CoreServices
  QMAKE_CXXFLAGS+=-g

  handler.files = $$BREAKPAD_PATH/src/client/mac/handler/*.h
  handler.path = $$OUT_PWD/3rdparty/include/breakpad/client/mac/handler

  crash.files = $$BREAKPAD_PATH/src/client/mac/crash_generation/*.h
  crash.path = $$OUT_PWD/3rdparty/include/breakpad/client/mac/crash_generation

  common_mac.files = $$BREAKPAD_PATH/src/common/mac/macho_utilities.h \
                     $$BREAKPAD_PATH/src/common/mac/basictypes.h \
                     $$BREAKPAD_PATH/src/common/mac/MachIPC.h \
                     $$BREAKPAD_PATH/src/common/mac/scoped_task_suspend-inl.h \
                     $$BREAKPAD_PATH/src/common/mac/file_id.h \
                     $$BREAKPAD_PATH/src/common/mac/macho_id.h \
                     $$BREAKPAD_PATH/src/common/mac/macho_walker.h \
                     $$BREAKPAD_PATH/src/common/mac/macho_utilities.h \
                     $$BREAKPAD_PATH/src/common/mac/bootstrap_compat.h \
                     $$BREAKPAD_PATH/src/common/mac/string_utilities.h
  common_mac.path = $$OUT_PWD/3rdparty/include/breakpad/common/mac

  common_linux.files = $$BREAKPAD_PATH/src/common/linux/linux_libc_support.h
  common_linux.path = $$OUT_PWD/3rdparty/include/breakpad/common/linux

  common.files = $$BREAKPAD_PATH/src/common/using_std_string.h \
                 $$BREAKPAD_PATH/src/common/basictypes.h \
                 $$BREAKPAD_PATH/src/common/memory_range.h \
                 $$BREAKPAD_PATH/src/common/memory_allocator.h \
                 $$BREAKPAD_PATH/src/common/string_conversion.h \
                 $$BREAKPAD_PATH/src/common/scoped_ptr.h \
                 $$BREAKPAD_PATH/src/common/convert_UTF.h \
                 $$BREAKPAD_PATH/src/common/md5.h
  common.path = $$OUT_PWD/3rdparty/include/breakpad/common

  google_breakpad.files = $$BREAKPAD_PATH/src/google_breakpad/common/*.h
  google_breakpad.path = $$OUT_PWD/3rdparty/include/breakpad/google_breakpad/common


  client.files = $$BREAKPAD_PATH/src/client/minidump_file_writer-inl.h \
                 $$BREAKPAD_PATH/src/client/minidump_file_writer.h
  client.path = $$OUT_PWD/3rdparty/include/breakpad/client

  lss.files = $$BREAKPAD_PATH/src/third_party/lss/linux_syscall_support.h
  lss.path = $$OUT_PWD/3rdparty/include/breakpad/third_party/lss

  INSTALLS += common_linux common_mac common client crash handler google_breakpad lss
}
 
linux: {
  HEADERS += $$BREAKPAD_PATH/src/client/linux/handler/exception_handler.h
  HEADERS += $$BREAKPAD_PATH/src/client/linux/crash_generation/crash_generation_client.h
  HEADERS += $$BREAKPAD_PATH/src/client/linux/handler/minidump_descriptor.h
  HEADERS += $$BREAKPAD_PATH/src/client/linux/minidump_writer/minidump_writer.h
  HEADERS += $$BREAKPAD_PATH/src/client/linux/minidump_writer/line_reader.h
  HEADERS += $$BREAKPAD_PATH/src/client/linux/minidump_writer/linux_dumper.h
  HEADERS += $$BREAKPAD_PATH/src/client/linux/minidump_writer/linux_ptrace_dumper.h
  HEADERS += $$BREAKPAD_PATH/src/client/linux/minidump_writer/directory_reader.h
  HEADERS += $$BREAKPAD_PATH/src/client/linux/log/log.h
  HEADERS += $$BREAKPAD_PATH/src/client/minidump_file_writer-inl.h
  HEADERS += $$BREAKPAD_PATH/src/client/minidump_file_writer.h
  HEADERS += $$BREAKPAD_PATH/src/common/linux/linux_libc_support.h
  HEADERS += $$BREAKPAD_PATH/src/common/linux/eintr_wrapper.h
  HEADERS += $$BREAKPAD_PATH/src/common/linux/ignore_ret.h
  HEADERS += $$BREAKPAD_PATH/src/common/linux/file_id.h
  HEADERS += $$BREAKPAD_PATH/src/common/linux/memory_mapped_file.h
  HEADERS += $$BREAKPAD_PATH/src/common/linux/safe_readlink.h
  HEADERS += $$BREAKPAD_PATH/src/common/linux/guid_creator.h
  HEADERS += $$BREAKPAD_PATH/src/common/linux/elfutils.h
  HEADERS += $$BREAKPAD_PATH/src/common/linux/elfutils-inl.h
  HEADERS += $$BREAKPAD_PATH/src/common/linux/breakpad_getcontext.h
  HEADERS += $$BREAKPAD_PATH/src/common/using_std_string.h
  HEADERS += $$BREAKPAD_PATH/src/common/basictypes.h
  HEADERS += $$BREAKPAD_PATH/src/common/memory_range.h
  HEADERS += $$BREAKPAD_PATH/src/common/string_conversion.h
  HEADERS += $$BREAKPAD_PATH/src/common/convert_UTF.h
  HEADERS += $$BREAKPAD_PATH/src/google_breakpad/common/minidump_format.h
  HEADERS += $$BREAKPAD_PATH/src/google_breakpad/common/minidump_size.h
  HEADERS += $$BREAKPAD_PATH/src/google_breakpad/common/breakpad_types.h
  HEADERS += $$BREAKPAD_PATH/src/third_party/lss/linux_syscall_support.h
  
  SOURCES += $$BREAKPAD_PATH/src/client/linux/crash_generation/crash_generation_client.cc
  SOURCES += $$BREAKPAD_PATH/src/client/linux/handler/exception_handler.cc
  SOURCES += $$BREAKPAD_PATH/src/client/linux/handler/minidump_descriptor.cc
  SOURCES += $$BREAKPAD_PATH/src/client/linux/minidump_writer/minidump_writer.cc
  SOURCES += $$BREAKPAD_PATH/src/client/linux/minidump_writer/linux_dumper.cc
  SOURCES += $$BREAKPAD_PATH/src/client/linux/minidump_writer/linux_ptrace_dumper.cc
  SOURCES += $$BREAKPAD_PATH/src/client/linux/log/log.cc
  SOURCES += $$BREAKPAD_PATH/src/client/minidump_file_writer.cc
  SOURCES += $$BREAKPAD_PATH/src/client/linux/microdump_writer/microdump_writer.cc
  SOURCES += $$BREAKPAD_PATH/src/client/linux/dump_writer_common/ucontext_reader.cc
  SOURCES += $$BREAKPAD_PATH/src/client/linux/dump_writer_common/thread_info.cc
  SOURCES += $$BREAKPAD_PATH/src/common/linux/linux_libc_support.cc
  SOURCES += $$BREAKPAD_PATH/src/common/linux/file_id.cc
  SOURCES += $$BREAKPAD_PATH/src/common/linux/memory_mapped_file.cc
  SOURCES += $$BREAKPAD_PATH/src/common/linux/safe_readlink.cc
  SOURCES += $$BREAKPAD_PATH/src/common/linux/guid_creator.cc
  SOURCES += $$BREAKPAD_PATH/src/common/linux/elfutils.cc
  SOURCES += $$BREAKPAD_PATH/src/common/linux/breakpad_getcontext.S
  SOURCES += $$BREAKPAD_PATH/src/common/string_conversion.cc
  SOURCES += $$BREAKPAD_PATH/src/common/convert_UTF.cc
  
  QMAKE_CXXFLAGS+=-g
  
  handler.files = $$BREAKPAD_PATH/src/client/linux/handler/*.h
  handler.path = $$OUT_PWD/3rdparty/include/breakpad/client/linux/handler
  
  crash.files = $$BREAKPAD_PATH/src/client/linux/crash_generation/crash_generation_client.h
  crash.path = $$OUT_PWD/3rdparty/include/breakpad/client/linux/crash_generation
  
  minidump.files = $$BREAKPAD_PATH/src/client/linux/minidump_writer/minidump_writer.h \
                   $$BREAKPAD_PATH/src/client/linux/minidump_writer/line_reader.h \
                   $$BREAKPAD_PATH/src/client/linux/minidump_writer/linux_dumper.h \
                   $$BREAKPAD_PATH/src/client/linux/minidump_writer/linux_ptrace_dumper.h \
                   $$BREAKPAD_PATH/src/client/linux/minidump_writer/directory_reader.h 
  minidump.path = $$OUT_PWD/3rdparty/include/breakpad/client/linux/minidump_writer
  
  log.files = $$BREAKPAD_PATH/src/client/linux/log/log.h
  log.path = $$OUT_PWD/3rdparty/include/breakpad/client/linux/log

  client.files = $$BREAKPAD_PATH/src/client/minidump_file_writer-inl.h \
                 $$BREAKPAD_PATH/src/client/minidump_file_writer.h
  client.path = $$OUT_PWD/3rdparty/include/breakpad/client


  common_linux.files = $$BREAKPAD_PATH/src/common/linux/linux_libc_support.h \
                       $$BREAKPAD_PATH/src/common/linux/eintr_wrapper.h \
                       $$BREAKPAD_PATH/src/common/linux/ignore_ret.h \
                       $$BREAKPAD_PATH/src/common/linux/file_id.h \
                       $$BREAKPAD_PATH/src/common/linux/memory_mapped_file.h \
                       $$BREAKPAD_PATH/src/common/linux/safe_readlink.h \
                       $$BREAKPAD_PATH/src/common/linux/guid_creator.h \
                       $$BREAKPAD_PATH/src/common/linux/elfutils.h \
                       $$BREAKPAD_PATH/src/common/linux/elfutils-inl.h \
                       $$BREAKPAD_PATH/src/common/linux/breakpad_getcontext.h
  common_linux.path = $$OUT_PWD/3rdparty/include/breakpad/common/linux


  common.files = $$BREAKPAD_PATH/src/common/using_std_string.h \
                 $$BREAKPAD_PATH/src/common/basictypes.h \
                 $$BREAKPAD_PATH/src/common/memory_range.h \
                 $$BREAKPAD_PATH/src/common/memory_allocator.h \
                 $$BREAKPAD_PATH/src/common/string_conversion.h \
                 $$BREAKPAD_PATH/src/common/scoped_ptr.h \
                 $$BREAKPAD_PATH/src/common/convert_UTF.h
  common.path = $$OUT_PWD/3rdparty/include/breakpad/common

  google_breakpad.files = $$BREAKPAD_PATH/src/google_breakpad/common/*.h
  google_breakpad.path = $$OUT_PWD/3rdparty/include/breakpad/google_breakpad/common

  dump_writer_common.files = $$BREAKPAD_PATH/src/client/linux/dump_writer_common/*.h
  dump_writer_common.path = $$OUT_PWD/3rdparty/include/breakpad/client/linux/dump_writer_common/

  lss.files = $$BREAKPAD_PATH/src/third_party/lss/linux_syscall_support.h
  lss.path = $$OUT_PWD/3rdparty/include/breakpad/third_party/lss
  
  INSTALLS += common_linux common log client minidump crash handler google_breakpad dump_writer_common lss
}
 
windows: {
  INCLUDEPATH += $$BREAKPAD_PATH/src
  HEADERS += $$BREAKPAD_PATH/src/common/windows/string_utils-inl.h
  HEADERS += $$BREAKPAD_PATH/src/common/windows/guid_string.h
  HEADERS += $$BREAKPAD_PATH/src/client/windows/handler/exception_handler.h
  HEADERS += $$BREAKPAD_PATH/src/client/windows/common/ipc_protocol.h
  HEADERS += $$BREAKPAD_PATH/src/google_breakpad/common/minidump_format.h 
  HEADERS += $$BREAKPAD_PATH/src/google_breakpad/common/breakpad_types.h 
  HEADERS += $$BREAKPAD_PATH/src/client/windows/crash_generation/crash_generation_client.h 
 
  SOURCES += $$BREAKPAD_PATH/src/client/windows/handler/exception_handler.cc
  SOURCES += $$BREAKPAD_PATH/src/common/windows/string_utils.cc
  SOURCES += $$BREAKPAD_PATH/src/common/windows/guid_string.cc
  SOURCES += $$BREAKPAD_PATH/src/client/windows/crash_generation/crash_generation_client.cc 
  
  
  common_windows.files = $$BREAKPAD_PATH/src/common/windows/string_utils-inl.h \
						 $$BREAKPAD_PATH/src/common/windows/guid_string.h		
  common_windows.path = $$OUT_PWD/3rdparty/include/breakpad/common/windows
  

  common.files = $$BREAKPAD_PATH/src/common/scoped_ptr.h
  common.path = $$OUT_PWD/3rdparty/include/breakpad/common

  ipc.files = $$BREAKPAD_PATH/src/client/windows/common/ipc_protocol.h
  ipc.path = $$OUT_PWD/3rdparty/include/breakpad/client/windows/common
  
  crash.files = $$BREAKPAD_PATH/src/client/windows/crash_generation/crash_generation_client.h
  crash.path = $$OUT_PWD/3rdparty/include/breakpad/client/windows/crash_generation
  
  handler.files = $$BREAKPAD_PATH/src/client/windows/handler/exception_handler.h
  handler.path = $$OUT_PWD/3rdparty/include/breakpad/client/windows/handler
  
  google_breakpad.files = $$BREAKPAD_PATH/src/google_breakpad/common/*.h
  google_breakpad.path = $$OUT_PWD/3rdparty/include/breakpad/google_breakpad/common
  
  INSTALLS += common_windows common ipc crash handler google_breakpad
}

TARGET = breakpad
CONFIG += warn_on staticlib
TEMPLATE = lib
