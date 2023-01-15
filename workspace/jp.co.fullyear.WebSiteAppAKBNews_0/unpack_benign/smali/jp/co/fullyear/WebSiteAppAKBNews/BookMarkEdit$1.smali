.class Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$1;
.super Ljava/lang/Object;
.source "BookMarkEdit.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;


# direct methods
.method constructor <init>(Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$1;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 66
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    move-object v2, v0

    .line 67
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 71
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "id"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    .local v1, "item":Ljava/lang/String;
    iget-object v4, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$1;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->DialogmultiLineInput(I)V

    .line 74
    return-void
.end method
