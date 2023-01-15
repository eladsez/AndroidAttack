.class Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList$1;
.super Ljava/lang/Object;
.source "BookMarkList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList;


# direct methods
.method constructor <init>(Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList$1;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    move-object v3, v0

    .line 60
    .local v3, "listView":Landroid/widget/ListView;
    invoke-virtual {v3, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 64
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "url"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 67
    .local v2, "item":Ljava/lang/String;
    const/4 v5, 0x1

    .line 68
    .local v5, "requestCode":I
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList$1;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList;

    const-class v7, Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "url"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList$1;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList;

    invoke-virtual {v6, v1, v5}, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 72
    return-void
.end method
