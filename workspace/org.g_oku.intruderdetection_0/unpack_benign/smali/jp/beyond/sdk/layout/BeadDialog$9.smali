.class Ljp/beyond/sdk/layout/BeadDialog$9;
.super Ljava/lang/Object;
.source "BeadDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/beyond/sdk/layout/BeadDialog;->setWebViewClickListener()V
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
    iput-object p1, p0, Ljp/beyond/sdk/layout/BeadDialog$9;->this$0:Ljp/beyond/sdk/layout/BeadDialog;

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 561
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 562
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadDialog$9;->this$0:Ljp/beyond/sdk/layout/BeadDialog;

    invoke-static {v0}, Ljp/beyond/sdk/layout/BeadDialog;->access$8(Ljp/beyond/sdk/layout/BeadDialog;)V

    .line 564
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
