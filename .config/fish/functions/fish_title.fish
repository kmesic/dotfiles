function fish_title
    if not set -q INSIDE_EMACS
        echo "$hostname"
    end
end
