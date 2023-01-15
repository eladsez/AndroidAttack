.class Ljp/beyond/sdk/layout/BeadDialog$1;
.super Ljava/lang/Object;
.source "BeadDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/beyond/sdk/layout/BeadDialog;->setBackKeyClickListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/beyond/sdk/layout/BeadDialog;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljp/beyond/sdk/layout/BeadDialog;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/beyond/sdk/layout/BeadDialog$1;->this$0:Ljp/beyond/sdk/layout/BeadDialog;

    iput-object p2, p0, Ljp/beyond/sdk/layout/BeadDialog$1;->val$context:Landroid/content/Context;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 342
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadDialog$1;->this$0:Ljp/beyond/sdk/layout/BeadDialog;

    invoke-static {v0}, Ljp/beyond/sdk/layout/BeadDialog;->access$0(Ljp/beyond/sdk/layout/BeadDialog;)Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadDialog$1;->this$0:Ljp/beyond/sdk/layout/BeadDialog;

    invoke-static {v0}, Ljp/beyond/sdk/layout/BeadDialog;->access$0(Ljp/beyond/sdk/layout/BeadDialog;)Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;

    move-result-object v0

    invoke-interface {v0}, Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;->onBackKeyClick()V

    .line 344
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadDialog$1;->this$0:Ljp/beyond/sdk/layout/BeadDialog;

    iget-object v1, p0, Ljp/beyond/sdk/layout/BeadDialog$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Ljp/beyond/sdk/layout/BeadDialog$1;->this$0:Ljp/beyond/sdk/layout/BeadDialog;

    invoke-static {v2}, Ljp/beyond/sdk/layout/BeadDialog;->access$1(Ljp/beyond/sdk/layout/BeadDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljp/beyond/sdk/layout/BeadDialog;->access$2(Ljp/beyond/sdk/layout/BeadDialog;Landroid/content/Context;Ljava/lang/String;)V

    .line 346
    :cond_0
    return-void
.end method
