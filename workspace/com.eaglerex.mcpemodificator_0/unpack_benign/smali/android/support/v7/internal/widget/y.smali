.class Landroid/support/v7/internal/widget/y;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/t;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/t;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/widget/y;->a:Landroid/support/v7/internal/widget/t;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/t;Landroid/support/v7/internal/widget/u;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/y;-><init>(Landroid/support/v7/internal/widget/t;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/y;->a:Landroid/support/v7/internal/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/t;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/y;->a:Landroid/support/v7/internal/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/t;->c()V

    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/y;->a:Landroid/support/v7/internal/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/t;->d()V

    return-void
.end method
