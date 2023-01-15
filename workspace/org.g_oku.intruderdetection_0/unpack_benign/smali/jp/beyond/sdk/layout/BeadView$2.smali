.class Ljp/beyond/sdk/layout/BeadView$2;
.super Ljava/lang/Object;
.source "BeadView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/beyond/sdk/layout/BeadView;->setWebViewClickListener(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/beyond/sdk/layout/BeadView;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljp/beyond/sdk/layout/BeadView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/beyond/sdk/layout/BeadView$2;->this$0:Ljp/beyond/sdk/layout/BeadView;

    iput-object p2, p0, Ljp/beyond/sdk/layout/BeadView$2;->val$url:Ljava/lang/String;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 222
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 224
    const-string v0, "BEAD"

    const-string v1, "Clicked WebView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadView$2;->this$0:Ljp/beyond/sdk/layout/BeadView;

    invoke-static {v0}, Ljp/beyond/sdk/layout/BeadView;->access$1(Ljp/beyond/sdk/layout/BeadView;)Ljp/beyond/sdk/layout/BeadView$BeadViewEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadView$2;->this$0:Ljp/beyond/sdk/layout/BeadView;

    invoke-static {v0}, Ljp/beyond/sdk/layout/BeadView;->access$1(Ljp/beyond/sdk/layout/BeadView;)Ljp/beyond/sdk/layout/BeadView$BeadViewEventListener;

    move-result-object v0

    iget-object v1, p0, Ljp/beyond/sdk/layout/BeadView$2;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljp/beyond/sdk/layout/BeadView$BeadViewEventListener;->onWebViewClick(Ljava/lang/String;)V

    .line 232
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
