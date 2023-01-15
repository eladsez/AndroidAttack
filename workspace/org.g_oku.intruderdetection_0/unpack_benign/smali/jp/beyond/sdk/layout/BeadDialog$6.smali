.class Ljp/beyond/sdk/layout/BeadDialog$6;
.super Ljava/lang/Object;
.source "BeadDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/beyond/sdk/layout/BeadDialog;->setDownloadButtonClickListener(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/beyond/sdk/layout/BeadDialog;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljp/beyond/sdk/layout/BeadDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/beyond/sdk/layout/BeadDialog$6;->this$0:Ljp/beyond/sdk/layout/BeadDialog;

    iput-object p2, p0, Ljp/beyond/sdk/layout/BeadDialog$6;->val$url:Ljava/lang/String;

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 480
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadDialog$6;->this$0:Ljp/beyond/sdk/layout/BeadDialog;

    invoke-static {v0}, Ljp/beyond/sdk/layout/BeadDialog;->access$0(Ljp/beyond/sdk/layout/BeadDialog;)Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadDialog$6;->this$0:Ljp/beyond/sdk/layout/BeadDialog;

    invoke-static {v0}, Ljp/beyond/sdk/layout/BeadDialog;->access$0(Ljp/beyond/sdk/layout/BeadDialog;)Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;

    move-result-object v0

    iget-object v1, p0, Ljp/beyond/sdk/layout/BeadDialog$6;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;->onDownloadButtonClick(Ljava/lang/String;)V

    .line 483
    :cond_0
    return-void
.end method
