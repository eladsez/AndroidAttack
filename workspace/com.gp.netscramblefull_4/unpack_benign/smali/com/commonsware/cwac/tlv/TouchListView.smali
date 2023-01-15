.class public Lcom/commonsware/cwac/tlv/TouchListView;
.super Landroid/widget/ListView;
.source "TouchListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/commonsware/cwac/tlv/TouchListView$DragListener;,
        Lcom/commonsware/cwac/tlv/TouchListView$DropListener;,
        Lcom/commonsware/cwac/tlv/TouchListView$RemoveListener;
    }
.end annotation


# static fields
.field public static final FLING:I = 0x0

.field public static final SLIDE_LEFT:I = 0x2

.field public static final SLIDE_RIGHT:I = 0x1


# instance fields
.field private dragndropBackgroundColor:I

.field private mCoordOffset:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragListener:Lcom/commonsware/cwac/tlv/TouchListView$DragListener;

.field private mDragPoint:I

.field private mDragPos:I

.field private mDragView:Landroid/widget/ImageView;

.field private mDropListener:Lcom/commonsware/cwac/tlv/TouchListView$DropListener;

.field private mFirstDragPos:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHeight:I

.field private mItemHeightExpanded:I

.field private mItemHeightNormal:I

.field private mLowerBound:I

.field private mRemoveListener:Lcom/commonsware/cwac/tlv/TouchListView$RemoveListener;

.field private mRemoveMode:I

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchSlop:I

.field private mUpperBound:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/commonsware/cwac/tlv/TouchListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iput v4, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mRemoveMode:I

    .line 59
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mTempRect:Landroid/graphics/Rect;

    .line 62
    iput v4, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mItemHeightNormal:I

    .line 63
    iput v4, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mItemHeightExpanded:I

    .line 65
    iput v3, p0, Lcom/commonsware/cwac/tlv/TouchListView;->dragndropBackgroundColor:I

    .line 74
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mTouchSlop:I

    .line 76
    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 79
    sget-object v2, Lorg/hermit/android/R$styleable;->TouchListView:[I

    .line 78
    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mItemHeightNormal:I

    .line 83
    const/4 v1, 0x1

    iget v2, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mItemHeightNormal:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mItemHeightExpanded:I

    .line 88
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->dragndropBackgroundColor:I

    .line 89
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mRemoveMode:I

    .line 91
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/commonsware/cwac/tlv/TouchListView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/commonsware/cwac/tlv/TouchListView;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2(Lcom/commonsware/cwac/tlv/TouchListView;)V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->stopDragging()V

    return-void
.end method

.method static synthetic access$3(Lcom/commonsware/cwac/tlv/TouchListView;)Lcom/commonsware/cwac/tlv/TouchListView$RemoveListener;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mRemoveListener:Lcom/commonsware/cwac/tlv/TouchListView$RemoveListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/commonsware/cwac/tlv/TouchListView;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mFirstDragPos:I

    return v0
.end method

.method static synthetic access$5(Lcom/commonsware/cwac/tlv/TouchListView;Z)V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/commonsware/cwac/tlv/TouchListView;->unExpandViews(Z)V

    return-void
.end method

.method private adjustScrollBounds(I)V
    .locals 1
    .param p1, "y"    # I

    .prologue
    .line 199
    iget v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_0

    .line 200
    iget v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mUpperBound:I

    .line 202
    :cond_0
    iget v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1

    .line 203
    iget v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mLowerBound:I

    .line 205
    :cond_1
    return-void
.end method

.method private doExpansion()V
    .locals 10

    .prologue
    .line 248
    iget v7, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v0, v7, v8

    .line 249
    .local v0, "childnum":I
    iget v7, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragPos:I

    iget v8, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mFirstDragPos:I

    if-le v7, v8, :cond_0

    .line 250
    add-int/lit8 v0, v0, 0x1

    .line 253
    :cond_0
    iget v7, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mFirstDragPos:I

    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/commonsware/cwac/tlv/TouchListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 255
    .local v1, "first":Landroid/view/View;
    const/4 v3, 0x0

    .line 256
    .local v3, "i":I
    :goto_0
    invoke-virtual {p0, v3}, Lcom/commonsware/cwac/tlv/TouchListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 257
    .local v6, "vv":Landroid/view/View;
    if-nez v6, :cond_1

    .line 281
    return-void

    .line 260
    :cond_1
    iget v2, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mItemHeightNormal:I

    .line 261
    .local v2, "height":I
    const/4 v5, 0x0

    .line 262
    .local v5, "visibility":I
    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 264
    iget v7, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragPos:I

    iget v8, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mFirstDragPos:I

    if-ne v7, v8, :cond_3

    .line 266
    const/4 v5, 0x4

    .line 276
    :cond_2
    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 277
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 278
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 255
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 269
    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 271
    :cond_4
    if-ne v3, v0, :cond_2

    .line 272
    iget v7, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getCount()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-ge v7, v8, :cond_2

    .line 273
    iget v2, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mItemHeightExpanded:I

    goto :goto_1
.end method

.method private dragView(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 387
    const/high16 v0, 0x3f800000    # 1.0f

    .line 388
    .local v0, "alpha":F
    iget-object v2, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 390
    .local v1, "width":I
    iget v2, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mRemoveMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 391
    div-int/lit8 v2, v1, 0x2

    if-le p1, v2, :cond_0

    .line 392
    sub-int v2, v1, p1

    int-to-float v2, v2

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 394
    :cond_0
    iget-object v2, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 402
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragPoint:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mCoordOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 403
    iget-object v2, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    return-void

    .line 396
    :cond_2
    iget v2, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mRemoveMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 397
    div-int/lit8 v2, v1, 0x2

    if-ge p1, v2, :cond_3

    .line 398
    int-to-float v2, p1

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 400
    :cond_3
    iget-object v2, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    goto :goto_0
.end method

.method private getItemForPosition(I)I
    .locals 4
    .param p1, "y"    # I

    .prologue
    .line 186
    iget v2, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragPoint:I

    sub-int v2, p1, v2

    const/16 v3, 0x20

    sub-int v0, v2, v3

    .line 187
    .local v0, "adjustedy":I
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/commonsware/cwac/tlv/TouchListView;->myPointToPosition(II)I

    move-result v1

    .line 188
    .local v1, "pos":I
    if-ltz v1, :cond_1

    .line 189
    iget v2, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mFirstDragPos:I

    if-gt v1, v2, :cond_0

    .line 190
    add-int/lit8 v1, v1, 0x1

    .line 195
    :cond_0
    :goto_0
    return v1

    .line 192
    :cond_1
    if-gez v0, :cond_0

    .line 193
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private myPointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 173
    iget-object v2, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mTempRect:Landroid/graphics/Rect;

    .line 174
    .local v2, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getChildCount()I

    move-result v1

    .line 175
    .local v1, "count":I
    const/4 v4, 0x1

    sub-int v3, v1, v4

    .local v3, "i":I
    :goto_0
    if-gez v3, :cond_0

    .line 182
    const/4 v4, -0x1

    :goto_1
    return v4

    .line 176
    :cond_0
    invoke-virtual {p0, v3}, Lcom/commonsware/cwac/tlv/TouchListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 177
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 178
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getFirstVisiblePosition()I

    move-result v4

    add-int/2addr v4, v3

    goto :goto_1

    .line 175
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method private startDragging(Landroid/graphics/Bitmap;I)V
    .locals 6
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 359
    invoke-direct {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->stopDragging()V

    .line 361
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 362
    iget-object v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x30

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 363
    iget-object v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 364
    iget-object v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragPoint:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mCoordOffset:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 366
    iget-object v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 367
    iget-object v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 368
    iget-object v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x198

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 372
    iget-object v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 373
    iget-object v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 375
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 377
    .local v0, "v":Landroid/widget/ImageView;
    iget v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->dragndropBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 378
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 379
    iput-object p1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 381
    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mWindowManager:Landroid/view/WindowManager;

    .line 382
    iget-object v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    iput-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragView:Landroid/widget/ImageView;

    .line 384
    return-void
.end method

.method private stopDragging()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 407
    iget-object v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 409
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 410
    iget-object v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 411
    iput-object v3, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragView:Landroid/widget/ImageView;

    .line 413
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_0
    iget-object v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 415
    iput-object v3, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 417
    :cond_1
    return-void
.end method

.method private unExpandViews(Z)V
    .locals 7
    .param p1, "deletion"    # Z

    .prologue
    const/4 v6, 0x0

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/commonsware/cwac/tlv/TouchListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 213
    .local v3, "v":Landroid/view/View;
    if-nez v3, :cond_1

    .line 214
    if-eqz p1, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getFirstVisiblePosition()I

    move-result v2

    .line 217
    .local v2, "position":I
    invoke-virtual {p0, v6}, Lcom/commonsware/cwac/tlv/TouchListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 218
    .local v4, "y":I
    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/commonsware/cwac/tlv/TouchListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 219
    invoke-virtual {p0, v2, v4}, Lcom/commonsware/cwac/tlv/TouchListView;->setSelectionFromTop(II)V

    .line 222
    .end local v2    # "position":I
    .end local v4    # "y":I
    :cond_0
    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->layoutChildren()V

    .line 223
    invoke-virtual {p0, v0}, Lcom/commonsware/cwac/tlv/TouchListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 224
    if-nez v3, :cond_1

    .line 233
    return-void

    .line 228
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 229
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mItemHeightNormal:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 230
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 97
    iget-object v8, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mRemoveListener:Lcom/commonsware/cwac/tlv/TouchListView$RemoveListener;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v8, :cond_0

    .line 98
    iget v8, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mRemoveMode:I

    if-nez v8, :cond_0

    .line 99
    new-instance v8, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/commonsware/cwac/tlv/TouchListView$1;

    invoke-direct {v10, p0}, Lcom/commonsware/cwac/tlv/TouchListView$1;-><init>(Lcom/commonsware/cwac/tlv/TouchListView;)V

    invoke-direct {v8, v9, v10}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v8, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 122
    :cond_0
    iget-object v8, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragListener:Lcom/commonsware/cwac/tlv/TouchListView$DragListener;

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDropListener:Lcom/commonsware/cwac/tlv/TouchListView$DropListener;

    if-eqz v8, :cond_2

    .line 123
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 165
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    :goto_1
    return v8

    .line 125
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 126
    .local v6, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 127
    .local v7, "y":I
    invoke-virtual {p0, v6, v7}, Lcom/commonsware/cwac/tlv/TouchListView;->pointToPosition(II)I

    move-result v3

    .line 128
    .local v3, "itemnum":I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_2

    .line 131
    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v3, v8

    invoke-virtual {p0, v8}, Lcom/commonsware/cwac/tlv/TouchListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 132
    .local v2, "item":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    sub-int v8, v7, v8

    iput v8, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragPoint:I

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v8, v7

    iput v8, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mCoordOffset:I

    .line 137
    const v8, 0x7f050005

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 139
    .local v1, "dragger":Landroid/view/View;
    iget-object v4, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mTempRect:Landroid/graphics/Rect;

    .line 142
    .local v4, "r":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 143
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v8

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 144
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, v4, Landroid/graphics/Rect;->top:I

    .line 145
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 147
    iget v8, v4, Landroid/graphics/Rect;->left:I

    if-ge v8, v6, :cond_3

    iget v8, v4, Landroid/graphics/Rect;->right:I

    if-ge v6, v8, :cond_3

    .line 148
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 151
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 152
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v7}, Lcom/commonsware/cwac/tlv/TouchListView;->startDragging(Landroid/graphics/Bitmap;I)V

    .line 153
    iput v3, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragPos:I

    .line 154
    iget v8, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragPos:I

    iput v8, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mFirstDragPos:I

    .line 155
    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mHeight:I

    .line 156
    iget v5, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mTouchSlop:I

    .line 157
    .local v5, "touchSlop":I
    sub-int v8, v7, v5

    iget v9, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mHeight:I

    div-int/lit8 v9, v9, 0x3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mUpperBound:I

    .line 158
    add-int v8, v7, v5

    iget v9, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mHeight:I

    mul-int/lit8 v9, v9, 0x2

    div-int/lit8 v9, v9, 0x3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mLowerBound:I

    .line 159
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 161
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "touchSlop":I
    :cond_3
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragView:Landroid/widget/ImageView;

    goto/16 :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 285
    iget-object v9, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v9, :cond_0

    .line 286
    iget-object v9, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v9, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 288
    :cond_0
    iget-object v9, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragListener:Lcom/commonsware/cwac/tlv/TouchListView$DragListener;

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDropListener:Lcom/commonsware/cwac/tlv/TouchListView$DropListener;

    if-eqz v9, :cond_10

    :cond_1
    iget-object v9, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v9, :cond_10

    .line 289
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 290
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_0
    move v9, v12

    .line 355
    .end local v0    # "action":I
    :goto_1
    return v9

    .line 293
    .restart local v0    # "action":I
    :pswitch_0
    iget-object v3, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mTempRect:Landroid/graphics/Rect;

    .line 294
    .local v3, "r":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 295
    invoke-direct {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->stopDragging()V

    .line 297
    iget v9, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mRemoveMode:I

    if-ne v9, v12, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    mul-int/lit8 v11, v11, 0x3

    div-int/lit8 v11, v11, 0x4

    add-int/2addr v10, v11

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    .line 298
    iget-object v9, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mRemoveListener:Lcom/commonsware/cwac/tlv/TouchListView$RemoveListener;

    if-eqz v9, :cond_3

    .line 299
    iget-object v9, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mRemoveListener:Lcom/commonsware/cwac/tlv/TouchListView$RemoveListener;

    iget v10, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mFirstDragPos:I

    invoke-interface {v9, v10}, Lcom/commonsware/cwac/tlv/TouchListView$RemoveListener;->remove(I)V

    .line 301
    :cond_3
    invoke-direct {p0, v12}, Lcom/commonsware/cwac/tlv/TouchListView;->unExpandViews(Z)V

    goto :goto_0

    .line 302
    :cond_4
    iget v9, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mRemoveMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/lit8 v11, v11, 0x4

    add-int/2addr v10, v11

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_6

    .line 303
    iget-object v9, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mRemoveListener:Lcom/commonsware/cwac/tlv/TouchListView$RemoveListener;

    if-eqz v9, :cond_5

    .line 304
    iget-object v9, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mRemoveListener:Lcom/commonsware/cwac/tlv/TouchListView$RemoveListener;

    iget v10, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mFirstDragPos:I

    invoke-interface {v9, v10}, Lcom/commonsware/cwac/tlv/TouchListView$RemoveListener;->remove(I)V

    .line 306
    :cond_5
    invoke-direct {p0, v12}, Lcom/commonsware/cwac/tlv/TouchListView;->unExpandViews(Z)V

    goto :goto_0

    .line 308
    :cond_6
    iget-object v9, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDropListener:Lcom/commonsware/cwac/tlv/TouchListView$DropListener;

    if-eqz v9, :cond_7

    iget v9, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragPos:I

    if-ltz v9, :cond_7

    iget v9, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getCount()I

    move-result v10

    if-ge v9, v10, :cond_7

    .line 309
    iget-object v9, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDropListener:Lcom/commonsware/cwac/tlv/TouchListView$DropListener;

    iget v10, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mFirstDragPos:I

    iget v11, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragPos:I

    invoke-interface {v9, v10, v11}, Lcom/commonsware/cwac/tlv/TouchListView$DropListener;->drop(II)V

    .line 311
    :cond_7
    invoke-direct {p0, v13}, Lcom/commonsware/cwac/tlv/TouchListView;->unExpandViews(Z)V

    goto :goto_0

    .line 317
    .end local v3    # "r":Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 318
    .local v7, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 319
    .local v8, "y":I
    invoke-direct {p0, v7, v8}, Lcom/commonsware/cwac/tlv/TouchListView;->dragView(II)V

    .line 320
    invoke-direct {p0, v8}, Lcom/commonsware/cwac/tlv/TouchListView;->getItemForPosition(I)I

    move-result v1

    .line 321
    .local v1, "itemnum":I
    if-ltz v1, :cond_2

    .line 322
    if-eqz v0, :cond_8

    iget v9, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragPos:I

    if-eq v1, v9, :cond_a

    .line 323
    :cond_8
    iget-object v9, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragListener:Lcom/commonsware/cwac/tlv/TouchListView$DragListener;

    if-eqz v9, :cond_9

    .line 324
    iget-object v9, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragListener:Lcom/commonsware/cwac/tlv/TouchListView$DragListener;

    iget v10, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragPos:I

    invoke-interface {v9, v10, v1}, Lcom/commonsware/cwac/tlv/TouchListView$DragListener;->drag(II)V

    .line 326
    :cond_9
    iput v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragPos:I

    .line 327
    invoke-direct {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->doExpansion()V

    .line 329
    :cond_a
    const/4 v5, 0x0

    .line 330
    .local v5, "speed":I
    invoke-direct {p0, v8}, Lcom/commonsware/cwac/tlv/TouchListView;->adjustScrollBounds(I)V

    .line 331
    iget v9, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mLowerBound:I

    if-le v8, v9, :cond_e

    .line 333
    iget v9, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mHeight:I

    iget v10, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mLowerBound:I

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    if-le v8, v9, :cond_d

    const/16 v9, 0x10

    move v5, v9

    .line 338
    :cond_b
    :goto_2
    if-eqz v5, :cond_2

    .line 339
    iget v9, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0, v13, v9}, Lcom/commonsware/cwac/tlv/TouchListView;->pointToPosition(II)I

    move-result v4

    .line 340
    .local v4, "ref":I
    const/4 v9, -0x1

    if-ne v4, v9, :cond_c

    .line 342
    iget v9, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getDividerHeight()I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x40

    invoke-virtual {p0, v13, v9}, Lcom/commonsware/cwac/tlv/TouchListView;->pointToPosition(II)I

    move-result v4

    .line 344
    :cond_c
    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p0, v9}, Lcom/commonsware/cwac/tlv/TouchListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 345
    .local v6, "v":Landroid/view/View;
    if-eqz v6, :cond_2

    .line 346
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    .line 347
    .local v2, "pos":I
    sub-int v9, v2, v5

    invoke-virtual {p0, v4, v9}, Lcom/commonsware/cwac/tlv/TouchListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 333
    .end local v2    # "pos":I
    .end local v4    # "ref":I
    .end local v6    # "v":Landroid/view/View;
    :cond_d
    const/4 v9, 0x4

    move v5, v9

    goto :goto_2

    .line 334
    :cond_e
    iget v9, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mUpperBound:I

    if-ge v8, v9, :cond_b

    .line 336
    iget v9, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mUpperBound:I

    div-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_f

    const/16 v9, -0x10

    move v5, v9

    :goto_3
    goto :goto_2

    :cond_f
    const/4 v9, -0x4

    move v5, v9

    goto :goto_3

    .line 355
    .end local v0    # "action":I
    .end local v1    # "itemnum":I
    .end local v5    # "speed":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_10
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_1

    .line 290
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDragListener(Lcom/commonsware/cwac/tlv/TouchListView$DragListener;)V
    .locals 0
    .param p1, "l"    # Lcom/commonsware/cwac/tlv/TouchListView$DragListener;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDragListener:Lcom/commonsware/cwac/tlv/TouchListView$DragListener;

    .line 421
    return-void
.end method

.method public setDropListener(Lcom/commonsware/cwac/tlv/TouchListView$DropListener;)V
    .locals 0
    .param p1, "l"    # Lcom/commonsware/cwac/tlv/TouchListView$DropListener;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mDropListener:Lcom/commonsware/cwac/tlv/TouchListView$DropListener;

    .line 425
    return-void
.end method

.method public setRemoveListener(Lcom/commonsware/cwac/tlv/TouchListView$RemoveListener;)V
    .locals 0
    .param p1, "l"    # Lcom/commonsware/cwac/tlv/TouchListView$RemoveListener;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->mRemoveListener:Lcom/commonsware/cwac/tlv/TouchListView$RemoveListener;

    .line 429
    return-void
.end method
