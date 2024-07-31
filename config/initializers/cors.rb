Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'localhost:3000',
            # %r{https://workspace-icalialabs-com-recruitment-pr\d+-rcppuzda7a-uc\.a\.run\.app},
            # %r{https://repo-knowledge-frontend-pr\d+-rcppuzda7a-uc\.a\.run\.app},
            '127.0.0.1:3000'

    resource '*', headers: :any, methods: %i[get post patch put delete options head]
  end
end
