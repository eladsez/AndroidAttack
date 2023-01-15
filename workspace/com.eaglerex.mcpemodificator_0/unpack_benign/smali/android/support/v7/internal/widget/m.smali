.class Landroid/support/v7/internal/widget/m;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/k;

.field private b:Landroid/os/Parcelable;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/k;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/k;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/widget/m;->b:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/k;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/internal/widget/k;->u:Z

    iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/k;

    iget-object v1, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/k;

    iget v1, v1, Landroid/support/v7/internal/widget/k;->z:I

    iput v1, v0, Landroid/support/v7/internal/widget/k;->A:I

    iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/k;

    iget-object v1, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/k;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/k;->e()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Landroid/support/v7/internal/widget/k;->z:I

    iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/k;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/k;->e()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/m;->b:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/k;

    iget v0, v0, Landroid/support/v7/internal/widget/k;->A:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/k;

    iget v0, v0, Landroid/support/v7/internal/widget/k;->z:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/k;

    iget-object v1, p0, Landroid/support/v7/internal/widget/m;->b:Landroid/os/Parcelable;

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/k;->a(Landroid/support/v7/internal/widget/k;Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/widget/m;->b:Landroid/os/Parcelable;

    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/k;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/k;->i()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/k;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/k;->requestLayout()V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/k;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/k;->n()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 6

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/k;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/internal/widget/k;->u:Z

    iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/k;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/k;->e()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/k;

    invoke-static {v0}, Landroid/support/v7/internal/widget/k;->a(Landroid/support/v7/internal/widget/k;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/m;->b:Landroid/os/Parcelable;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/k;

    iget-object v1, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/k;

    iget v1, v1, Landroid/support/v7/internal/widget/k;->z:I

    iput v1, v0, Landroid/support/v7/internal/widget/k;->A:I

    iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/k;

    iput v3, v0, Landroid/support/v7/internal/widget/k;->z:I

    iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/k;

    iput v2, v0, Landroid/support/v7/internal/widget/k;->x:I

    iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/k;

    iput-wide v4, v0, Landroid/support/v7/internal/widget/k;->y:J

    iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/k;

    iput v2, v0, Landroid/support/v7/internal/widget/k;->v:I

    iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/k;

    iput-wide v4, v0, Landroid/support/v7/internal/widget/k;->w:J

    iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/k;

    iput-boolean v3, v0, Landroid/support/v7/internal/widget/k;->p:Z

    iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/k;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/k;->i()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/k;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/k;->requestLayout()V

    return-void
.end method
