.class Landroid/support/v4/widget/n$6;
.super Landroid/view/animation/Animation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/n;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/n;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/n$6;->a:Landroid/support/v4/widget/n;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    iget-object p2, p0, Landroid/support/v4/widget/n$6;->a:Landroid/support/v4/widget/n;

    iget-boolean p2, p2, Landroid/support/v4/widget/n;->l:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Landroid/support/v4/widget/n$6;->a:Landroid/support/v4/widget/n;

    iget p2, p2, Landroid/support/v4/widget/n;->i:I

    iget-object v0, p0, Landroid/support/v4/widget/n$6;->a:Landroid/support/v4/widget/n;

    iget v0, v0, Landroid/support/v4/widget/n;->h:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int/2addr p2, v0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroid/support/v4/widget/n$6;->a:Landroid/support/v4/widget/n;

    iget p2, p2, Landroid/support/v4/widget/n;->i:I

    :goto_0
    iget-object v0, p0, Landroid/support/v4/widget/n$6;->a:Landroid/support/v4/widget/n;

    iget v0, v0, Landroid/support/v4/widget/n;->f:I

    iget-object v1, p0, Landroid/support/v4/widget/n$6;->a:Landroid/support/v4/widget/n;

    iget v1, v1, Landroid/support/v4/widget/n;->f:I

    sub-int/2addr p2, v1

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p2, p2

    add-int/2addr v0, p2

    iget-object p2, p0, Landroid/support/v4/widget/n$6;->a:Landroid/support/v4/widget/n;

    iget-object p2, p2, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {p2}, Landroid/support/v4/widget/c;->getTop()I

    move-result p2

    sub-int/2addr v0, p2

    iget-object p2, p0, Landroid/support/v4/widget/n$6;->a:Landroid/support/v4/widget/n;

    invoke-virtual {p2, v0}, Landroid/support/v4/widget/n;->setTargetOffsetTopAndBottom(I)V

    iget-object p2, p0, Landroid/support/v4/widget/n$6;->a:Landroid/support/v4/widget/n;

    iget-object p2, p2, Landroid/support/v4/widget/n;->j:Landroid/support/v4/widget/d;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Landroid/support/v4/widget/d;->b(F)V

    return-void
.end method
