#!/usr/bin/env fish
function proxy
	set -Ux all_proxy http://127.0.0.1:7890
	set -Ux http_proxy http://127.0.0.1:7890
	set -Ux https_proxy http://127.0.0.1:7890
	set -Ux ALL_PROXY http://127.0.0.1:7890
	set -Ux HTTP_PROXY http://127.0.0.1:7890
	set -Ux HTTPS_PROXY http://127.0.0.1:7890
end

function noproxy
	set -e all_proxy
	set -e http_proxy
	set -e https_proxy
	set -e ALL_PROXY
	set -e HTTP_PROXY
	set -e HTTPS_PROXY
end

function vim
	proxy
	command nvim $argv
end
