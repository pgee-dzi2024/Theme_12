from django.contrib import admin
from .models import *

admin.site.register(Stock)
admin.site.register(Item)
admin.site.register(OperationTitle)


@admin.register(OperationItem)
class ImportantV(admin.ModelAdmin):
    list_display = ('id', 'item', 'quantity', 'measure', 'operation', )
    list_display_links = ('id', )
    list_filter = ('operation', )