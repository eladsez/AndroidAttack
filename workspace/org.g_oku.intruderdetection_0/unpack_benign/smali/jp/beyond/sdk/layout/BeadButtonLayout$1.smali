.class Ljp/beyond/sdk/layout/BeadButtonLayout$1;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
.source "BeadButtonLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/beyond/sdk/layout/BeadButtonLayout;->createMultigradientButtonDrawable(Landroid/content/Context;[I[I)Landroid/graphics/drawable/StateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/beyond/sdk/layout/BeadButtonLayout;

.field private final synthetic val$downGradient:[I


# direct methods
.method constructor <init>(Ljp/beyond/sdk/layout/BeadButtonLayout;[I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/beyond/sdk/layout/BeadButtonLayout$1;->this$0:Ljp/beyond/sdk/layout/BeadButtonLayout;

    iput-object p2, p0, Ljp/beyond/sdk/layout/BeadButtonLayout$1;->val$downGradient:[I

    .line 192
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public resize(II)Landroid/graphics/Shader;
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 195
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v4, p2

    .line 196
    iget-object v5, p0, Ljp/beyond/sdk/layout/BeadButtonLayout$1;->val$downGradient:[I

    .line 197
    const/4 v2, 0x4

    new-array v6, v2, [F

    fill-array-data v6, :array_0

    .line 199
    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    .line 195
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 200
    .local v0, "linearGradient":Landroid/graphics/LinearGradient;
    return-object v0

    .line 197
    :array_0
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method
