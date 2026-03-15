function unproxy
    set -e all_proxy
    set -e http_proxy
    set -e https_proxy
    echo "🛑 Proxy OFF: 代理已关闭，回到直连。"
end
