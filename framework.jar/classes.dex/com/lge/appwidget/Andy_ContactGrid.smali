.class public Lcom/lge/appwidget/Andy_ContactGrid;
.super Landroid/widget/GridView;
.source "Andy_ContactGrid.java"



# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;,
        Lcom/lge/appwidget/Andy_ContactGrid$ContactAdapter;,
        Lcom/lge/appwidget/Andy_ContactGrid$ContactData;,
        Lcom/lge/appwidget/Andy_ContactGrid$ContactComparable;,
        Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;
    }
.end annotation


# instance fields
.field ContactArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_ContactGrid$ContactData;",
            ">;"
        }
    .end annotation
.end field

.field clickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field cur:Landroid/database/Cursor;

.field height:I

.field mContactAdapter:Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;

.field mContactAdapter1:Lcom/lge/appwidget/Andy_ContactGrid$ContactAdapter;

.field mContactId:I

.field mContactImageId:I

.field mContactImageId2:I

.field mContactLayout:Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;

.field mContactTextId:I

.field mContext:Landroid/content/Context;

.field projection:[Ljava/lang/String;

.field starRed:Ljava/lang/String;

.field uri:Landroid/net/Uri;

.field width:I



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "lookup"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->projection:[Ljava/lang/String;

    .line 35
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->uri:Landroid/net/Uri;

    .line 36
    const-string/jumbo v0, "starred"

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->starRed:Ljava/lang/String;

    .line 44
    const/16 v0, 0x85

    iput v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->width:I

    const/16 v0, 0x69

    iput v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->height:I

    .line 66
    new-instance v0, Lcom/lge/appwidget/Andy_ContactGrid$1;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_ContactGrid$1;-><init>(Lcom/lge/appwidget/Andy_ContactGrid;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 50
    iput-object p1, p0, Lcom/lge/appwidget/Andy_ContactGrid;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->ContactArray:Ljava/util/ArrayList;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "lookup"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->projection:[Ljava/lang/String;

    .line 35
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->uri:Landroid/net/Uri;

    .line 36
    const-string/jumbo v0, "starred"

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->starRed:Ljava/lang/String;

    .line 44
    const/16 v0, 0x85

    iput v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->width:I

    const/16 v0, 0x69

    iput v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->height:I

    .line 66
    new-instance v0, Lcom/lge/appwidget/Andy_ContactGrid$1;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_ContactGrid$1;-><init>(Lcom/lge/appwidget/Andy_ContactGrid;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 56
    iput-object p1, p0, Lcom/lge/appwidget/Andy_ContactGrid;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->ContactArray:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "lookup"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->projection:[Ljava/lang/String;

    .line 35
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->uri:Landroid/net/Uri;

    .line 36
    const-string/jumbo v0, "starred"

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->starRed:Ljava/lang/String;

    .line 44
    const/16 v0, 0x85

    iput v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->width:I

    const/16 v0, 0x69

    iput v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->height:I

    .line 66
    new-instance v0, Lcom/lge/appwidget/Andy_ContactGrid$1;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_ContactGrid$1;-><init>(Lcom/lge/appwidget/Andy_ContactGrid;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 62
    iput-object p1, p0, Lcom/lge/appwidget/Andy_ContactGrid;->mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->ContactArray:Ljava/util/ArrayList;

    .line 64
    return-void
.end method


# virtual methods
.method public SortContact(Z)V
    .registers 4
    .parameter "sort"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 132
    if-eqz p1, :cond_c

    .line 133
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->ContactArray:Ljava/util/ArrayList;

    new-instance v1, Lcom/lge/appwidget/Andy_ContactGrid$ContactComparable;

    invoke-direct {v1, p0}, Lcom/lge/appwidget/Andy_ContactGrid$ContactComparable;-><init>(Lcom/lge/appwidget/Andy_ContactGrid;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 135
    :cond_c
    return-void
.end method

.method public addContactURI(Landroid/os/Bundle;)V
    .registers 7
    .parameter "mBundle"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 113
    :try_start_0
    new-instance v1, Lcom/lge/appwidget/Andy_ContactGrid$ContactData;

    const-string/jumbo v2, "uri"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    const-string/jumbo v3, "text"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "lookupuri"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/lge/appwidget/Andy_ContactGrid$ContactData;-><init>(Lcom/lge/appwidget/Andy_ContactGrid;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)V

    .line 116
    .local v1, mContactData:Lcom/lge/appwidget/Andy_ContactGrid$ContactData;
    iget-object v2, p0, Lcom/lge/appwidget/Andy_ContactGrid;->ContactArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 121
    .end local v1       #mContactData:Lcom/lge/appwidget/Andy_ContactGrid$ContactData;,
    :goto_22
    return-void

    .line 117
    :catch_23
    move-exception v2

    move-object v0, v2

    .line 118
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22
.end method

.method public clearAllContacts(Z)V
    .registers 3
    .parameter "clear"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 125
    if-eqz p1, :cond_9

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->ContactArray:Ljava/util/ArrayList;

    .line 128
    :cond_9
    return-void
.end method

.method public onClickLayout(Z)V
    .registers 3
    .parameter "update"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 174
    if-eqz p1, :cond_7

    .line 175
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_ContactGrid;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 177
    :cond_7
    return-void
.end method

.method public setAdapter(Z)V
    .registers 4
    .parameter "update"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 139
    if-eqz p1, :cond_10

    .line 140
    new-instance v0, Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_ContactGrid;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;-><init>(Lcom/lge/appwidget/Andy_ContactGrid;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->mContactAdapter:Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;

    .line 141
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->mContactAdapter:Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_ContactGrid;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    :cond_10
    return-void
.end method

.method public setArrayAdapter(Z)V
    .registers 4
    .parameter "update"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 147
    if-eqz p1, :cond_10

    .line 148
    new-instance v0, Lcom/lge/appwidget/Andy_ContactGrid$ContactAdapter;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_ContactGrid;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/lge/appwidget/Andy_ContactGrid$ContactAdapter;-><init>(Lcom/lge/appwidget/Andy_ContactGrid;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->mContactAdapter1:Lcom/lge/appwidget/Andy_ContactGrid$ContactAdapter;

    .line 149
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->mContactAdapter1:Lcom/lge/appwidget/Andy_ContactGrid$ContactAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_ContactGrid;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    :cond_10
    return-void
.end method

.method public setBackColor(I)V
    .registers 2
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcom/lge/appwidget/Andy_ContactGrid;->setBackgroundColor(I)V

    .line 182
    return-void
.end method

.method public setContactImageViewId1(I)V
    .registers 2
    .parameter "RID"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 86
    iput p1, p0, Lcom/lge/appwidget/Andy_ContactGrid;->mContactImageId:I

    .line 87
    return-void
.end method

.method public setContactImageViewId2(I)V
    .registers 2
    .parameter "RID"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 91
    iput p1, p0, Lcom/lge/appwidget/Andy_ContactGrid;->mContactImageId2:I

    .line 92
    return-void
.end method

.method public setContactLayoutId(I)V
    .registers 2
    .parameter "RID"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 81
    iput p1, p0, Lcom/lge/appwidget/Andy_ContactGrid;->mContactId:I

    .line 82
    return-void
.end method

.method public setContactTextViewId(I)V
    .registers 2
    .parameter "RID"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 96
    iput p1, p0, Lcom/lge/appwidget/Andy_ContactGrid;->mContactTextId:I

    .line 97
    return-void
.end method

.method public setHeight(I)V
    .registers 2
    .parameter "h"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 106
    iput p1, p0, Lcom/lge/appwidget/Andy_ContactGrid;->height:I

    .line 107
    return-void
.end method

.method public setWidth(I)V
    .registers 2
    .parameter "w"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 101
    iput p1, p0, Lcom/lge/appwidget/Andy_ContactGrid;->width:I

    .line 102
    return-void
.end method

.method public updateAdapter(Z)V
    .registers 3
    .parameter "update"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 155
    if-eqz p1, :cond_7

    .line 156
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->mContactAdapter1:Lcom/lge/appwidget/Andy_ContactGrid$ContactAdapter;

    invoke-virtual {v0}, Lcom/lge/appwidget/Andy_ContactGrid$ContactAdapter;->notifyDataSetChanged()V

    .line 159
    :cond_7
    return-void
.end method

.method public updateLayout(Z)V
    .registers 8
    .parameter "update"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 163
    if-eqz p1, :cond_1d

    .line 164
    iput-object v4, p0, Lcom/lge/appwidget/Andy_ContactGrid;->cur:Landroid/database/Cursor;

    .line 165
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/appwidget/Andy_ContactGrid;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_ContactGrid;->projection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/appwidget/Andy_ContactGrid;->starRed:Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->cur:Landroid/database/Cursor;

    .line 167
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid;->mContactAdapter:Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;

    invoke-virtual {v0}, Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;->notifyDataSetChanged()V

    .line 170
    :cond_1d
    return-void
.end method
