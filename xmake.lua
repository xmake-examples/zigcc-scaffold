add_rules("mode.debug", "mode.release")
add_rules("set_mingw_for_zig_on_windows")

add_requires("zig")

rule("set_mingw_for_zig_on_windows")
do
    before_build(function (target)
        if target:toolchains()[1]:config("zig") and target:toolchains()[1]:config("plat")=="windows" then
           target:toolchains()[1]:plat_set("mingw")
        end
    end)
end 
rule_end()

target("zigcc-scaffold")
    set_kind("binary")
    add_files("src/*.cpp")
    set_toolchains("@zig")

