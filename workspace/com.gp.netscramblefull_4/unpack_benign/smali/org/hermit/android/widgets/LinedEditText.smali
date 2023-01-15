.class public Lorg/hermit/android/widgets/LinedEditText;
.super Landroid/widget/EditText;
.source "LinedEditText.java"


# static fields
.field private static final LINE_COLOUR:I = 0x600000ff


# instance fields
.field private drawPaint:Landroid/graphics/Paint;

.field private drawRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/hermit/android/widgets/LinedEditText;->drawRect:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/hermit/android/widgets/LinedEditText;->drawPaint:Landroid/graphics/Paint;

    .line 51
    iget-object v0, p0, Lorg/hermit/android/widgets/LinedEditText;->drawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v0, p0, Lorg/hermit/android/widgets/LinedEditText;->drawPaint:Landroid/graphics/Paint;

    const v1, 0x600000ff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 67
    iget-object v9, p0, Lorg/hermit/android/widgets/LinedEditText;->drawRect:Landroid/graphics/Rect;

    .line 68
    .local v9, "r":Landroid/graphics/Rect;
    iget-object v5, p0, Lorg/hermit/android/widgets/LinedEditText;->drawPaint:Landroid/graphics/Paint;

    .line 71
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lorg/hermit/android/widgets/LinedEditText;->getLineCount()I

    move-result v7

    .line 72
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-lt v8, v7, :cond_0

    .line 78
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 79
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0, v8, v9}, Lorg/hermit/android/widgets/LinedEditText;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v6

    .line 75
    .local v6, "baseline":I
    iget v0, v9, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    add-int/lit8 v0, v6, 0x1

    int-to-float v2, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    add-int/lit8 v0, v6, 0x1

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 72
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method
