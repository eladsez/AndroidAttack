.class Landroid/support/design/widget/b$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/design/widget/SwipeDismissBehavior$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/b;->b()V
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

    iput-object p1, p0, Landroid/support/design/widget/b$5;->a:Landroid/support/design/widget/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-static {}, Landroid/support/design/widget/j;->a()Landroid/support/design/widget/j;

    move-result-object p1

    iget-object v0, p0, Landroid/support/design/widget/b$5;->a:Landroid/support/design/widget/b;

    iget-object v0, v0, Landroid/support/design/widget/b;->c:Landroid/support/design/widget/j$a;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/j;->c(Landroid/support/design/widget/j$a;)V

    return-void

    :pswitch_1
    invoke-static {}, Landroid/support/design/widget/j;->a()Landroid/support/design/widget/j;

    move-result-object p1

    iget-object v0, p0, Landroid/support/design/widget/b$5;->a:Landroid/support/design/widget/b;

    iget-object v0, v0, Landroid/support/design/widget/b;->c:Landroid/support/design/widget/j$a;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/j;->d(Landroid/support/design/widget/j$a;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroid/support/design/widget/b$5;->a:Landroid/support/design/widget/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/b;->a(I)V

    return-void
.end method
