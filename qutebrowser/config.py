config.load_autoconfig()

c.url.searchengines = {
    'DEFAULT': 'https://google.com/search?q={}',
    'g': 'https://google.com/search?q={}',
    'image': 'https://www.startpage.com/do/asearch?cat=pics&cmd=process_search&language=english&query={}&ff=&nj=0',
    'vic': 'https://la.wikipedia.org/w/index.php?search={}&title=Specialis%3AQuaerere',
    'red': 'https://reddit.com/r/{}',
    'wt': 'http://en.wiktionary.org/?search={}',
    'osm': 'http://www.openstreetmap.org/search?query={}',
    'art': 'http://arizona.summon.serialssolutions.com/search?q={}',
    'book': 'http://sabio.library.arizona.edu/search/X?SEARCH={}',
    'lib': 'http://gen.lib.rus.ec/search.php?req={}',
    'tpb': 'http://thepiratebay.org/search/{}',
    'laincat': 'http://lainchan.org/{}/catalog.html',
    'tw': 'https://twitter.com/{}',
    '8': 'https://8ch.net/{}',
    'eb': 'https://ebay.com/sch/{}',
    'etym': 'http://etymonline.com/index.php?allowed_in_frame=0&search={}',
    'ddg': 'https://duckduckgo.com/?q={}&t=ha&iar=images',
    'aw': 'https://wiki.archlinux.org/index.php?title=Special%3ASearch&search={}',
    '4cat': 'https://boards.4chan.org/{}/catalog',
    'lain': 'http://lainchan.org/{}',
    'gw': 'https://wiki.gentoo.org/index.php?title=Special%3ASearch&search={}',
    '8cat': 'https://8ch.net/{}/catalog.html',
    'yt': 'https://www.youtube.com/results?search_query={}',
    'ig': 'https://wiki.installgentoo.com/index.php?search={}&title=Special%3ASearch',
    'w': 'https://www.wikipedia.org/search-redirect.php?family=wikipedia&language=en&search={}&language=en&go=Go',
    '4': 'https://boards.4chan.org/{}',
    'sk': 'https://www.skytorrents.in/search/all/ed/1/?l=en-us&q={}',
    'vw': 'https://wiki.voidlinux.eu/index.php?search={}&title=Special%3ASearch',
    'thw': 'http://www.thinkwiki.org/w/index.php?search={}&title=Special%3ASearch',
    'vw': 'http://vim.wikia.com/wiki/Special:Search?fulltext=Search&query={}',
    'bc': 'https://www.bitchute.com/search?q={}&sort=date_created%20desc',
    'mdbg': 'https://mdbg.net/chinese/dictionary?page=worddict&wdrst=0&wdqb={}',
    'hckn': 'https://hn.algolia.com/?query={}&sort=byPopularity&prefix&page=0&dateRange=all&type=story'
}
