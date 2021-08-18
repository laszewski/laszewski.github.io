import click
from cloudmesh.common.util import readfile
from cloudmesh.common.util import writefile

@click.command()
@click.option('--label', help='label to be changed')
@click.option('--tags', default="class book", help='List of tags')
@click.option('--categories', help='list of categories')
@click.option('--projects', help='list of projects')
@click.option('--view', help='view the entry', is_flag=True)


def convert(label, tags, categories, projects, view):
    """Simple program that greets NAME for a total of COUNT times."""

    filename = f"content/publication/{label}/index.md"
    content = readfile(filename)
    if tags: 
        content = content.replace("tags: []", f'tags: ["{tags}"]') 
    if categories: 
        content = content.replace("categories: []", f'categories: ["{categories}"]') 
    if projects: 
        content = content.replace("projects: []", f'projects: ["{projects}"]')
    writefile(filename, content)
    if view:
        print(content)
    
if __name__ == '__main__':
    convert()
