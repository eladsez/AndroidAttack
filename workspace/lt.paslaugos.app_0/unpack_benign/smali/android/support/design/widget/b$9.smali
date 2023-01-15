.class Landroid/support/design/widget/b$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/design/widget/b$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/b;


# direct methods
.method constructor <init>(Landroid/support/design/widget/b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/b$9;->a:Landroid/support/design/widget/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IIII)V
    .locals 0

    iget-object p1, p0, Landroid/support/design/widget/b$9;->a:Landroid/support/design/widget/b;

    iget-object p1, p1, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/design/widget/b$f;->setOnLayoutChangeListener(Landroid/support/design/widget/b$e;)V

    iget-object p1, p0, Landroid/support/design/widget/b$9;->a:Landroid/support/design/widget/b;

    invoke-virtual {p1}, Landroid/support/design/widget/b;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/design/widget/b$9;->a:Landroid/support/design/widget/b;

    invoke-virtual {p1}, Landroid/support/design/widget/b;->d()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/support/design/widget/b$9;->a:Landroid/support/design/widget/b;

    invoke-virtual {p1}, Landroid/support/design/widget/b;->e()V

    :goto_0
    return-void
.end method
