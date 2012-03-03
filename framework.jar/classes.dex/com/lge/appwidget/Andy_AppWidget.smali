.class public Lcom/lge/appwidget/Andy_AppWidget;
.super Ljava/lang/Object;
.source "Andy_AppWidget.java"



# static fields
.field private static final TAG:Ljava/lang/String; = "AppWidget"



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPreviewClassName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "packageName"
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 112
    const-string v0, "com.lge.sizechangable.favoritecontacts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_c0

    .line 113
    packed-switch p1, :pswitch_data_13e

    .line 128
    :cond_c
    :goto_c
    const-string v0, "com.lge.sizechangable.calendar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_17

    .line 129
    packed-switch p1, :pswitch_data_146

    .line 136
    :cond_17
    const-string v0, "com.lge.sizechangable.message"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_22

    .line 137
    packed-switch p1, :pswitch_data_14e

    .line 144
    :cond_22
    const-string v0, "com.lge.sizechangable.bookmarks"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_2d

    .line 145
    packed-switch p1, :pswitch_data_156

    .line 153
    :cond_2d
    const-string v0, "com.lge.sizechangable.musicwidget.widget"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_38

    .line 154
    packed-switch p1, :pswitch_data_15e

    .line 162
    :cond_38
    const-string v0, "com.lge.variousstyle.anlaogclock"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_43

    .line 163
    packed-switch p1, :pswitch_data_166

    .line 177
    :cond_43
    const-string v0, "com.lge.variousstyle.digitalclock"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_4e

    .line 178
    packed-switch p1, :pswitch_data_174

    .line 183
    :cond_4e
    const-string v0, "com.lge.sizechangable.news"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_59

    .line 184
    packed-switch p1, :pswitch_data_17a

    .line 191
    :cond_59
    const-string v0, "com.lge.sizechangable.finance"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_64

    .line 192
    packed-switch p1, :pswitch_data_182

    .line 202
    :cond_64
    const-string v0, "com.lge.sizechangable.photoframe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_6f

    .line 203
    packed-switch p1, :pswitch_data_18c

    .line 213
    :cond_6f
    const-string v0, "com.lge.sizechangable.photoalbum"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_7a

    .line 214
    packed-switch p1, :pswitch_data_196

    .line 221
    :cond_7a
    const-string v0, "com.lge.sizechangable.whatsnew"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_85

    .line 222
    packed-switch p1, :pswitch_data_19e

    .line 230
    :cond_85
    const-string v0, "com.lge.sizechangable.smartbox"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_90

    .line 231
    packed-switch p1, :pswitch_data_1a6

    .line 239
    :cond_90
    const-string v0, "com.lge.sizechangable.weather"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_9b

    .line 240
    packed-switch p1, :pswitch_data_1ae

    .line 251
    :cond_9b
    const-string v0, "com.lge.sizechangable.worldclock"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_a6

    .line 252
    packed-switch p1, :pswitch_data_1b8

    .line 260
    :cond_a6
    const-string v0, "com.lge.sizechangable.richnote"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_b1

    .line 261
    packed-switch p1, :pswitch_data_1c0

    .line 269
    :cond_b1
    const-string v0, "AppWidget"

    const-string v1, "getPreviewClassName() can not return class name"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v0, 0x0

    :goto_b9
    return-object v0

    .line 115
    :pswitch_ba
    const-string v0, "com.lge.sizechangable.favoritecontacts.FavoriteContacts2X3"

    goto :goto_b9

    .line 117
    :pswitch_bd
    const-string v0, "com.lge.sizechangable.favoritecontacts.FavoriteContacts4X3"

    goto :goto_b9

    .line 119
    :cond_c0
    const-string v0, "com.lge.sizechangable.email"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_c

    .line 120
    packed-switch p1, :pswitch_data_1c8

    goto/16 :goto_c

    .line 122
    :pswitch_cd
    const-string v0, "com.lge.sizechangable.email.Email4x2"

    goto :goto_b9

    .line 124
    :pswitch_d0
    const-string v0, "com.lge.sizechangable.email.Email4x4"

    goto :goto_b9

    .line 131
    :pswitch_d3
    const-string v0, "com.lge.sizechangable.calendar.Calendar2x2"

    goto :goto_b9

    .line 133
    :pswitch_d6
    const-string v0, "com.lge.sizechangable.calendar.Calendar4x4"

    goto :goto_b9

    .line 139
    :pswitch_d9
    const-string v0, "com.lge.sizechangable.message.Message4x2"

    goto :goto_b9

    .line 141
    :pswitch_dc
    const-string v0, "com.lge.sizechangable.message.Message4x4"

    goto :goto_b9

    .line 147
    :pswitch_df
    const-string v0, "com.lge.sizechangable.bookmarks.Bookmark2x3"

    goto :goto_b9

    .line 149
    :pswitch_e2
    const-string v0, "com.lge.sizechangable.bookmarks.Bookmark4x3"

    goto :goto_b9

    .line 156
    :pswitch_e5
    const-string v0, "com.lge.sizechangable.musicwidget.widget.MusicAppWidgetProvider4x1"

    goto :goto_b9

    .line 158
    :pswitch_e8
    const-string v0, "com.lge.sizechangable.musicwidget.widget.MusicAppWidgetProvider4x2"

    goto :goto_b9

    .line 165
    :pswitch_eb
    const-string v0, "com.lge.variousstyle.anlaogclock.widget.ClockAnalogWidgetProvider_0"

    goto :goto_b9

    .line 167
    :pswitch_ee
    const-string v0, "com.lge.variousstyle.anlaogclock.widget.ClockAnalogWidgetProvider_1"

    goto :goto_b9

    .line 169
    :pswitch_f1
    const-string v0, "com.lge.variousstyle.anlaogclock.widget.ClockAnalogWidgetProvider_2"

    goto :goto_b9

    .line 171
    :pswitch_f4
    const-string v0, "com.lge.variousstyle.anlaogclock.widget.ClockAnalogWidgetProvider_5"

    goto :goto_b9

    .line 173
    :pswitch_f7
    const-string v0, "com.lge.variousstyle.anlaogclock.widget.ClockAnalogWidgetProvider_7"

    goto :goto_b9

    .line 180
    :pswitch_fa
    const-string v0, "com.lge.variousstyle.digitalclock.widget.ClockDigitalWidgetProvider_0"

    goto :goto_b9

    .line 186
    :pswitch_fd
    const-string v0, "com.lge.sizechangable.news.NewsAppWidgetProvider4x2"

    goto :goto_b9

    .line 188
    :pswitch_100
    const-string v0, "com.lge.sizechangable.news.NewsAppWidgetProvider4x4"

    goto :goto_b9

    .line 194
    :pswitch_103
    const-string v0, "com.lge.sizechangable.finance.FinanceAppWidgetProvider2x1"

    goto :goto_b9

    .line 196
    :pswitch_106
    const-string v0, "com.lge.sizechangable.finance.FinanceAppWidgetProvider2x2"

    goto :goto_b9

    .line 198
    :pswitch_109
    const-string v0, "com.lge.sizechangable.finance.FinanceAppWidgetProvider4x3"

    goto :goto_b9

    .line 205
    :pswitch_10c
    const-string v0, "com.lge.sizechangable.photoframe.PhotoAppWidgetProvider2x1"

    goto :goto_b9

    .line 207
    :pswitch_10f
    const-string v0, "com.lge.sizechangable.photoframe.PhotoAppWidgetProvider2x2"

    goto :goto_b9

    .line 209
    :pswitch_112
    const-string v0, "com.lge.sizechangable.photoframe.PhotoAppWidgetProvider4x3"

    goto :goto_b9

    .line 216
    :pswitch_115
    const-string v0, "com.lge.sizechangable.photoalbum.PhotoAppWidgetProvider_Suffle2x2"

    goto :goto_b9

    .line 218
    :pswitch_118
    const-string v0, "com.lge.sizechangable.photoalbum.PhotoAppWidgetProvider_Suffle4x3"

    goto :goto_b9

    .line 224
    :pswitch_11b
    const-string v0, "com.lge.sizechangable.whatsnew.WhatsNew2x2"

    goto :goto_b9

    .line 226
    :pswitch_11e
    const-string v0, "com.lge.sizechangable.whatsnew.WhatsNew4x2"

    goto :goto_b9

    .line 233
    :pswitch_121
    const-string v0, "com.lge.sizechangable.smartbox.SmartBox2x3"

    goto :goto_b9

    .line 235
    :pswitch_124
    const-string v0, "com.lge.sizechangable.smartbox.SmartBox4x3"

    goto :goto_b9

    .line 242
    :pswitch_127
    const-string v0, "com.lge.sizechangable.weather.layout.Weather2x2"

    goto :goto_b9

    .line 244
    :pswitch_12a
    const-string v0, "com.lge.sizechangable.weather.layout.Weather4x2"

    goto :goto_b9

    .line 247
    :pswitch_12d
    const-string v0, "com.lge.sizechangable.weather.layout.Weather4x3"

    goto :goto_b9

    .line 254
    :pswitch_130
    const-string v0, "com.lge.sizechangable.worldclock.WorldClock2X2"

    goto :goto_b9

    .line 256
    :pswitch_133
    const-string v0, "com.lge.sizechangable.worldclock.WorldClock4X2"

    goto :goto_b9

    .line 263
    :pswitch_136
    const-string v0, "com.lge.sizechangable.richnote.Richnote2X2AppWidgetProvider"

    goto :goto_b9

    .line 265
    :pswitch_139
    const-string v0, "com.lge.sizechangable.richnote.Richnote4x4AppWidgetProvider"

    goto/16 :goto_b9

    .line 113
    nop

    :pswitch_data_13e
    .packed-switch 0x0
        :pswitch_ba
        :pswitch_bd
    .end packed-switch

    .line 129
    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_d3
        :pswitch_d6
    .end packed-switch

    .line 137
    :pswitch_data_14e
    .packed-switch 0x0
        :pswitch_d9
        :pswitch_dc
    .end packed-switch

    .line 145
    :pswitch_data_156
    .packed-switch 0x0
        :pswitch_df
        :pswitch_e2
    .end packed-switch

    .line 154
    :pswitch_data_15e
    .packed-switch 0x0
        :pswitch_e5
        :pswitch_e8
    .end packed-switch

    .line 163
    :pswitch_data_166
    .packed-switch 0x0
        :pswitch_eb
        :pswitch_ee
        :pswitch_f1
        :pswitch_f4
        :pswitch_f7
    .end packed-switch

    .line 178
    :pswitch_data_174
    .packed-switch 0x0
        :pswitch_fa
    .end packed-switch

    .line 184
    :pswitch_data_17a
    .packed-switch 0x0
        :pswitch_fd
        :pswitch_100
    .end packed-switch

    .line 192
    :pswitch_data_182
    .packed-switch 0x0
        :pswitch_103
        :pswitch_106
        :pswitch_109
    .end packed-switch

    .line 203
    :pswitch_data_18c
    .packed-switch 0x0
        :pswitch_10c
        :pswitch_10f
        :pswitch_112
    .end packed-switch

    .line 214
    :pswitch_data_196
    .packed-switch 0x0
        :pswitch_115
        :pswitch_118
    .end packed-switch

    .line 222
    :pswitch_data_19e
    .packed-switch 0x0
        :pswitch_11b
        :pswitch_11e
    .end packed-switch

    .line 231
    :pswitch_data_1a6
    .packed-switch 0x0
        :pswitch_121
        :pswitch_124
    .end packed-switch

    .line 240
    :pswitch_data_1ae
    .packed-switch 0x0
        :pswitch_127
        :pswitch_12a
        :pswitch_12d
    .end packed-switch

    .line 252
    :pswitch_data_1b8
    .packed-switch 0x0
        :pswitch_130
        :pswitch_133
    .end packed-switch

    .line 261
    :pswitch_data_1c0
    .packed-switch 0x0
        :pswitch_136
        :pswitch_139
    .end packed-switch

    .line 120
    :pswitch_data_1c8
    .packed-switch 0x0
        :pswitch_cd
        :pswitch_d0
    .end packed-switch
.end method

.method public static getPreviewDrawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .registers 12
    .parameter "context"
    .parameter "packageName"
    .parameter "index"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const-string v5, ":array/widgetPreview"

    .line 274
    const-string v5, "com.lge.sizechangable.favoritecontacts"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v6, :cond_6c

    const-string v5, "com.lge.sizechangable.email"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v6, :cond_6c

    const-string v5, "com.lge.sizechangable.calendar"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v6, :cond_6c

    const-string v5, "com.lge.sizechangable.message"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v6, :cond_6c

    const-string v5, "com.lge.sizechangable.musicwidget.widget"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v6, :cond_6c

    const-string v5, "com.lge.sizechangable.news"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v6, :cond_6c

    const-string v5, "com.lge.sizechangable.smartbox"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v6, :cond_6c

    const-string v5, "com.lge.sizechangable.widget.clock"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v6, :cond_6c

    const-string v5, "com.lge.sizechangable.bookmarks"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v6, :cond_6c

    const-string v5, "com.lge.sizechangable.whatsnew"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v6, :cond_6c

    const-string v5, "com.lge.sizechangable.photoalbum"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v6, :cond_6c

    const-string v5, "com.lge.sizechangable.worldclock"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v6, :cond_6c

    const-string v5, "com.lge.sizechangable.richnote"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v6, :cond_af

    .line 288
    :cond_6c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 290
    .local v3, mPackageManager:Landroid/content/pm/PackageManager;
    :try_start_70
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 291
    .local v4, res:Landroid/content/res/Resources;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":array/widgetPreview"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 292
    .local v2, id:I
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;
    :try_end_90
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_70 .. :try_end_90} :catch_a9

    move-result-object v0

    .line 293
    .local v0, drawableArray:Landroid/content/res/TypedArray;
    packed-switch p2, :pswitch_data_1a4

    .line 360
    .end local v0       #drawableArray:Landroid/content/res/TypedArray;,
    .end local v2       #id:I,
    .end local v3       #mPackageManager:Landroid/content/pm/PackageManager;,
    .end local v4       #res:Landroid/content/res/Resources;,
    :cond_94
    :goto_94
    const-string v5, "AppWidget"

    const-string v6, "getPreviewClassName() can not return drawable"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 361
    :goto_9c
    return-object v5

    .line 295
    .restart local v0       #drawableArray:Landroid/content/res/TypedArray;,
    .restart local v2       #id:I,
    .restart local v3       #mPackageManager:Landroid/content/pm/PackageManager;,
    .restart local v4       #res:Landroid/content/res/Resources;,
    :pswitch_9d
    const/4 v5, 0x0

    :try_start_9e
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_9c

    .line 297
    :pswitch_a3
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_a7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9e .. :try_end_a7} :catch_a9

    move-result-object v5

    goto :goto_9c

    .line 299
    .end local v0       #drawableArray:Landroid/content/res/TypedArray;,
    .end local v2       #id:I,
    .end local v4       #res:Landroid/content/res/Resources;,
    :catch_a9
    move-exception v5

    move-object v1, v5

    .line 300
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_94

    .line 302
    .end local v1       #e:Landroid/content/pm/PackageManager$NameNotFoundException;,
    .end local v3       #mPackageManager:Landroid/content/pm/PackageManager;,
    :cond_af
    const-string v5, "com.lge.sizechangable.finance"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v6, :cond_c7

    const-string v5, "com.lge.sizechangable.photoframe"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v6, :cond_c7

    const-string v5, "com.lge.sizechangable.weather"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v6, :cond_108

    .line 306
    :cond_c7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 308
    .restart local v3       #mPackageManager:Landroid/content/pm/PackageManager;,
    :try_start_cb
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 309
    .restart local v4       #res:Landroid/content/res/Resources;,
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":array/widgetPreview"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 310
    .restart local v2       #id:I,
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 311
    .restart local v0       #drawableArray:Landroid/content/res/TypedArray;,
    packed-switch p2, :pswitch_data_1ac

    goto :goto_94

    .line 313
    :pswitch_f0
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_9c

    .line 315
    :pswitch_f6
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_9c

    .line 317
    :pswitch_fc
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_100
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_cb .. :try_end_100} :catch_102

    move-result-object v5

    goto :goto_9c

    .line 319
    .end local v0       #drawableArray:Landroid/content/res/TypedArray;,
    .end local v2       #id:I,
    .end local v4       #res:Landroid/content/res/Resources;,
    :catch_102
    move-exception v5

    move-object v1, v5

    .line 320
    .restart local v1       #e:Landroid/content/pm/PackageManager$NameNotFoundException;,
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_94

    .line 322
    .end local v1       #e:Landroid/content/pm/PackageManager$NameNotFoundException;,
    .end local v3       #mPackageManager:Landroid/content/pm/PackageManager;,
    :cond_108
    const-string v5, "com.lge.variousstyle.digitalclock"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v6, :cond_148

    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 326
    .restart local v3       #mPackageManager:Landroid/content/pm/PackageManager;,
    :try_start_114
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 327
    .restart local v4       #res:Landroid/content/res/Resources;,
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":array/widgetPreview"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 328
    .restart local v2       #id:I,
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 329
    .restart local v0       #drawableArray:Landroid/content/res/TypedArray;,
    packed-switch p2, :pswitch_data_1b6

    goto/16 :goto_94

    .line 331
    :pswitch_13a
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_13e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_114 .. :try_end_13e} :catch_141

    move-result-object v5

    goto/16 :goto_9c

    .line 333
    .end local v0       #drawableArray:Landroid/content/res/TypedArray;,
    .end local v2       #id:I,
    .end local v4       #res:Landroid/content/res/Resources;,
    :catch_141
    move-exception v5

    move-object v1, v5

    .line 334
    .restart local v1       #e:Landroid/content/pm/PackageManager$NameNotFoundException;,
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_94

    .line 336
    .end local v1       #e:Landroid/content/pm/PackageManager$NameNotFoundException;,
    .end local v3       #mPackageManager:Landroid/content/pm/PackageManager;,
    :cond_148
    const-string v5, "com.lge.variousstyle.anlaogclock"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v6, :cond_94

    .line 338
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 340
    .restart local v3       #mPackageManager:Landroid/content/pm/PackageManager;,
    :try_start_154
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 341
    .restart local v4       #res:Landroid/content/res/Resources;,
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":array/widgetPreview"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 342
    .restart local v2       #id:I,
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 343
    .restart local v0       #drawableArray:Landroid/content/res/TypedArray;,
    packed-switch p2, :pswitch_data_1bc

    goto/16 :goto_94

    .line 345
    :pswitch_17a
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_9c

    .line 347
    :pswitch_181
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_9c

    .line 349
    :pswitch_188
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_9c

    .line 351
    :pswitch_18f
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_9c

    .line 353
    :pswitch_196
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_19a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_154 .. :try_end_19a} :catch_19d

    move-result-object v5

    goto/16 :goto_9c

    .line 355
    .end local v0       #drawableArray:Landroid/content/res/TypedArray;,
    .end local v2       #id:I,
    .end local v4       #res:Landroid/content/res/Resources;,
    :catch_19d
    move-exception v5

    move-object v1, v5

    .line 356
    .restart local v1       #e:Landroid/content/pm/PackageManager$NameNotFoundException;,
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_94

    .line 293
    :pswitch_data_1a4
    .packed-switch 0x0
        :pswitch_9d
        :pswitch_a3
    .end packed-switch

    .line 311
    :pswitch_data_1ac
    .packed-switch 0x0
        :pswitch_f0
        :pswitch_f6
        :pswitch_fc
    .end packed-switch

    .line 329
    :pswitch_data_1b6
    .packed-switch 0x0
        :pswitch_13a
    .end packed-switch

    .line 343
    :pswitch_data_1bc
    .packed-switch 0x0
        :pswitch_17a
        :pswitch_181
        :pswitch_188
        :pswitch_18f
        :pswitch_196
    .end packed-switch
.end method

.method public static getPreviewNum(Ljava/lang/String;)I
    .registers 5
    .parameter "packageName"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 31
    const-string v0, "com.lge.sizechangable.favoritecontacts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_d

    move v0, v2

    .line 85
    :goto_c
    return v0

    .line 33
    :cond_d
    const-string v0, "com.lge.sizechangable.email"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_17

    move v0, v2

    .line 34
    goto :goto_c

    .line 35
    :cond_17
    const-string v0, "com.lge.sizechangable.calendar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_21

    move v0, v2

    .line 36
    goto :goto_c

    .line 37
    :cond_21
    const-string v0, "com.lge.sizechangable.message"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_2b

    move v0, v2

    .line 38
    goto :goto_c

    .line 40
    :cond_2b
    const-string v0, "com.lge.sizechangable.musicwidget.widget"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_35

    move v0, v2

    .line 41
    goto :goto_c

    .line 45
    :cond_35
    const-string v0, "com.lge.variousstyle.anlaogclock"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_3f

    .line 47
    const/4 v0, 0x5

    goto :goto_c

    .line 50
    :cond_3f
    const-string v0, "com.lge.variousstyle.digitalclock"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_49

    move v0, v1

    .line 52
    goto :goto_c

    .line 54
    :cond_49
    const-string v0, "com.lge.sizechangable.news"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_53

    move v0, v2

    .line 55
    goto :goto_c

    .line 57
    :cond_53
    const-string v0, "com.lge.sizechangable.finance"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_5d

    move v0, v3

    .line 58
    goto :goto_c

    .line 60
    :cond_5d
    const-string v0, "com.lge.sizechangable.photoframe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_67

    move v0, v3

    .line 61
    goto :goto_c

    .line 63
    :cond_67
    const-string v0, "com.lge.sizechangable.photoalbum"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_71

    move v0, v2

    .line 64
    goto :goto_c

    .line 66
    :cond_71
    const-string v0, "com.lge.sizechangable.smartbox"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_7b

    move v0, v2

    .line 67
    goto :goto_c

    .line 69
    :cond_7b
    const-string v0, "com.lge.sizechangable.whatsnew"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_85

    move v0, v2

    .line 70
    goto :goto_c

    .line 72
    :cond_85
    const-string v0, "com.lge.sizechangable.bookmarks"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_90

    move v0, v2

    .line 73
    goto/16 :goto_c

    .line 75
    :cond_90
    const-string v0, "com.lge.sizechangable.weather"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_9b

    move v0, v3

    .line 76
    goto/16 :goto_c

    .line 78
    :cond_9b
    const-string v0, "com.lge.sizechangable.worldclock"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_a6

    move v0, v2

    .line 79
    goto/16 :goto_c

    .line 81
    :cond_a6
    const-string v0, "com.lge.sizechangable.richnote"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_b1

    move v0, v2

    .line 82
    goto/16 :goto_c

    .line 85
    :cond_b1
    const/4 v0, 0x0

    goto/16 :goto_c
.end method

.method public static isChangedThemeInfo(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 8
    .parameter "context"
    .parameter "packageName"
    .parameter "index"

    .prologue
    const-string v4, "com.lge.action.ThemeChanged"

    const-string v3, "ThemeType"

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.lge.sizechangable.favoritecontacts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 92
    packed-switch p2, :pswitch_data_36

    .line 109
    :cond_15
    :goto_15
    return-void

    .line 94
    :pswitch_16
    const-string v1, "com.lge.action.ThemeChanged"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v1, "ThemeType"

    const-string v1, "Theme1"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_15

    .line 99
    :pswitch_26
    const-string v1, "com.lge.action.ThemeChanged"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v1, "ThemeType"

    const-string v1, "Theme2"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_15

    .line 92
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_16
        :pswitch_26
    .end packed-switch
.end method

.method public static isVariousStyle(Ljava/lang/String;)Z
    .registers 2
    .parameter "packageName"

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method
