.class Ljp/beyond/sdk/layout/BeadView$4;
.super Ljava/lang/Object;
.source "BeadView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/beyond/sdk/layout/BeadView;->setLabelTextClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/beyond/sdk/layout/BeadView;


# direct methods
.method constructor <init>(Ljp/beyond/sdk/layout/BeadView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/beyond/sdk/layout/BeadView$4;->this$0:Ljp/beyond/sdk/layout/BeadView;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 283
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 287
    const/4 v0, 0x0

    return v0
.end method
