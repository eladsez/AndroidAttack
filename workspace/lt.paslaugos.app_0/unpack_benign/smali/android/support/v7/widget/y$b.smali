.class Landroid/support/v7/widget/y$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/y;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/y;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/y$b;->a:Landroid/support/v7/widget/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/y;Landroid/support/v7/widget/y$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/y$b;-><init>(Landroid/support/v7/widget/y;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/y$b;->a:Landroid/support/v7/widget/y;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/y;->a(Landroid/support/v7/widget/y;Landroid/support/v7/widget/y$b;)Landroid/support/v7/widget/y$b;

    iget-object v0, p0, Landroid/support/v7/widget/y$b;->a:Landroid/support/v7/widget/y;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/y;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/y$b;->a:Landroid/support/v7/widget/y;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/y;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/y$b;->a:Landroid/support/v7/widget/y;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/y;->a(Landroid/support/v7/widget/y;Landroid/support/v7/widget/y$b;)Landroid/support/v7/widget/y$b;

    iget-object v0, p0, Landroid/support/v7/widget/y$b;->a:Landroid/support/v7/widget/y;

    invoke-virtual {v0}, Landroid/support/v7/widget/y;->drawableStateChanged()V

    return-void
.end method
