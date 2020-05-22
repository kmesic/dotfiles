function fish_greeting
    set --local welcome "Welcome Kenan"
    set --local message "Type `help` for instructions on how to use fish. Type fish_config for web configuration interface."
    figlet $welcome | lolcat
    cowsay -f tux $message | lolcat
end
