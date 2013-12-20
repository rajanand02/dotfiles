Requires Vim 7.3+ and [cURL][1].

For Windows users without cURL, download the binaries from curl.haxx.se and put it in your system's PATH or in the same directory as gvim.exe.

## Usage

* Select some CSS code in visual mode then type either `:Prefixer`, `:Prefixer1` or `:Prefixer2`.
* Without selecting anything, in normal mode type `:Prefixer` `:Prefixer1a` or `:Prefixer2a` to process entire file; or `:Prefixer1` to process current line.
* When using `:Prefixer` or `:Prefixer2` in visual mode you must select entire code blocks i.e. from `{` to `}`.
* If you have [repeat.vim][2] installed, you can use `.` to repeat last `Prefixer` `Prefixer1` `Prefixer1a` or `Prefixer2` `Prefixer2a` command.

`:Prefixer` uses [Prefixer][3].  
`:Prefixer1` and `:Prefixer1a` use [Prefixr][4].  
`:Prefixer2` and `:Prefixer2a` use [PrefixMyCSS][5].

## Related plugins:

* __prefixer.vim__ » Add vendor prefixes to CSS3 properties.
* __[html_emogrifier.vim][6]__ » Convert HTML page with linked CSS to HTML email with inline CSS.
* __[cssbaseline.vim][7]__ » Build a CSS baseline (empty code blocks) from HTML code.


[1]: http://curl.haxx.se/download.html#Win32
[2]: http://www.vim.org/scripts/script.php?script_id=2136
[3]: http://cssprefixer.appspot.com/
[4]: http://prefixr.com/
[5]: http://prefixmycss.com/
[6]: https://github.com/kien/html_emogrifier.vim
[7]: https://github.com/kien/cssbaseline.vim
