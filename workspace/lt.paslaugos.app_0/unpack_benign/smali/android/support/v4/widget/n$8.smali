.class Landroid/support/v4/widget/n$8;
.super Landroid/view/animation/Animation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/n;->c(ILandroid/view/animation/Animation$AnimationListener;)V
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

    iput-object p1, p0, Landroid/support/v4/widget/n$8;->a:Landroid/support/v4/widget/n;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    iget-object p2, p0, Landroid/support/v4/widget/n$8;->a:Landroid/support/v4/widget/n;

    iget p2, p2, Landroid/support/v4/widget/n;->g:F

    iget-object v0, p0, Landroid/support/v4/widget/n$8;->a:Landroid/support/v4/widget/n;

    iget v0, v0, Landroid/support/v4/widget/n;->g:F

    neg-float v0, v0

    mul-float v0, v0, p1

    add-float/2addr p2, v0

    iget-object v0, p0, Landroid/support/v4/widget/n$8;->a:Landroid/support/v4/widget/n;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/n;->setAnimationProgress(F)V

    iget-object p2, p0, Landroid/support/v4/widget/n$8;->a:Landroid/support/v4/widget/n;

    invoke-virtual {p2, p1}, Landroid/support/v4/widget/n;->a(F)V

    return-void
.end method
