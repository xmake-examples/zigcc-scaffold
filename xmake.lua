add_rules("mode.debug", "mode.release")

add_requires("zig")

target("zigcc-scaffold")
    set_kind("binary")
    add_files("src/*.cpp")
    set_toolchains("@zig")

