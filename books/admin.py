# -*- encoding: utf-8 -*-
from django.contrib import admin
from books.models import Users, Category, Book, Comment

class CategoryAdmin(admin.ModelAdmin):
    list_display = ('name', 'slug', 'parent', 'true', 'power')

class UsersAdmin(admin.ModelAdmin):
    list_display = ('Username', 'Name', 'Password', 'Age', 'Country', 'Email', 'name')
    search_fields = ('Name',)
    
class BookAdmin(admin.ModelAdmin):
    list_display = ('Title', 'Username', 'WriteDate', 'Contant', 'Power', 'name')
    ordering = ('WriteDate',)

class CommentAdmin(admin.ModelAdmin):
    list_display = ('comment', 'book', 'commenter', 'datetime')

admin.site.register(Users, UsersAdmin)
admin.site.register(Category, CategoryAdmin)
admin.site.register(Book, BookAdmin)
admin.site.register(Comment, CommentAdmin)