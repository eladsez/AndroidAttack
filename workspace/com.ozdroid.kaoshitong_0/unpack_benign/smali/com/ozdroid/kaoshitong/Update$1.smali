.class Lcom/ozdroid/kaoshitong/Update$1;
.super Ljava/lang/Object;
.source "Update.java"

# interfaces
.implements Lcom/ozdroid/kaoshitong/model/IGetDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ozdroid/kaoshitong/Update;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ozdroid/kaoshitong/Update;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/Update;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/Update$1;->this$0:Lcom/ozdroid/kaoshitong/Update;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endUpdate()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public errorUpdate()V
    .locals 4

    .prologue
    .line 226
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Update$1;->this$0:Lcom/ozdroid/kaoshitong/Update;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Update;->access$0(Lcom/ozdroid/kaoshitong/Update;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Update$1;->this$0:Lcom/ozdroid/kaoshitong/Update;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Update;->access$3(Lcom/ozdroid/kaoshitong/Update;)Lcom/ozdroid/kaoshitong/ui/InfoDialog;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u5217\u8868\u5931\u8d25."

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->Create(Ljava/lang/String;Lcom/ozdroid/kaoshitong/ui/OnInfoDialogSubmitListener;Z)V

    .line 228
    return-void
.end method

.method public getDataList(Z)V
    .locals 2
    .param p1, "sueccss"    # Z

    .prologue
    .line 208
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Update$1;->this$0:Lcom/ozdroid/kaoshitong/Update;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Update;->access$0(Lcom/ozdroid/kaoshitong/Update;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Update$1;->this$0:Lcom/ozdroid/kaoshitong/Update;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Update;->access$1(Lcom/ozdroid/kaoshitong/Update;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Update$1;->this$0:Lcom/ozdroid/kaoshitong/Update;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Update;->access$2(Lcom/ozdroid/kaoshitong/Update;)Lcom/ozdroid/kaoshitong/Update$VersionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/Update$VersionAdapter;->notifyDataSetChanged()V

    .line 211
    return-void
.end method

.method public startUpdate()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Update$1;->this$0:Lcom/ozdroid/kaoshitong/Update;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Update;->access$0(Lcom/ozdroid/kaoshitong/Update;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Update$1;->this$0:Lcom/ozdroid/kaoshitong/Update;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Update;->access$1(Lcom/ozdroid/kaoshitong/Update;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 218
    return-void
.end method
