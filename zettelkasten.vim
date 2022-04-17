" ZETTELKASTEN CONFIGURATION

" Change working directory to my zettelkasten and open index
nnoremap <leader>zi :e $NOTES_DIR/index-202202270044.md<CR>:cd $NOTES_DIR<CR>:pwd<CR>
" mnemonic: zettel->index


" Change directory to directory of current file
nnoremap <leader>cd :cd %:h<CR>:pwd<CR>


" Quickly create a new entry into the zettelkasten 
command! -nargs=1 NewZettel :execute ":e" fnameescape($NOTES_DIR . "/<args>-") . strftime("%Y%m%d%H%M") . ".md" 
nnoremap <leader>zz :NewZettel
" mnemonic: zettel->zettel


" Create a new note in a vertically stacked window
command! -nargs=1 SplitZettel :execute ":split" fnameescape($NOTES_DIR . "/<args>-") . strftime("%Y%m%d%H%M") . ".md"
nnoremap <leader>zv :SplitZettel
" mnemonic: zettel->vertical


" Generate ctags
nnoremap <leader>tt :!ctags -R . <CR>
" mnemonic: tags->tags


" Update tag list in index.md 
" function GenerateTags()
" :execute ':%read !sed ''/^\!_/d'' $NOTES_DIR/tags | sed ''/^\@/d'' $NOTES_DIR/index-202202270044.md | awk ''{ print "@" $1 }'' | sort -u'
" endfunction

command! GenerateTags :execute "%read !sed '/^\!_/d' $NOTES_DIR/tags | awk '{ print "@" $1 }' | sort -u"
nnoremap <leader>tg GenerateTags <CR>
" mnemonic: tags->generate


" Look for notes
command! -nargs=1 Ngrep grep! -r "<args>" $NOTES_DIR
nnoremap <leader>zs :Ngrep
" mnemonic: zettel->search


" Open a navigation panel for grep'd  notes
command! Vlist botright vertical copen | vertical resize 50
nnoremap <leader>zl :Vlist<CR>
" mnemonic: zettel->list
