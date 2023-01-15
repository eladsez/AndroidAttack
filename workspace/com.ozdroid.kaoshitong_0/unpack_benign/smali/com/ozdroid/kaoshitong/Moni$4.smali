.class Lcom/ozdroid/kaoshitong/Moni$4;
.super Ljava/lang/Object;
.source "Moni.java"

# interfaces
.implements Lcom/ozdroid/kaoshitong/ui/OnInfoDialogSubmitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ozdroid/kaoshitong/Moni;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ozdroid/kaoshitong/Moni;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/Moni;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/Moni$4;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCancelClick(Z)V
    .locals 0
    .param p1, "checkbox"    # Z

    .prologue
    .line 254
    return-void
.end method

.method public OnSubmitClick(Z)V
    .locals 3
    .param p1, "checkbox"    # Z

    .prologue
    .line 258
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni$4;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Moni;->access$10(Lcom/ozdroid/kaoshitong/Moni;)V

    .line 259
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni$4;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Moni;->access$11(Lcom/ozdroid/kaoshitong/Moni;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni$4;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Moni;->access$12(Lcom/ozdroid/kaoshitong/Moni;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020056

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 264
    :goto_0
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni$4;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Moni;->access$13(Lcom/ozdroid/kaoshitong/Moni;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5206\u6570\u4e3a:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Moni$4;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v2}, Lcom/ozdroid/kaoshitong/Moni;->access$14(Lcom/ozdroid/kaoshitong/Moni;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni$4;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Moni;->access$15(Lcom/ozdroid/kaoshitong/Moni;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6b63\u786e\u6570:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Moni$4;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v2}, Lcom/ozdroid/kaoshitong/Moni;->access$16(Lcom/ozdroid/kaoshitong/Moni;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni$4;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Moni;->access$17(Lcom/ozdroid/kaoshitong/Moni;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9519\u8bef\u6570:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Moni$4;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v2}, Lcom/ozdroid/kaoshitong/Moni;->access$18(Lcom/ozdroid/kaoshitong/Moni;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni$4;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Moni;->access$19(Lcom/ozdroid/kaoshitong/Moni;)V

    .line 268
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni$4;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Moni;->access$12(Lcom/ozdroid/kaoshitong/Moni;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02005f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method
