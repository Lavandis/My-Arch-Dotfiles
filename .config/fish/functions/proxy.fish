function proxy
    set -gx all_proxy http://127.0.0.1:7897
    set -gx http_proxy http://127.0.0.1:7897
    set -gx https_proxy http://127.0.0.1:7897
    echo "🚀 Proxy ON (Port 7897): 代理已开启，起飞！"
end
