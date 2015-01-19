function shorten
    set url $argv[1]
    if test ! "$url"
        echo "No URL specified." ^&1
        return 1
    end

    set result (curl --progress-bar \
        https://www.googleapis.com/urlshortener/v1/url \
        -H 'Content-Type: application/json' \
        -d '{"longUrl": "'$url'"}' \
        | grep 'id' | awk '{ print $2 }' | tr -d '"' | tr -d ',')

    echo -n $result | pbcopy
    echo -n $result
end

