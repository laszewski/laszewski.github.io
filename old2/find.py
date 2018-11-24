from bs4 import BeautifulSoup


def extract_urls(path):
    try:
        with open(path) as html_file:
            return [
                link.get('href')
                for link in BeautifulSoup(
                    html_file.read()
                ).find_all('a')
            ]
    except IOError:
        return []

result = extract_urls('bib.html')


for r in result:
    if 'googlecode' in r:
        print  r
