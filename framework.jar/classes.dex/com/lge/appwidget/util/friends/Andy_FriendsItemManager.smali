.class public Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;
.super Ljava/lang/Object;
.source "Andy_FriendsItemManager.java"



# static fields
.field private static final TAG:Ljava/lang/String; = "Andy_FriendsItemManager"



# instance fields
.field private _contacts:Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;

.field private _context:Landroid/content/Context;

.field private _friends_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->_context:Landroid/content/Context;

    .line 28
    return-void
.end method

.method private initFriendsContacts(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->_contacts:Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;

    if-nez v0, :cond_b

    .line 34
    new-instance v0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;

    invoke-direct {v0, p1}, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->_contacts:Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;

    .line 37
    :cond_b
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->_contacts:Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;

    invoke-virtual {v0}, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->getFriendsList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->_friends_list:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->_friends_list:Ljava/util/List;

    if-nez v0, :cond_9

    .line 76
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->_context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->initFriendsContacts(Landroid/content/Context;)V

    .line 79
    :cond_9
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->_friends_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemView(I)Landroid/view/View;
    .registers 3
    .parameter "pos"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->_friends_list:Ljava/util/List;

    if-nez v0, :cond_9

    .line 86
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->_context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->initFriendsContacts(Landroid/content/Context;)V

    .line 89
    :cond_9
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->_friends_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public refreshFriendsList(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->_contacts:Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;

    if-nez v0, :cond_b

    .line 64
    new-instance v0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;

    invoke-direct {v0, p1}, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->_contacts:Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;

    .line 67
    :cond_b
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->_contacts:Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;

    invoke-virtual {v0}, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->initFriendsList()V

    .line 69
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->_contacts:Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;

    invoke-virtual {v0}, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->getFriendsList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->_friends_list:Ljava/util/List;

    .line 70
    return-void
.end method

.method public removeAllItems()V
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->_friends_list:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 96
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->_friends_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 98
    :cond_9
    return-void
.end method

.method public setContactsPhotoRes(I)V
    .registers 3
    .parameter "length"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->_contacts:Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;

    invoke-virtual {v0, p1}, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->setContactsPhotoRes(I)V

    .line 58
    return-void
.end method

.method public setUserContactsIds([J)V
    .registers 3
    .parameter "list"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->_contacts:Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;

    invoke-virtual {v0, p1}, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->setUserContactsIds([J)V

    .line 53
    return-void
.end method

.method public setUserContactsNames([Ljava/lang/String;)V
    .registers 3
    .parameter "list"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->_contacts:Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;

    invoke-virtual {v0, p1}, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->setUserContactsNames([Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public setUserContactsPhotos(Ljava/util/ArrayList;Z)V
    .registers 4
    .parameter
    .parameter "isAppended"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->_contacts:Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;

    invoke-virtual {v0, p1, p2}, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->setUserContactsPhotos(Ljava/util/ArrayList;Z)V

    .line 43
    return-void
.end method
