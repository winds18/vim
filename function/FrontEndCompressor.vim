function! FrontEndCompress()
    let s:pwd = expand('%:p:h').'/min'
    let s:nam = expand('%:t:r')
    let s:ext = expand('%:e')
    let s:com = s:pwd.'/'.shellescape(s:nam.'.min.'.s:ext)
    let s:old = expand('%:p:h').'/'.shellescape(s:nam.'.'.s:ext)
    if !isdirectory(s:pwd)
        call mkdir(s:pwd)
    endif
    if s:ext == 'js'
        if executable('uglifyjs')
            let s:jscompressor = 'uglifyjs'
        elseif executable('closure-compiler')
            let s:jscompressor = 'closure-compiler --js'
        elseif executable('closure')
            let s:jscompressor = 'closure --js'
        elseif executable('yuicompressor')
            let s:jscompressor = 'yuicompressor'
        endif
        if exists("s:jscompressor")
            let s:commond = s:jscompressor.' '.s:old.' > '.s:com.' &'
            call system(s:commond)
        else
            echo 'uglifyjs|closure-compiler|closure|yuicompressor外部程序不存在'
        endif
    elseif s:ext == 'css'
        if executable('uglifycss')
            let s:csscompressor = 'uglifycss'
        elseif executable('yuicompressor')
            let s:csscompressor = 'yuicompressor'
        endif
        if exists("s:csscompressor")
            let s:commond = s:csscompressor.' '.s:old.' > '.s:com.' &'
            call system(s:commond)
        else
            echo 'uglifycss|yuicompressor外部程序不存在'
        endif
    elseif s:ext == 'less'
        if executable('lessc')
            let s:lesscompile = 'lessc --clean-css="--compatibility=ie8 --advanced"'
        endif
        if exists("s:lesscompile")
            let s:commond = s:lesscompile.' '.s:old.' > '.substitute(s:com,'less','css','g').' &'
            call system(s:commond)
        else
            echo 'lessc外部程序不存在'
        endif
    elseif s:ext == 'scss'
        if executable('sass')
            let s:sasscompile = 'sass --style compressed'
        endif
        if exists("s:sasscompile")
            let s:commond = s:sasscompile.' '.s:old.' '.substitute(s:com,'scss','css','g').' &'
            call system(s:commond)
        else
            echo 'sass外部程序不存在'
        endif
    endif
endfunction
"autocmd FileWritePost,BufWritePost *.css,*.less,*.js,*.scss : call FrontEndCompress()
