# OTB/Man Up Workshop

Small sinatra app to filter holidays

<h3>To Run:</h3>
- `bundle install`
- `bundle exec rackup`
- open a browser at `localhost:9292`

You should see this:
<img src="https://raw.githubusercontent.com/cookiefission/holidays-workshop/feature/update-readme/images/holidays.png" />

<h3>TODO:</h3>
This data is loaded from a JSON file.

At the moment, it doesn't do much. It needs a simple search feature, to be able to filter down holidays by name.

<strong>Hint:</strong> You can send parameters to the app via the URL, like so:
`localhost:9292/?q=algarve`

... and access it in `app.rb` with `params[:q]`
