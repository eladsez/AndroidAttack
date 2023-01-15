.class Landroid/support/v7/widget/af$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/af;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/af;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/af$c;->a:Landroid/support/v7/widget/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/af$c;->a:Landroid/support/v7/widget/af;

    invoke-virtual {p1}, Landroid/support/v7/widget/af;->n()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/af$c;->a:Landroid/support/v7/widget/af;

    iget-object p1, p1, Landroid/support/v7/widget/af;->g:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/af$c;->a:Landroid/support/v7/widget/af;

    iget-object p1, p1, Landroid/support/v7/widget/af;->f:Landroid/os/Handler;

    iget-object p2, p0, Landroid/support/v7/widget/af$c;->a:Landroid/support/v7/widget/af;

    iget-object p2, p2, Landroid/support/v7/widget/af;->e:Landroid/support/v7/widget/af$e;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Landroid/support/v7/widget/af$c;->a:Landroid/support/v7/widget/af;

    iget-object p1, p1, Landroid/support/v7/widget/af;->e:Landroid/support/v7/widget/af$e;

    invoke-virtual {p1}, Landroid/support/v7/widget/af$e;->run()V

    :cond_0
    return-void
.end method
