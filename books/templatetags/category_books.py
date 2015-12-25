from django import template
from books.models import Book
from django.template.defaultfilters import stringfilter

register = template.Library()

@register.filter
@stringfilter
def category_book(cate):
    return {'books': Book.objects.all()}