" vim: sw=4 ts=4 et
" Set of commands usefull for day-to-day working.

if exists('g:loaded_a1black#misc') || &compatible
    finish
endif
let g:loaded_a1black#misc=1

command! -bar -bang -nargs=+ Wreg :call a1black#misc#write_reg(<bang>0, <f-args>)
command! -bar -bang Stripws :call a1black#misc#strip_whitespaces(<bang>0)

nnoremap <silent> <Plug>(a1black#misc#n#stripws) :call a1black#misc#strip_whitespaces(0)<CR>
xnoremap <silent> <Plug>(a1black#misc#v#stripws) :<C-U>call a1black#misc#strip_whitespaces(0)<CR>
