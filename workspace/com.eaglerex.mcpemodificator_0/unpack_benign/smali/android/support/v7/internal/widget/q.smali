.class Landroid/support/v7/internal/widget/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/k;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/k;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/k;Landroid/support/v7/internal/widget/l;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/q;-><init>(Landroid/support/v7/internal/widget/k;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/k;

    iget-boolean v0, v0, Landroid/support/v7/internal/widget/k;->u:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/k;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/k;->e()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/k;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/k;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/k;

    invoke-static {v0}, Landroid/support/v7/internal/widget/k;->b(Landroid/support/v7/internal/widget/k;)V

    goto :goto_0
.end method
