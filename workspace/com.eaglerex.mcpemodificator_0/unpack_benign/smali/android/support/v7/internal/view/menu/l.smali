.class public Landroid/support/v7/internal/view/menu/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/internal/view/menu/u;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/view/LayoutInflater;

.field c:Landroid/support/v7/internal/view/menu/n;

.field d:I

.field e:I

.field f:Landroid/support/v7/internal/view/menu/m;

.field private g:I

.field private h:Landroid/support/v7/internal/view/menu/v;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v7/internal/view/menu/l;->e:I

    iput p2, p0, Landroid/support/v7/internal/view/menu/l;->d:I

    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/view/menu/l;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/internal/view/menu/l;->g:I

    return v0
.end method


# virtual methods
.method public a()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->f:Landroid/support/v7/internal/view/menu/m;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/internal/view/menu/m;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/m;-><init>(Landroid/support/v7/internal/view/menu/l;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/l;->f:Landroid/support/v7/internal/view/menu/m;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->f:Landroid/support/v7/internal/view/menu/m;

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;)V
    .locals 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/l;->d:I

    if-eqz v0, :cond_2

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Landroid/support/v7/internal/view/menu/l;->d:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/l;->a:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/l;->b:Landroid/view/LayoutInflater;

    :cond_0
    :goto_0
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/l;->c:Landroid/support/v7/internal/view/menu/n;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->f:Landroid/support/v7/internal/view/menu/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->f:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/m;->notifyDataSetChanged()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/l;->a:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/l;->b:Landroid/view/LayoutInflater;

    goto :goto_0
.end method

.method public a(Landroid/support/v7/internal/view/menu/n;Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->h:Landroid/support/v7/internal/view/menu/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->h:Landroid/support/v7/internal/view/menu/v;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/v;->a(Landroid/support/v7/internal/view/menu/n;Z)V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/v;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/l;->h:Landroid/support/v7/internal/view/menu/v;

    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/n;Landroid/support/v7/internal/view/menu/r;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/internal/view/menu/y;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/y;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Landroid/support/v7/internal/view/menu/q;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/menu/q;-><init>(Landroid/support/v7/internal/view/menu/n;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/q;->a(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->h:Landroid/support/v7/internal/view/menu/v;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->h:Landroid/support/v7/internal/view/menu/v;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/view/menu/v;->a(Landroid/support/v7/internal/view/menu/n;)Z

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->f:Landroid/support/v7/internal/view/menu/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->f:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/m;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public b(Landroid/support/v7/internal/view/menu/n;Landroid/support/v7/internal/view/menu/r;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->c:Landroid/support/v7/internal/view/menu/n;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/l;->f:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v1, p3}, Landroid/support/v7/internal/view/menu/m;->a(I)Landroid/support/v7/internal/view/menu/r;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/view/MenuItem;I)Z

    return-void
.end method
