# Test CORS

I'm planning on building a webapp where several of the components are handled by different servers, perhaps under different domains.  My goal is to have one site (A) request a form from another site (B)  and submit information back to B when the user submits the form.

[Cross-site-scripting (XSS)](https://www.acunetix.com/websitesecurity/cross-site-scripting/) is a Bad Thing and XMLHttpRequests normally won't work if the domain of the request isn't the same as the domain that served up the page.  However, it appears that I can use [CORS](https://www.wikiwand.com/en/Cross-origin_resource_sharing) to work around this and make AJAX calls to other domains, so long as those other domains allow it.

I found a gem, [rack-cors](https://github.com/cyu/rack-cors) that will provide the correct headers for CORS to work.  Yay!

This repo represents a few tests I created to see if CORS will do what I need.

Just run

```sh
    docker-compose build ; docker-compose run site1 bundle install ; docker-compose up
```

And visit port 8000 of the docker host machine.
