.class Ljp/beyond/sdk/layout/BeadView$3;
.super Ljava/lang/Object;
.source "BeadView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/beyond/sdk/layout/BeadView;->setLogoClickListener(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/beyond/sdk/layout/BeadView;

.field private final synthetic val$BannerID:I


# direct methods
.method constructor <init>(Ljp/beyond/sdk/layout/BeadView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/beyond/sdk/layout/BeadView$3;->this$0:Ljp/beyond/sdk/layout/BeadView;

    iput p2, p0, Ljp/beyond/sdk/layout/BeadView$3;->val$BannerID:I

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 253
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 254
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadView$3;->this$0:Ljp/beyond/sdk/layout/BeadView;

    invoke-static {v0}, Ljp/beyond/sdk/layout/BeadView;->access$2(Ljp/beyond/sdk/layout/BeadView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadView$3;->this$0:Ljp/beyond/sdk/layout/BeadView;

    iget v1, p0, Ljp/beyond/sdk/layout/BeadView$3;->val$BannerID:I

    invoke-static {v0, v1}, Ljp/beyond/sdk/layout/BeadView;->access$0(Ljp/beyond/sdk/layout/BeadView;I)V

    .line 257
    const-string v0, "Clicked"

    const-string v1, "logo Clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 259
    :cond_1
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadView$3;->this$0:Ljp/beyond/sdk/layout/BeadView;

    invoke-static {v0}, Ljp/beyond/sdk/layout/BeadView;->access$1(Ljp/beyond/sdk/layout/BeadView;)Ljp/beyond/sdk/layout/BeadView$BeadViewEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadView$3;->this$0:Ljp/beyond/sdk/layout/BeadView;

    invoke-static {v0}, Ljp/beyond/sdk/layout/BeadView;->access$1(Ljp/beyond/sdk/layout/BeadView;)Ljp/beyond/sdk/layout/BeadView$BeadViewEventListener;

    move-result-object v0

    const-string v1, "http://bead-ad.com"

    invoke-interface {v0, v1}, Ljp/beyond/sdk/layout/BeadView$BeadViewEventListener;->onBannerLogoViewClick(Ljava/lang/String;)V

    goto :goto_0
.end method
