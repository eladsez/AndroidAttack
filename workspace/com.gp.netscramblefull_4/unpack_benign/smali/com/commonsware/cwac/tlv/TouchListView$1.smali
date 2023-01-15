.class Lcom/commonsware/cwac/tlv/TouchListView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TouchListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/commonsware/cwac/tlv/TouchListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/commonsware/cwac/tlv/TouchListView;


# direct methods
.method constructor <init>(Lcom/commonsware/cwac/tlv/TouchListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/commonsware/cwac/tlv/TouchListView$1;->this$0:Lcom/commonsware/cwac/tlv/TouchListView;

    .line 99
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v3, 0x1

    .line 103
    iget-object v1, p0, Lcom/commonsware/cwac/tlv/TouchListView$1;->this$0:Lcom/commonsware/cwac/tlv/TouchListView;

    invoke-static {v1}, Lcom/commonsware/cwac/tlv/TouchListView;->access$0(Lcom/commonsware/cwac/tlv/TouchListView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 104
    const/high16 v1, 0x447a0000    # 1000.0f

    cmpl-float v1, p3, v1

    if-lez v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/commonsware/cwac/tlv/TouchListView$1;->this$0:Lcom/commonsware/cwac/tlv/TouchListView;

    invoke-static {v1}, Lcom/commonsware/cwac/tlv/TouchListView;->access$1(Lcom/commonsware/cwac/tlv/TouchListView;)Landroid/graphics/Rect;

    move-result-object v0

    .line 106
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/commonsware/cwac/tlv/TouchListView$1;->this$0:Lcom/commonsware/cwac/tlv/TouchListView;

    invoke-static {v1}, Lcom/commonsware/cwac/tlv/TouchListView;->access$0(Lcom/commonsware/cwac/tlv/TouchListView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 107
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/commonsware/cwac/tlv/TouchListView$1;->this$0:Lcom/commonsware/cwac/tlv/TouchListView;

    invoke-static {v1}, Lcom/commonsware/cwac/tlv/TouchListView;->access$2(Lcom/commonsware/cwac/tlv/TouchListView;)V

    .line 110
    iget-object v1, p0, Lcom/commonsware/cwac/tlv/TouchListView$1;->this$0:Lcom/commonsware/cwac/tlv/TouchListView;

    invoke-static {v1}, Lcom/commonsware/cwac/tlv/TouchListView;->access$3(Lcom/commonsware/cwac/tlv/TouchListView;)Lcom/commonsware/cwac/tlv/TouchListView$RemoveListener;

    move-result-object v1

    iget-object v2, p0, Lcom/commonsware/cwac/tlv/TouchListView$1;->this$0:Lcom/commonsware/cwac/tlv/TouchListView;

    invoke-static {v2}, Lcom/commonsware/cwac/tlv/TouchListView;->access$4(Lcom/commonsware/cwac/tlv/TouchListView;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/commonsware/cwac/tlv/TouchListView$RemoveListener;->remove(I)V

    .line 111
    iget-object v1, p0, Lcom/commonsware/cwac/tlv/TouchListView$1;->this$0:Lcom/commonsware/cwac/tlv/TouchListView;

    invoke-static {v1, v3}, Lcom/commonsware/cwac/tlv/TouchListView;->access$5(Lcom/commonsware/cwac/tlv/TouchListView;Z)V

    .end local v0    # "r":Landroid/graphics/Rect;
    :cond_0
    move v1, v3

    .line 117
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
