"
" Install Clojure:
" https://clojure.org/guides/getting_started
"
" Ensure CoC is set up and configured, see coc.vim
"
" Ensure CoC has the coc-conjure plugin
"
" Install clojure-lsp binary in $PATH, get from
" https://github.com/clojure-lsp/clojure-lsp/releases
"
" Configure CoC clojure-lsp language-server
"
" -- Conjure  setup --
" Start a repl:
" clojure -Sdeps '{:deps {nrepl/nrepl {:mvn/version "0.7.0"} cider/cider-nrepl {:mvn/version "0.25.2"}}}' -m nrepl.cmdline --middleware '["cider.nrepl/cider-middleware"]'
"
"...or write an alias in ~/.clojure/deps.edn:
" ```
" {:aliases {:cider-server {:extra-deps {nrepl/nrepl {:mvn/version "0.7.0"}
"                                        cider/cider-nrepl {:mvn/version "0.25.2"}}
"                           :main-opts ["-m" "nrepl.cmdline"]}}}
" ```
"
" -- use the above alias
" $ clojure -A:cider-server
function! CoCDisableSuggestions()
  " (CoC) do not provide completion suggestions
  let b:coc_suggest_disable = 1
  " (CoC) disable trigger - this avoids a battle between deoplete and CoC
  " over completeopt and mappings.
  call coc#config('suggest.autoTrigger', 'none')
endfunction

" works but is gnarly, enabled globally.
let g:deoplete#enable_at_startup = 1
function! ConfigureClojure()
  " call deoplete#custom#buffer_option('auto_complete', v:true)
  call CoCDisableSuggestions()

  set completeopt-=preview

  let g:float_preview#docked = 0
  let g:float_preview#max_width = 80
  let g:float_preview#max_height = 40
endfunction

autocmd FileType clojure call ConfigureClojure()
