.class Landroid/support/design/widget/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/d;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/d;


# direct methods
.method constructor <init>(Landroid/support/design/widget/d;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/d$3;->a:Landroid/support/design/widget/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/d$3;->a:Landroid/support/design/widget/d;

    invoke-virtual {v0}, Landroid/support/design/widget/d;->i()V

    const/4 v0, 0x1

    return v0
.end method