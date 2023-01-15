.class Ljp/beyond/sdk/layout/BeadDialog$7;
.super Ljava/lang/Object;
.source "BeadDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/beyond/sdk/layout/BeadDialog;->setFinishButtonClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/beyond/sdk/layout/BeadDialog;


# direct methods
.method constructor <init>(Ljp/beyond/sdk/layout/BeadDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/beyond/sdk/layout/BeadDialog$7;->this$0:Ljp/beyond/sdk/layout/BeadDialog;

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 503
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadDialog$7;->this$0:Ljp/beyond/sdk/layout/BeadDialog;

    invoke-virtual {v0}, Ljp/beyond/sdk/layout/BeadDialog;->dismiss()V

    .line 505
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadDialog$7;->this$0:Ljp/beyond/sdk/layout/BeadDialog;

    invoke-static {v0}, Ljp/beyond/sdk/layout/BeadDialog;->access$0(Ljp/beyond/sdk/layout/BeadDialog;)Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadDialog$7;->this$0:Ljp/beyond/sdk/layout/BeadDialog;

    invoke-static {v0}, Ljp/beyond/sdk/layout/BeadDialog;->access$0(Ljp/beyond/sdk/layout/BeadDialog;)Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;->onFinishButtonClick(Landroid/view/View;)V

    .line 508
    :cond_0
    return-void
.end method
