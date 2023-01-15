.class Ljp/beyond/sdk/layout/BeadDialog$5;
.super Ljava/lang/Object;
.source "BeadDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/beyond/sdk/layout/BeadDialog;->setCancelButtonClickListener()V
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
    iput-object p1, p0, Ljp/beyond/sdk/layout/BeadDialog$5;->this$0:Ljp/beyond/sdk/layout/BeadDialog;

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 454
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadDialog$5;->this$0:Ljp/beyond/sdk/layout/BeadDialog;

    invoke-virtual {v0}, Ljp/beyond/sdk/layout/BeadDialog;->dismiss()V

    .line 456
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadDialog$5;->this$0:Ljp/beyond/sdk/layout/BeadDialog;

    invoke-static {v0}, Ljp/beyond/sdk/layout/BeadDialog;->access$0(Ljp/beyond/sdk/layout/BeadDialog;)Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadDialog$5;->this$0:Ljp/beyond/sdk/layout/BeadDialog;

    invoke-static {v0}, Ljp/beyond/sdk/layout/BeadDialog;->access$0(Ljp/beyond/sdk/layout/BeadDialog;)Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;->onCancelButtonClick(Landroid/view/View;)V

    .line 459
    :cond_0
    return-void
.end method
