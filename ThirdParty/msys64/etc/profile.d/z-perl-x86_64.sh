# This script is meant to be installed in /etc/profile.d and sourced
# *after* any PATH modifications done by MSYS Perl.

[ "${MSYSTEM_PREFIX}" != "/mingw64" ] && return 0

if [ "$(echo -n "$PATH" | wc -l)" -gt 0 ]; then
    echo "/etc/profile.d/z-perl-x86_64.sh: ERROR: PATH contains line break, skipping PATH setup" >&2
    return 1
fi

modify_path() {
    local mypath="/mingw64/bin/site_perl/5.38.5:/mingw64/bin/vendor_perl:/mingw64/bin/core_perl"

    # Remove MSYS perl modules from PATH to avoid conflicts
    local newpath="$(echo -n "${PATH}" \
        | gawk -v mypath="${mypath}" '
            BEGIN { RS = ":" }
            /^\/usr\/bin\/.*_perl$/ { next }
            { printf "%s", (++i > 1 ? ":" : "") $0 }
            mypath && /^\/mingw64\/bin$/ { printf "%s", ":" mypath }
        '
    )"
    [ -z "${newpath}" ] && return 1

    PATH="${newpath}"
}

modify_path

unset modify_path

# vim: set ts=4 sw=4 et ai syn=sh:
