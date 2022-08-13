_fzf_complete_ssh_notrigger() {
    FZF_COMPLETION_TRIGGER='' _fzf_host_completion
}

complete -o bashdefault -o default -F _fzf_complete_ssh_notrigger ssh

_fzf_complete_kill_notrigger() {
    FZF_COMPLETION_TRIGGER='' _fzf_proc_completion
}

complete -o bashdefault -o default -F _fzf_complete_kill_notrigger kill
