if exists('g:multpurposetabkey')
    finish
endif
let g:multpurposetabkey = 1

function! MultiPurposeTab()
    let col = col('.') - 1
    if !col || getline('.')[col -1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <tab> <c-r>=MultiPurposeTab()<cr>
