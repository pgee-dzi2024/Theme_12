from django.db import models


# СКЛАДОВЕ
class Stock(models.Model):
    name = models.CharField('Наименование', max_length=100, default='', blank=True)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Склад'
        verbose_name_plural = 'Складове'


# Артикули (стоки).
class Item(models.Model):
    name = models.CharField('Наименование', max_length=100, default='', blank=True)
    quantity = models.IntegerField('Количество', default=0)
    measure = models.CharField('Мярка', max_length=15, default='', blank=True)
    stock = models.ForeignKey(Stock, verbose_name='Склад', on_delete=models.CASCADE, null=True, related_name='stc')

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Артикул'
        verbose_name_plural = 'Артикули'


# Операции - заглавна част
class OperationTitle(models.Model):
    type = models.SmallIntegerField('Тип', default=0, help_text='0 - доставка, 1 - изписване')
    date = models.CharField('Дата', max_length=15, default='', blank=True)
    partner1 = models.TextField('Доставчик/Получател', default='', blank=True)
    partner2 = models.CharField('Приел/Предал', max_length=100, default='', blank=True)
    doc = models.CharField('Документ', max_length=100, default='', blank=True)

    def __str__(self):
        op = 'Доставка'
        if self.type != 0:
            op = 'Изписване'
        return f'{op} №{self.id}, {self.doc}/{self.date}'

    class Meta:
        verbose_name = 'Операция'
        verbose_name_plural = 'Операции'


# Операции - списък артикули
class OperationItem(models.Model):
    operation = models.ForeignKey(OperationTitle, verbose_name='Операция', on_delete=models.CASCADE, null=True, related_name='op')
    item = models.ForeignKey(Item, verbose_name='артикул', on_delete=models.CASCADE, null=True, related_name='it')
    quantity = models.IntegerField('Количество', default=0)
    measure = models.CharField('Мярка', max_length=15, default='', blank=True)

    def __str__(self):
        return str(self.quantity)

    class Meta:
        verbose_name = 'Артикул от доставка/изписване'
        verbose_name_plural = 'Артикули от доставка/изписване'

