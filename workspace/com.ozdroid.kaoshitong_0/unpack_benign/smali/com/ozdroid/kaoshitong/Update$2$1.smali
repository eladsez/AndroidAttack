.class Lcom/ozdroid/kaoshitong/Update$2$1;
.super Ljava/lang/Object;
.source "Update.java"

# interfaces
.implements Lcom/ozdroid/kaoshitong/ui/OnInfoDialogSubmitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ozdroid/kaoshitong/Update$2;->endUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ozdroid/kaoshitong/Update$2;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/Update$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/Update$2$1;->this$1:Lcom/ozdroid/kaoshitong/Update$2;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCancelClick(Z)V
    .locals 0
    .param p1, "checkbox"    # Z

    .prologue
    .line 259
    return-void
.end method

.method public OnSubmitClick(Z)V
    .locals 2
    .param p1, "checkbox"    # Z

    .prologue
    .line 263
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Update$2$1;->this$1:Lcom/ozdroid/kaoshitong/Update$2;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Update$2;->access$0(Lcom/ozdroid/kaoshitong/Update$2;)Lcom/ozdroid/kaoshitong/Update;

    move-result-object v0

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Update;->access$5(Lcom/ozdroid/kaoshitong/Update;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Update$2$1;->this$1:Lcom/ozdroid/kaoshitong/Update$2;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Update$2;->access$0(Lcom/ozdroid/kaoshitong/Update$2;)Lcom/ozdroid/kaoshitong/Update;

    move-result-object v0

    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Update$2$1;->this$1:Lcom/ozdroid/kaoshitong/Update$2;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/Update$2;->access$0(Lcom/ozdroid/kaoshitong/Update$2;)Lcom/ozdroid/kaoshitong/Update;

    move-result-object v1

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/Update;->access$5(Lcom/ozdroid/kaoshitong/Update;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ozdroid/kaoshitong/Update;->startActivity(Landroid/content/Intent;)V

    .line 265
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Update$2$1;->this$1:Lcom/ozdroid/kaoshitong/Update$2;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Update$2;->access$0(Lcom/ozdroid/kaoshitong/Update$2;)Lcom/ozdroid/kaoshitong/Update;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/Update;->finish()V

    .line 267
    :cond_0
    return-void
.end method
