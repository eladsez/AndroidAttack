.class Lcom/ozdroid/kaoshitong/Moni$2;
.super Ljava/lang/Object;
.source "Moni.java"

# interfaces
.implements Lcom/ozdroid/kaoshitong/ui/SinpperListener;


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
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/Moni$2;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSCancelClick()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public OnSubmitClick(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni$2;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    iput p1, v0, Lcom/ozdroid/kaoshitong/Moni;->currentIndex:I

    .line 216
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni$2;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Moni;->access$8(Lcom/ozdroid/kaoshitong/Moni;)V

    .line 217
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni$2;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Moni;->access$9(Lcom/ozdroid/kaoshitong/Moni;)V

    .line 218
    return-void
.end method