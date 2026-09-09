-- DMS Window Rules — managed by DankMaterialShell
-- Do not edit manually; changes may be overwritten

-- DMS-RULE: id=dms_rule_0, name=
hl.window_rule({ float = true })

-- DMS-RULE: id=dms_rule_1, name=
hl.window_rule({ float = true })

-- DMS-RULE: id=dms_rule_2, name=
hl.window_rule({ match = { class = "org.gnome.Calculator" }, float = true })

-- DMS-RULE: id=dms_rule_3, name=
hl.window_rule({ match = { class = "jetbrains.*" }, float = true })

-- DMS-RULE: id=dms-floating-windows, name=DMS Floating Windows
hl.window_rule({ match = { class = "^com.danklinux.dms$" }, float = true })
