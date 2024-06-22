fx_version 'cerulean'
games { 'gta5' }
author 'author'
client_scripts {
    'client/*.lua'
}

server_scripts {

}

files({
    "web/dist/**",
})

ui_page("web/dist/index.html")

-- files({
--     "web/**",
-- })

-- ui_page("http://localhost:5173")
