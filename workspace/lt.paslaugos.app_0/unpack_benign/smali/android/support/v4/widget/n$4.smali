.class Landroid/support/v4/widget/n$4;
.super Landroid/view/animation/Animation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/n;->a(II)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroid/support/v4/widget/n;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/n;II)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/n$4;->c:Landroid/support/v4/widget/n;

    iput p2, p0, Landroid/support/v4/widget/n$4;->a:I

    iput p3, p0, Landroid/support/v4/widget/n$4;->b:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    iget-object p2, p0, Landroid/support/v4/widget/n$4;->c:Landroid/support/v4/widget/n;

    iget-object p2, p2, Landroid/support/v4/widget/n;->j:Landroid/support/v4/widget/d;

    iget v0, p0, Landroid/support/v4/widget/n$4;->a:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v4/widget/n$4;->b:I

    iget v2, p0, Landroid/support/v4/widget/n$4;->a:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    invoke-virtual {p2, p1}, Landroid/support/v4/widget/d;->setAlpha(I)V

    return-void
.end method
