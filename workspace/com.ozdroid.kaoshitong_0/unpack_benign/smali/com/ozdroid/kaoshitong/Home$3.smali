.class Lcom/ozdroid/kaoshitong/Home$3;
.super Ljava/lang/Object;
.source "Home.java"

# interfaces
.implements Lcom/ozdroid/kaoshitong/ui/OnInfoDialogSubmitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ozdroid/kaoshitong/Home;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ozdroid/kaoshitong/Home;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/Home;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/Home$3;->this$0:Lcom/ozdroid/kaoshitong/Home;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCancelClick(Z)V
    .locals 0
    .param p1, "checkbox"    # Z

    .prologue
    .line 231
    return-void
.end method

.method public OnSubmitClick(Z)V
    .locals 1
    .param p1, "checkbox"    # Z

    .prologue
    .line 235
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Home$3;->this$0:Lcom/ozdroid/kaoshitong/Home;

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/Home;->finish()V

    .line 236
    return-void
.end method
