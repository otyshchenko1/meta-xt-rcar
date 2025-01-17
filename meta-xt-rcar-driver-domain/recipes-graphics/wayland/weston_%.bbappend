FILESEXTRAPATHS_append := ":${THISDIR}/${PN}"

SRC_URI_append = "file://weston-seats.rules \
    file://weston \
"

FILES_${PN} += " \
    ${sysconfdir}/udev/rules.d/weston-seats.rules \
    ${sysconfdir}/default/weston \
"

do_install_append() {
    install -d ${D}${sysconfdir}/udev/rules.d
    install -m 0644 ${WORKDIR}/weston-seats.rules ${D}${sysconfdir}/udev/rules.d/weston-seats.rules
    install -d ${D}${sysconfdir}/default
    install -m 0644 ${WORKDIR}/weston ${D}${sysconfdir}/default/weston
}
