from django import template
register = template.Library()

@register.inclusion_tag("category_tree_part.html")
def category_tree(cate, error):
    categories = cate.categories.all()
    return {'categories': categories, 'pubcategories': categories, 'error': error}

@register.inclusion_tag("category.html")
def category_books(cate, error):
    books = cate.book_set.all()
    return {'books': books, 'error': error}
    
@register.inclusion_tag("category_select.html")
def category_select(cate):
    category = cate.categories.all()
    return {'category': category}