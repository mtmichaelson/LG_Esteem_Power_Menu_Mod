.class Landroid/app/SearchDialog$6;
.super Ljava/lang/Object;
.source "SearchDialog.java"


# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SearchDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/SearchDialog;



# direct methods
.method constructor <init>(Landroid/app/SearchDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 936
    iput-object p1, p0, Landroid/app/SearchDialog$6;->this$0:Landroid/app/SearchDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 939
    iget-object v3, p0, Landroid/app/SearchDialog$6;->this$0:Landroid/app/SearchDialog;

    invoke-static {v3}, Landroid/app/SearchDialog;->access$000(Landroid/app/SearchDialog;)Landroid/app/SearchableInfo;

    move-result-object v3

    if-nez v3, :cond_c

    move v3, v6

    .line 986
    :goto_b
    return v3

    .line 951
    :cond_c
    iget-object v3, p0, Landroid/app/SearchDialog$6;->this$0:Landroid/app/SearchDialog;

    invoke-static {v3}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/SearchDialog$SearchAutoComplete;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Landroid/app/SearchDialog$6;->this$0:Landroid/app/SearchDialog;

    invoke-static {v3}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/SearchDialog$SearchAutoComplete;->getListSelection()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2c

    .line 953
    iget-object v3, p0, Landroid/app/SearchDialog$6;->this$0:Landroid/app/SearchDialog;

    invoke-static {v3, p1, p2, p3}, Landroid/app/SearchDialog;->access$1400(Landroid/app/SearchDialog;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_b

    .line 958
    :cond_2c
    iget-object v3, p0, Landroid/app/SearchDialog$6;->this$0:Landroid/app/SearchDialog;

    invoke-static {v3}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v3

    invoke-static {v3}, Landroid/app/SearchDialog$SearchAutoComplete;->access$400(Landroid/app/SearchDialog$SearchAutoComplete;)Z

    move-result v3

    if-nez v3, :cond_b1

    .line 959
    const/16 v3, 0x42

    if-ne p2, v3, :cond_8d

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_8d

    .line 961
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 965
    iget-object v3, p0, Landroid/app/SearchDialog$6;->this$0:Landroid/app/SearchDialog;

    invoke-static {v3}, Landroid/app/SearchDialog;->access$000(Landroid/app/SearchDialog;)Landroid/app/SearchableInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->autoUrlDetect()Z

    move-result v3

    if-eqz v3, :cond_87

    iget-object v3, p0, Landroid/app/SearchDialog$6;->this$0:Landroid/app/SearchDialog;

    invoke-static {v3}, Landroid/app/SearchDialog;->access$900(Landroid/app/SearchDialog;)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x2

    if-ne v3, v4, :cond_87

    .line 968
    iget-object v3, p0, Landroid/app/SearchDialog$6;->this$0:Landroid/app/SearchDialog;

    iget-object v4, p0, Landroid/app/SearchDialog$6;->this$0:Landroid/app/SearchDialog;

    invoke-static {v4}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/SearchDialog$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/app/SearchDialog;->access$1500(Landroid/app/SearchDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 969
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 970
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 971
    iget-object v3, p0, Landroid/app/SearchDialog$6;->this$0:Landroid/app/SearchDialog;

    invoke-static {v3, v1}, Landroid/app/SearchDialog;->access$1600(Landroid/app/SearchDialog;Landroid/content/Intent;)V

    .end local v1       #intent:Landroid/content/Intent;,
    .end local v2       #uri:Landroid/net/Uri;,
    :goto_85
    move v3, v5

    .line 976
    goto :goto_b

    .line 974
    :cond_87
    iget-object v3, p0, Landroid/app/SearchDialog$6;->this$0:Landroid/app/SearchDialog;

    invoke-virtual {v3}, Landroid/app/SearchDialog;->launchQuerySearch()V

    goto :goto_85

    .line 978
    :cond_8d
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_b1

    .line 979
    iget-object v3, p0, Landroid/app/SearchDialog$6;->this$0:Landroid/app/SearchDialog;

    invoke-static {v3}, Landroid/app/SearchDialog;->access$000(Landroid/app/SearchDialog;)Landroid/app/SearchableInfo;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 980
    .local v0, actionKey:Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_b1

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b1

    .line 981
    iget-object v3, p0, Landroid/app/SearchDialog$6;->this$0:Landroid/app/SearchDialog;

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Landroid/app/SearchDialog;->launchQuerySearch(ILjava/lang/String;)V

    move v3, v5

    .line 982
    goto/16 :goto_b

    .end local v0       #actionKey:Landroid/app/SearchableInfo$ActionKeyInfo;,
    :cond_b1
    move v3, v6

    .line 986
    goto/16 :goto_b
.end method
