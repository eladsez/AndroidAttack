.class Ljp/beyond/sdk/layout/BeadCloseButton;
.super Landroid/widget/Button;
.source "BeadCloseButton.java"


# static fields
.field private static final BUTTON_DOWN_COLOR:I

.field private static final BUTTON_UP_COLOR:I = -0x10000


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    const/16 v0, 0xff

    const/16 v1, 0xc8

    invoke-static {v0, v1, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Ljp/beyond/sdk/layout/BeadCloseButton;->BUTTON_DOWN_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private drawCross(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 168
    invoke-direct {p0}, Ljp/beyond/sdk/layout/BeadCloseButton;->getRedRectangleWidth()I

    move-result v13

    .line 169
    .local v13, "redRectWidth":I
    int-to-float v0, v13

    const v6, 0x3e666666    # 0.225f

    mul-float v12, v0, v6

    .line 171
    .local v12, "margin":F
    invoke-virtual {p0}, Ljp/beyond/sdk/layout/BeadCloseButton;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v6, v13, 0x2

    sub-int/2addr v0, v6

    int-to-float v0, v0

    add-float v1, v0, v12

    .line 172
    .local v1, "left":F
    invoke-virtual {p0}, Ljp/beyond/sdk/layout/BeadCloseButton;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v6, v13, 0x2

    sub-int/2addr v0, v6

    int-to-float v0, v0

    add-float v2, v0, v12

    .line 173
    .local v2, "top":F
    invoke-virtual {p0}, Ljp/beyond/sdk/layout/BeadCloseButton;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v6, v13, 0x2

    add-int/2addr v0, v6

    int-to-float v0, v0

    sub-float v3, v0, v12

    .line 174
    .local v3, "right":F
    invoke-virtual {p0}, Ljp/beyond/sdk/layout/BeadCloseButton;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v6, v13, 0x2

    add-int/2addr v0, v6

    int-to-float v0, v0

    sub-float v4, v0, v12

    .line 176
    .local v4, "bottom":F
    invoke-direct {p0}, Ljp/beyond/sdk/layout/BeadCloseButton;->getCrossPaint()Landroid/graphics/Paint;

    move-result-object v5

    .local v5, "paint":Landroid/graphics/Paint;
    move-object v0, p1

    .line 179
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object v6, p1

    move v7, v1

    move v8, v4

    move v9, v3

    move v10, v2

    move-object v11, v5

    .line 181
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 182
    return-void
.end method

.method private drawRedRectangle(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 127
    invoke-direct {p0}, Ljp/beyond/sdk/layout/BeadCloseButton;->getWhiteFrameStrokeWidth()I

    move-result v3

    .line 128
    .local v3, "whiteFrameWidth":I
    mul-int/lit8 v2, v3, 0x2

    .line 129
    .local v2, "redRectMargin":I
    div-int/lit8 v0, v3, 0x2

    .line 131
    .local v0, "margin":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 132
    .local v1, "rect":Landroid/graphics/Rect;
    sub-int v4, v2, v0

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 133
    sub-int v4, v2, v0

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 134
    invoke-virtual {p0}, Ljp/beyond/sdk/layout/BeadCloseButton;->getWidth()I

    move-result v4

    sub-int/2addr v4, v2

    add-int/2addr v4, v0

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 135
    invoke-virtual {p0}, Ljp/beyond/sdk/layout/BeadCloseButton;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    add-int/2addr v4, v0

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 137
    invoke-direct {p0}, Ljp/beyond/sdk/layout/BeadCloseButton;->getRedRectanglePaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 138
    return-void
.end method

.method private drawWhiteFrame(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 76
    invoke-direct {p0}, Ljp/beyond/sdk/layout/BeadCloseButton;->getWhiteFrameMargin()I

    move-result v0

    .line 77
    .local v0, "margin":I
    new-instance v2, Landroid/graphics/Rect;

    .line 80
    invoke-virtual {p0}, Ljp/beyond/sdk/layout/BeadCloseButton;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    .line 81
    invoke-virtual {p0}, Ljp/beyond/sdk/layout/BeadCloseButton;->getHeight()I

    move-result v4

    sub-int/2addr v4, v0

    .line 77
    invoke-direct {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 82
    .local v2, "rect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 83
    .local v1, "paint":Landroid/graphics/Paint;
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    invoke-direct {p0}, Ljp/beyond/sdk/layout/BeadCloseButton;->getWhiteFrameStrokeWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 87
    return-void
.end method

.method private getButtonColor()I
    .locals 2

    .prologue
    .line 102
    const/high16 v0, -0x10000

    .line 103
    .local v0, "color":I
    invoke-virtual {p0}, Ljp/beyond/sdk/layout/BeadCloseButton;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    sget v0, Ljp/beyond/sdk/layout/BeadCloseButton;->BUTTON_DOWN_COLOR:I

    .line 106
    :cond_0
    return v0
.end method

.method private getCrossPaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 154
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 156
    invoke-direct {p0}, Ljp/beyond/sdk/layout/BeadCloseButton;->getCrossStrokeWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 157
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 158
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 159
    return-object v0
.end method

.method private getCrossStrokeWidth()I
    .locals 2

    .prologue
    .line 145
    invoke-direct {p0}, Ljp/beyond/sdk/layout/BeadCloseButton;->getRedRectangleWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3e000000    # 0.125f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getRedRectanglePaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 115
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-direct {p0}, Ljp/beyond/sdk/layout/BeadCloseButton;->getButtonColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 118
    return-object v0
.end method

.method private getRedRectangleWidth()I
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Ljp/beyond/sdk/layout/BeadCloseButton;->getWidth()I

    move-result v0

    invoke-direct {p0}, Ljp/beyond/sdk/layout/BeadCloseButton;->getWhiteFrameStrokeWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method private getWhiteFrameMargin()I
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljp/beyond/sdk/layout/BeadCloseButton;->getWhiteFrameStrokeWidth()I

    move-result v0

    return v0
.end method

.method private getWhiteFrameStrokeWidth()I
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p0}, Ljp/beyond/sdk/layout/BeadCloseButton;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 56
    .local v0, "width":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 57
    add-int/lit8 v0, v0, 0x1

    .line 59
    :cond_0
    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 38
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 41
    invoke-direct {p0, p1}, Ljp/beyond/sdk/layout/BeadCloseButton;->drawWhiteFrame(Landroid/graphics/Canvas;)V

    .line 44
    invoke-direct {p0, p1}, Ljp/beyond/sdk/layout/BeadCloseButton;->drawRedRectangle(Landroid/graphics/Canvas;)V

    .line 47
    invoke-direct {p0, p1}, Ljp/beyond/sdk/layout/BeadCloseButton;->drawCross(Landroid/graphics/Canvas;)V

    .line 48
    return-void
.end method
