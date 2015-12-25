# -*- encoding: utf-8 -*-
from django.db import models
from ckeditor.fields import RichTextField
class Category(models.Model):
    name = models.CharField('Category Name', max_length = 100, blank = False)
    slug = models.SlugField('URL', db_index = True)
    parent = models.ForeignKey('self', related_name='categories', null = True, blank = True)
    true = models.CharField(max_length=60)
    power = models.CharField(max_length=60)
    def __unicode__(self):
        return u'%s %s %s' % (self.name, self.slug, self.power)

class Users(models.Model):
    Username = models.CharField(max_length=60)
    Password = models.CharField(max_length=60)
    Name = models.CharField(max_length=60)
    Age = models.IntegerField()
    Country = models.CharField(max_length=60)
    Email = models.EmailField()
    Concent = models.ManyToManyField(Category)
    def __unicode__(self):
        return u'%s %s %s %s %s %s %s' % (self.Username, self.Name, self.Password, self.Age,self.Country, self.Email, "\n".join([p.name for p in self.Concent.all()]))
    def name(self):
        return u"\n".join([p.name for p in self.Concent.all()])

class Book(models.Model):
    Title = models.CharField(max_length=100)
    UserID = models.ManyToManyField(Users)
    WriteDate = models.DateField(auto_now_add=True)
    Contant = RichTextField('正文')
    Power = models.CharField(max_length=100)
    Type = models.ManyToManyField(Category)
    def __unicode__(self):
        return u'%s %s %s %s %s %s' % (self.Title, "\n".join([p.Username for p in self.UserID.all()]), self.WriteDate, self.Contant, self.Power, "\n".join([p.name for p in self.Type.all()]))
    def Username(self):
        return u"\n".join([p.Username for p in self.UserID.all()])
    def name(self):
        return u"\n".join([p.name for p in self.Type.all()])

class Comment(models.Model):
    comment = models.TextField()
    book = models.ForeignKey(Book)
    commenter = models.CharField(max_length=60)
    datetime = models.DateField(auto_now_add=True)
    def __unicode__(self):
        return u'%s %s %s %s' % (self.comment, self.book, self.commenter, self.datetime)
