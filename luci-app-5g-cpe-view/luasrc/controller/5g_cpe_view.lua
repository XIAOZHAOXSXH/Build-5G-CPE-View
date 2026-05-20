module("luci.controller.5g_cpe_view", package.seeall)

function index()
	entry({"admin", "services", "5g_cpe_view"}, alias("admin", "services", "5g_cpe_view", "main"), _("5G CPE View"), 60)
	entry({"admin", "services", "5g_cpe_view", "main"}, template("5g_cpe_view/main"), _("Overview"), 1)
	entry({"admin", "services", "5g_cpe_view", "save"}, call("action_save"), nil).leaf = true
end

function action_save()
	local ip   = luci.http.formvalue("ip") or "192.168.66.1"
	local port = luci.http.formvalue("port") or "6677"

	if ip == "" then ip = "192.168.66.1" end
	if port == "" then port = "6677" end

	local uci = luci.model.uci.cursor()
	uci:set("5g_cpe_view", "settings", "ip", ip)
	uci:set("5g_cpe_view", "settings", "port", port)
	uci:commit("5g_cpe_view")

	luci.http.prepare_content("application/json")
	luci.http.write_json({ result = "ok" })
end
