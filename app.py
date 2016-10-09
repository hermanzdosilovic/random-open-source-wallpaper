import web
import requests
import random

urls = ("/.*", "hello")
app = web.application(urls, globals())

class hello:
    def GET(self):
        web.header("Cache-Control", "no-cache, max-age=0, must-revalidate, no-store")
        r = requests.get("https://api.github.com/repos/hermanzdosilovic/random-open-source-wallpaper/contents/images")
        web.redirect(random.choice(r.json())["download_url"])

    if __name__ == "__main__":
        app.run()
