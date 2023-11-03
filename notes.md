To reset postgres DB Via Render

curl --request POST 'https://api.render.com/v1/services/<service-ID>/jobs' \
    --header 'Authorization: Bearer API_TOKEN' \
    --header 'Content-Type: application/json' \
    --data-raw '{
        "startCommand": "rake db:reset"
    }'


  Fix for Render deploy error: Key must be 16 bytes
    https://stackoverflow.com/questions/54064347/rails-during-asset-precompile-throws-error-key-must-be-16-bytes