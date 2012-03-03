.class Lcom/android/internal/policy/impl/ShortcutManager;
.super Landroid/database/ContentObserver;
.source "ShortcutManager.java"



# static fields
.field private static final COLUMN_INTENT:I = 0x1

.field private static final COLUMN_SHORTCUT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShortcutManager"

.field private static final sProjection:[Ljava/lang/String;



# instance fields
.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mShortcutIntents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field



# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "shortcut"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "intent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/ShortcutManager;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 52
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 54
    iput-object p1, p0, Lcom/android/internal/policy/impl/ShortcutManager;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ShortcutManager;->mShortcutIntents:Landroid/util/SparseArray;

    .line 56
    return-void
.end method

.method private updateShortcuts()V
    .registers 8

    .prologue
    const-string v6, "ShortcutManager"

    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/ShortcutManager;->mCursor:Landroid/database/Cursor;

    .line 73
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v5

    if-nez v5, :cond_12

    .line 74
    const-string v5, "ShortcutManager"

    const-string v5, "ShortcutObserver could not re-query shortcuts."

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_11
    return-void

    .line 78
    :cond_12
    iget-object v5, p0, Lcom/android/internal/policy/impl/ShortcutManager;->mShortcutIntents:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 79
    :cond_17
    :goto_17
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 80
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 81
    .local v4, shortcut:I
    if-eqz v4, :cond_17

    .line 82
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, intentURI:Ljava/lang/String;
    const/4 v2, 0x0

    .line 85
    .local v2, intent:Landroid/content/Intent;
    :try_start_2a
    invoke-static {v3}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2d
    .catch Ljava/net/URISyntaxException; {:try_start_2a .. :try_end_2d} :catch_36

    move-result-object v2

    .line 89
    :goto_2e
    if-eqz v2, :cond_17

    .line 90
    iget-object v5, p0, Lcom/android/internal/policy/impl/ShortcutManager;->mShortcutIntents:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_17

    .line 86
    :catch_36
    move-exception v1

    .line 87
    .local v1, e:Ljava/net/URISyntaxException;
    const-string v5, "ShortcutManager"

    const-string v5, "Intent URI for shortcut invalid."

    invoke-static {v6, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e
.end method


# virtual methods
.method public getIntent(II)Landroid/content/Intent;
    .registers 9
    .parameter "keyCode"
    .parameter "modifiers"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 109
    invoke-static {v4}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    .line 111
    .local v1, kcm:Landroid/view/KeyCharacterMap;
    invoke-virtual {v1, p1, p2}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v2

    .line 112
    .local v2, shortcut:I
    if-eqz v2, :cond_19

    iget-object v3, p0, Lcom/android/internal/policy/impl/ShortcutManager;->mShortcutIntents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    move-object v0, v3

    .line 113
    .local v0, intent:Landroid/content/Intent;
    :goto_15
    if-eqz v0, :cond_1b

    move-object v3, v0

    .line 117
    .end local p0       
    :goto_18
    return-object v3

    .end local v0       #intent:Landroid/content/Intent;,
    .restart local p0       
    :cond_19
    move-object v0, v5

    .line 112
    goto :goto_15

    .line 116
    .restart local v0       #intent:Landroid/content/Intent;,
    :cond_1b
    invoke-virtual {v1, p1, v4}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v2

    .line 117
    if-eqz v2, :cond_2f

    iget-object v3, p0, Lcom/android/internal/policy/impl/ShortcutManager;->mShortcutIntents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Landroid/content/Intent;

    move-object v3, p0

    goto :goto_18

    .restart local p0       
    :cond_2f
    move-object v3, v5

    goto :goto_18
.end method

.method public observe()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/policy/impl/ShortcutManager;->sProjection:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ShortcutManager;->mCursor:Landroid/database/Cursor;

    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/ShortcutManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 63
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ShortcutManager;->updateShortcuts()V

    .line 64
    return-void
.end method

.method public onChange(Z)V
    .registers 2
    .parameter "selfChange"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ShortcutManager;->updateShortcuts()V

    .line 69
    return-void
.end method
