.class Lcom/ozdroid/kaoshitong/Update$VersionAdapter$1;
.super Ljava/lang/Object;
.source "Update.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ozdroid/kaoshitong/Update$VersionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ozdroid/kaoshitong/Update$VersionAdapter;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/Update$VersionAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/Update$VersionAdapter;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 184
    .local v0, "index":I
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/Update$VersionAdapter;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/Update$VersionAdapter;->access$0(Lcom/ozdroid/kaoshitong/Update$VersionAdapter;)Lcom/ozdroid/kaoshitong/Update;

    move-result-object v2

    invoke-static {}, Lcom/ozdroid/kaoshitong/model/VersionEntry;->getInstance()Lcom/ozdroid/kaoshitong/model/VersionEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/model/VersionEntry;->getLists()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ozdroid/kaoshitong/model/VersionItemEntry;

    invoke-static {v2, v1}, Lcom/ozdroid/kaoshitong/Update;->access$6(Lcom/ozdroid/kaoshitong/Update;Lcom/ozdroid/kaoshitong/model/VersionItemEntry;)V

    .line 185
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/Update$VersionAdapter;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/Update$VersionAdapter;->access$0(Lcom/ozdroid/kaoshitong/Update$VersionAdapter;)Lcom/ozdroid/kaoshitong/Update;

    move-result-object v1

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/Update;->access$7(Lcom/ozdroid/kaoshitong/Update;)Lcom/ozdroid/kaoshitong/model/VersionItemEntry;

    move-result-object v1

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/Update$VersionAdapter;

    invoke-static {v2}, Lcom/ozdroid/kaoshitong/Update$VersionAdapter;->access$0(Lcom/ozdroid/kaoshitong/Update$VersionAdapter;)Lcom/ozdroid/kaoshitong/Update;

    move-result-object v2

    invoke-static {v2}, Lcom/ozdroid/kaoshitong/Update;->access$8(Lcom/ozdroid/kaoshitong/Update;)Lcom/ozdroid/kaoshitong/model/IDownloadListener;

    move-result-object v2

    iget-object v3, p0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$1;->this$1:Lcom/ozdroid/kaoshitong/Update$VersionAdapter;

    invoke-static {v3}, Lcom/ozdroid/kaoshitong/Update$VersionAdapter;->access$0(Lcom/ozdroid/kaoshitong/Update$VersionAdapter;)Lcom/ozdroid/kaoshitong/Update;

    move-result-object v3

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lcom/ozdroid/kaoshitong/model/VersionItemEntry;->Download(Lcom/ozdroid/kaoshitong/model/IDownloadListener;Landroid/content/Context;Landroid/os/Handler;)V

    .line 186
    return-void
.end method
