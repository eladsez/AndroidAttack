.class public Lcom/picvision/seaweedweather/views/MyGallery;
.super Landroid/widget/Gallery;
.source "MyGallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field e1:Landroid/view/MotionEvent;

.field private isScroll:Z

.field private toLeft:Z

.field private toRight:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 24
    iput-boolean v0, p0, Lcom/picvision/seaweedweather/views/MyGallery;->isScroll:Z

    .line 25
    iput-boolean v0, p0, Lcom/picvision/seaweedweather/views/MyGallery;->toRight:Z

    .line 26
    iput-boolean v0, p0, Lcom/picvision/seaweedweather/views/MyGallery;->toLeft:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput-boolean v0, p0, Lcom/picvision/seaweedweather/views/MyGallery;->isScroll:Z

    .line 25
    iput-boolean v0, p0, Lcom/picvision/seaweedweather/views/MyGallery;->toRight:Z

    .line 26
    iput-boolean v0, p0, Lcom/picvision/seaweedweather/views/MyGallery;->toLeft:Z

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    iput-boolean v0, p0, Lcom/picvision/seaweedweather/views/MyGallery;->isScroll:Z

    .line 25
    iput-boolean v0, p0, Lcom/picvision/seaweedweather/views/MyGallery;->toRight:Z

    .line 26
    iput-boolean v0, p0, Lcom/picvision/seaweedweather/views/MyGallery;->toLeft:Z

    .line 67
    return-void
.end method


# virtual methods
.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public isScroll()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/picvision/seaweedweather/views/MyGallery;->isScroll:Z

    return v0
.end method

.method public isToLeft()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/picvision/seaweedweather/views/MyGallery;->toLeft:Z

    return v0
.end method

.method public isToRight()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/picvision/seaweedweather/views/MyGallery;->toRight:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 85
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 106
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 135
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 136
    .local v0, "outRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/picvision/seaweedweather/views/MyGallery;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/picvision/seaweedweather/views/MyGallery;->e1:Landroid/view/MotionEvent;

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v3, 0x0

    invoke-super {p0, v1, p1, v2, v3}, Landroid/widget/Gallery;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 142
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 145
    :goto_1
    return v1

    .line 139
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 140
    iput-object p1, p0, Lcom/picvision/seaweedweather/views/MyGallery;->e1:Landroid/view/MotionEvent;

    goto :goto_0

    .line 145
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setScroll(Z)V
    .locals 0
    .param p1, "isScroll"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/picvision/seaweedweather/views/MyGallery;->isScroll:Z

    .line 52
    return-void
.end method

.method public setToLeft(Z)V
    .locals 0
    .param p1, "toLeft"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/picvision/seaweedweather/views/MyGallery;->toLeft:Z

    .line 125
    return-void
.end method

.method public setToRight(Z)V
    .locals 0
    .param p1, "toRight"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/picvision/seaweedweather/views/MyGallery;->toRight:Z

    .line 115
    return-void
.end method
