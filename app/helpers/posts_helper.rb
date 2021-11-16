module PostsHelper
    #funkcija
    def display_index_post_links(post)
        capture do #brez capture do nam podatke dvakrat izpise
            concat link_to('Preberi več', post, class: 'stretched-link') #content_tag()je funkcija, ki sprejme najprej kateri tag naredi(:tr), v drugem pa kaj bo not v tem tagu
            #if current_user == post.user
                #concat link_to('Uredi', edit_post_path(post), class: 'stretched-link')
                #concat link_to('Izbriši', post, method: :delete, data: { confirm: 'Are you sure?' }, class: 'stretched-link')
            #end
            #html.html_safe #tega ne potrebujemo če uporabimo concat namesto html+=
        end
    end

    #funkcija
    def display_show_post_links(post)
        capture do 
            if current_user == post.user
                concat link_to 'Izbriši', post, method: :delete, data: { confirm: 'Are you sure?' }
                concat ' | '
                concat link_to 'Edit', edit_post_path(post) #ruby definiramo s #{} ostalo je html
                concat ' | '
            end
            concat link_to 'Back', posts_path
            #html.html_safe
        end
    end
end
