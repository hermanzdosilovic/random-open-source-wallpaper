import web
import requests
import requests_cache
import random

urls = ("/.*", "hello")
app = web.application(urls, globals())

requests_cache.install_cache("github_cache")

class hello:
    def GET(self):
        web.header("Cache-Control", "no-cache, max-age=0, must-revalidate, no-store")
        r = requests.get("https://api.github.com/repos/hermanzdosilovic/random-open-source-wallpaper/contents/images")
        web.redirect(random.choice(r.json())["download_url"])

    if __name__ == "__main__":
        app.run()
