.class Ljp/beyond/sdk/layout/BeadButtonLayout;
.super Ljava/lang/Object;
.source "BeadButtonLayout.java"


# static fields
.field private static final BUTTON_BOTTOM_PADDING:I = 0xc

.field private static final BUTTON_CORNER_RADIUS:I = 0x5

.field private static final BUTTON_GRADIENT_ORIENTATION:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field private static final BUTTON_STROKE_WIDTH:I = 0x2

.field private static final BUTTON_TOP_PADDING:I = 0xc

.field private static final DEFAULT_BUTTON_DOWN_BOTTOM_COLOR:I

.field private static final DEFAULT_BUTTON_DOWN_GRADIENT_COLOR:[I

.field private static final DEFAULT_BUTTON_DOWN_STROKE_COLOR:I

.field private static final DEFAULT_BUTTON_DOWN_TOP_COLOR:I

.field private static final DEFAULT_BUTTON_UP_BOTTOM_COLOR:I

.field private static final DEFAULT_BUTTON_UP_GRADIENT_COLOR:[I

.field private static final DEFAULT_BUTTON_UP_STROKE_COLOR:I

.field private static final DEFAULT_BUTTON_UP_TOP_COLOR:I

.field private static final GREEN_BUTTON_DOWN_BOTTOM_COLOR:I

.field private static final GREEN_BUTTON_DOWN_GRADIENT_COLOR:[I

.field private static final GREEN_BUTTON_DOWN_STROKE_COLOR:I

.field private static final GREEN_BUTTON_DOWN_TOP_COLOR:I

.field private static final GREEN_BUTTON_UP_BOTTOM_COLOR:I

.field private static final GREEN_BUTTON_UP_GRADIENT_COLOR:[I

.field private static final GREEN_BUTTON_UP_STROKE_COLOR:I

.field private static final GREEN_BUTTON_UP_TOP_COLOR:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x92

    const/16 v5, 0x15

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 26
    const/16 v0, 0xcc

    const/16 v1, 0xd1

    const/16 v2, 0xd4

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Ljp/beyond/sdk/layout/BeadButtonLayout;->DEFAULT_BUTTON_DOWN_TOP_COLOR:I

    .line 29
    const/16 v0, 0x77

    const/16 v1, 0x81

    const/16 v2, 0x85

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Ljp/beyond/sdk/layout/BeadButtonLayout;->DEFAULT_BUTTON_DOWN_BOTTOM_COLOR:I

    .line 32
    const/16 v0, 0x6e

    const/16 v1, 0x73

    const/16 v2, 0x76

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Ljp/beyond/sdk/layout/BeadButtonLayout;->DEFAULT_BUTTON_DOWN_STROKE_COLOR:I

    .line 35
    const/16 v0, 0xee

    const/16 v1, 0xf1

    const/16 v2, 0xf4

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Ljp/beyond/sdk/layout/BeadButtonLayout;->DEFAULT_BUTTON_UP_TOP_COLOR:I

    .line 38
    const/16 v0, 0xbc

    const/16 v1, 0xc1

    const/16 v2, 0xc4

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Ljp/beyond/sdk/layout/BeadButtonLayout;->DEFAULT_BUTTON_UP_BOTTOM_COLOR:I

    .line 41
    const/16 v0, 0xbe

    const/16 v1, 0xc3

    const/16 v2, 0xc6

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Ljp/beyond/sdk/layout/BeadButtonLayout;->DEFAULT_BUTTON_UP_STROKE_COLOR:I

    .line 44
    const/16 v0, 0x1f

    const/16 v1, 0xda

    invoke-static {v0, v1, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Ljp/beyond/sdk/layout/BeadButtonLayout;->GREEN_BUTTON_DOWN_TOP_COLOR:I

    .line 47
    invoke-static {v5, v6, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Ljp/beyond/sdk/layout/BeadButtonLayout;->GREEN_BUTTON_DOWN_BOTTOM_COLOR:I

    .line 50
    const/16 v0, 0xa

    const/4 v1, 0x7

    const/16 v2, 0x3d

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Ljp/beyond/sdk/layout/BeadButtonLayout;->GREEN_BUTTON_DOWN_STROKE_COLOR:I

    .line 53
    const/16 v0, 0x4b

    const/16 v1, 0xfa

    const/16 v2, 0x22

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Ljp/beyond/sdk/layout/BeadButtonLayout;->GREEN_BUTTON_UP_TOP_COLOR:I

    .line 56
    const/16 v0, 0x16

    const/16 v1, 0x99

    invoke-static {v0, v1, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Ljp/beyond/sdk/layout/BeadButtonLayout;->GREEN_BUTTON_UP_BOTTOM_COLOR:I

    .line 59
    invoke-static {v5, v6, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Ljp/beyond/sdk/layout/BeadButtonLayout;->GREEN_BUTTON_UP_STROKE_COLOR:I

    .line 62
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljp/beyond/sdk/layout/BeadButtonLayout;->GREEN_BUTTON_DOWN_GRADIENT_COLOR:[I

    .line 70
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Ljp/beyond/sdk/layout/BeadButtonLayout;->GREEN_BUTTON_UP_GRADIENT_COLOR:[I

    .line 78
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Ljp/beyond/sdk/layout/BeadButtonLayout;->DEFAULT_BUTTON_DOWN_GRADIENT_COLOR:[I

    .line 86
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Ljp/beyond/sdk/layout/BeadButtonLayout;->DEFAULT_BUTTON_UP_GRADIENT_COLOR:[I

    .line 100
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sput-object v0, Ljp/beyond/sdk/layout/BeadButtonLayout;->BUTTON_GRADIENT_ORIENTATION:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 106
    return-void

    .line 62
    :array_0
    .array-data 4
        -0x337f5e9d    # -6.7439384E7f
        -0x33d8b1e6    # -4.3858024E7f
        -0x33e6c5f4    # -4.0167472E7f
        -0x33bc7ff1    # -5.1249212E7f
    .end array-data

    .line 70
    :array_1
    .array-data 4
        -0x573b6c
        -0xbb78d3
        -0xcb86e8
        -0x983ae9
    .end array-data

    .line 78
    :array_2
    .array-data 4
        -0x33665651    # -8.0563576E7f
        -0x33a5a4a6    # -5.7240936E7f
        -0x33c5c5c6    # -4.8818408E7f
        -0x337f7f80    # -6.7372032E7f
    .end array-data

    .line 86
    :array_3
    .array-data 4
        -0x363639
        -0x6e6e6d
        -0x848682
        -0x353537
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createButtonDrawable(Landroid/content/Context;[I[III)Landroid/graphics/drawable/StateListDrawable;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "downGradient"    # [I
    .param p3, "upGradient"    # [I
    .param p4, "downStrokeColor"    # I
    .param p5, "upStrokeColor"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 153
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 155
    .local v3, "sld":Landroid/graphics/drawable/StateListDrawable;
    const/4 v5, 0x2

    invoke-static {p1, v5}, Ljp/beyond/sdk/utilities/MathUtil;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v4

    .line 156
    .local v4, "strokeWidth":I
    const/4 v5, 0x5

    invoke-static {p1, v5}, Ljp/beyond/sdk/utilities/MathUtil;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    .line 159
    .local v0, "cornerRadius":I
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Ljp/beyond/sdk/layout/BeadButtonLayout;->BUTTON_GRADIENT_ORIENTATION:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v5, p2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 160
    .local v1, "gdDown":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v1, v4, p4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 161
    int-to-float v5, v0

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 162
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 165
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Ljp/beyond/sdk/layout/BeadButtonLayout;->BUTTON_GRADIENT_ORIENTATION:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v2, v5, p3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 166
    .local v2, "gdUp":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v2, v4, p5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 167
    int-to-float v5, v0

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 168
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 170
    new-array v5, v8, [I

    const v6, 0x10100a7

    aput v6, v5, v7

    invoke-virtual {v3, v5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 171
    new-array v5, v8, [I

    const v6, -0x10100a7

    aput v6, v5, v7

    invoke-virtual {v3, v5, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 173
    return-object v3
.end method

.method private createMultigradientButtonDrawable(Landroid/content/Context;[I[I)Landroid/graphics/drawable/StateListDrawable;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "downGradient"    # [I
    .param p3, "upGradient"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 187
    new-instance v5, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 189
    .local v5, "sld":Landroid/graphics/drawable/StateListDrawable;
    const/4 v6, 0x5

    invoke-static {p1, v6}, Ljp/beyond/sdk/utilities/MathUtil;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    .line 192
    .local v0, "cornerRadius":I
    new-instance v3, Ljp/beyond/sdk/layout/BeadButtonLayout$1;

    invoke-direct {v3, p0, p2}, Ljp/beyond/sdk/layout/BeadButtonLayout$1;-><init>(Ljp/beyond/sdk/layout/BeadButtonLayout;[I)V

    .line 203
    .local v3, "shaderFactoryDown":Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
    new-instance v1, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    .line 204
    .local v1, "gdDown":Landroid/graphics/drawable/PaintDrawable;
    new-instance v6, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v6}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 205
    int-to-float v6, v0

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 206
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/PaintDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    .line 209
    new-instance v4, Ljp/beyond/sdk/layout/BeadButtonLayout$2;

    invoke-direct {v4, p0, p3}, Ljp/beyond/sdk/layout/BeadButtonLayout$2;-><init>(Ljp/beyond/sdk/layout/BeadButtonLayout;[I)V

    .line 220
    .local v4, "shaderFactoryUp":Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
    new-instance v2, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    .line 221
    .local v2, "gdUp":Landroid/graphics/drawable/PaintDrawable;
    new-instance v6, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v6}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 222
    int-to-float v6, v0

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 223
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/PaintDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    .line 225
    new-array v6, v9, [I

    const v7, 0x10100a7

    aput v7, v6, v8

    invoke-virtual {v5, v6, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 226
    new-array v6, v9, [I

    const v7, -0x10100a7

    aput v7, v6, v8

    invoke-virtual {v5, v6, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 228
    return-object v5
.end method


# virtual methods
.method public createDefaultButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    .line 123
    sget-object v0, Ljp/beyond/sdk/layout/BeadButtonLayout;->DEFAULT_BUTTON_DOWN_GRADIENT_COLOR:[I

    .line 124
    sget-object v1, Ljp/beyond/sdk/layout/BeadButtonLayout;->DEFAULT_BUTTON_UP_GRADIENT_COLOR:[I

    .line 121
    invoke-direct {p0, p1, v0, v1}, Ljp/beyond/sdk/layout/BeadButtonLayout;->createMultigradientButtonDrawable(Landroid/content/Context;[I[I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public createGreenButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    .line 137
    sget-object v0, Ljp/beyond/sdk/layout/BeadButtonLayout;->GREEN_BUTTON_DOWN_GRADIENT_COLOR:[I

    .line 138
    sget-object v1, Ljp/beyond/sdk/layout/BeadButtonLayout;->GREEN_BUTTON_UP_GRADIENT_COLOR:[I

    .line 135
    invoke-direct {p0, p1, v0, v1}, Ljp/beyond/sdk/layout/BeadButtonLayout;->createMultigradientButtonDrawable(Landroid/content/Context;[I[I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public setButtonPadding(Landroid/content/Context;Landroid/widget/Button;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "button"    # Landroid/widget/Button;

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x0

    .line 236
    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_0

    .line 237
    invoke-virtual {p2, v4, v4, v4, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 243
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-static {p1, v5}, Ljp/beyond/sdk/utilities/MathUtil;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v1

    .line 240
    .local v1, "topPixel":I
    invoke-static {p1, v5}, Ljp/beyond/sdk/utilities/MathUtil;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    .line 241
    .local v0, "bottomPixel":I
    invoke-virtual {p2, v4, v1, v4, v0}, Landroid/widget/Button;->setPadding(IIII)V

    goto :goto_0
.end method
