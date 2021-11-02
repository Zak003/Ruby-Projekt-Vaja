module ApplicationHelper
    def display_session_links
        capture do #capture pomeni da nebo dvakrat prikazovalo stvari, ker imamo dve znački <%= (application.html.erb)
            if user_signed_in?
                concat link_to "Uredi profil", edit_user_registration_path
                concat " "
                concat link_to "Odjava", destroy_user_session_path, method: :delete
            else
                concat link_to "Prijava", new_user_session_path
                concat " "
                concat link_to "Registracija", new_user_registration_path
                concat " "
                #html.html_safe #returnamo html, ce uporabimo concat tega ne potrebujemo
            end
         end
    end
end
