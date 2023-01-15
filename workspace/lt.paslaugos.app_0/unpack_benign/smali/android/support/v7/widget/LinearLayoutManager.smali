.class public Landroid/support/v7/widget/LinearLayoutManager;
.super Landroid/support/v7/widget/ak$i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/LinearLayoutManager$b;,
        Landroid/support/v7/widget/LinearLayoutManager$a;,
        Landroid/support/v7/widget/LinearLayoutManager$d;,
        Landroid/support/v7/widget/LinearLayoutManager$c;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v7/widget/LinearLayoutManager$c;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private final g:Landroid/support/v7/widget/LinearLayoutManager$b;

.field private h:I

.field i:I

.field j:Landroid/support/v7/widget/aj;

.field k:Z

.field l:I

.field m:I

.field n:Landroid/support/v7/widget/LinearLayoutManager$d;

.field final o:Landroid/support/v7/widget/LinearLayoutManager$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/ak$i;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p1}, Landroid/support/v7/widget/LinearLayoutManager$a;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager$b;

    invoke-direct {p1}, Landroid/support/v7/widget/LinearLayoutManager$b;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Landroid/support/v7/widget/LinearLayoutManager$b;

    const/4 p1, 0x2

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)V

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->b(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/widget/ak$i;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$b;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$b;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Landroid/support/v7/widget/LinearLayoutManager$b;

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:I

    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/ak$i$b;

    move-result-object p1

    iget p2, p1, Landroid/support/v7/widget/ak$i$b;->a:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)V

    iget-boolean p2, p1, Landroid/support/v7/widget/ak$i$b;->c:Z

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->b(Z)V

    iget-boolean p1, p1, Landroid/support/v7/widget/ak$i$b;->d:Z

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Z)V

    return-void
.end method

.method private K()V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    xor-int/2addr v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    :goto_1
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    return-void
.end method

.method private L()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private M()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(ILandroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;Z)I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->d()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {p3}, Landroid/support/v7/widget/aj;->d()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/aj;->a(I)V

    add-int/2addr p3, p2

    return p3

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private a(ZZ)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v1

    goto :goto_0
.end method

.method private a(II)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v1}, Landroid/support/v7/widget/aj;->d()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v2, p1, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p2, p1, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/high16 p2, -0x80000000

    iput p2, p1, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    return-void
.end method

.method private a(IIZLandroid/support/v7/widget/ak$u;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->k()Z

    move-result v1

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->l:Z

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/ak$u;)I

    move-result p4

    iput p4, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p1, p4, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    const/4 p4, -0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v1, p1, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v2}, Landroid/support/v7/widget/aj;->g()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->M()Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x1

    :goto_0
    iput p4, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aj;->b(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {p4, p1}, Landroid/support/v7/widget/aj;->b(Landroid/view/View;)I

    move-result p1

    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {p4}, Landroid/support/v7/widget/aj;->d()I

    move-result p4

    sub-int/2addr p1, p4

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->L()Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v2, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v3}, Landroid/support/v7/widget/aj;->c()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v2, :cond_2

    const/4 p4, 0x1

    :cond_2
    iput p4, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aj;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {p4, p1}, Landroid/support/v7/widget/aj;->a(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {p4}, Landroid/support/v7/widget/aj;->c()I

    move-result p4

    add-int/2addr p1, p4

    :goto_1
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p2, p4, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    if-eqz p3, :cond_3

    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget p3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    sub-int/2addr p3, p1

    iput p3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    :cond_3
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p1, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    return-void
.end method

.method private a(Landroid/support/v7/widget/LinearLayoutManager$a;)V
    .locals 1

    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    iget p1, p1, Landroid/support/v7/widget/LinearLayoutManager$a;->c:I

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(II)V

    return-void
.end method

.method private a(Landroid/support/v7/widget/ak$p;I)V
    .locals 5

    if-gez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_6

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/aj;->b(Landroid/view/View;)I

    move-result v3

    if-gt v3, p2, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/aj;->c(Landroid/view/View;)I

    move-result v2

    if-le v2, p2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ak$p;II)V

    return-void

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_6

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/aj;->b(Landroid/view/View;)I

    move-result v4

    if-gt v4, p2, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/aj;->c(Landroid/view/View;)I

    move-result v3

    if-le v3, p2, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-direct {p0, p1, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ak$p;II)V

    :cond_6
    return-void
.end method

.method private a(Landroid/support/v7/widget/ak$p;II)V
    .locals 0

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    if-le p3, p2, :cond_1

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_2

    invoke-virtual {p0, p3, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/ak$p;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/ak$p;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private a(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/LinearLayoutManager$c;)V
    .locals 2

    iget-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->a:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->l:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget p2, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/ak$p;I)V

    goto :goto_0

    :cond_1
    iget p2, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ak$p;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;Landroid/support/v7/widget/LinearLayoutManager$a;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ak$u;Landroid/support/v7/widget/LinearLayoutManager$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;Landroid/support/v7/widget/LinearLayoutManager$a;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3}, Landroid/support/v7/widget/LinearLayoutManager$a;->b()V

    iget-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/support/v7/widget/ak$u;->e()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput p1, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    return-void
.end method

.method private a(Landroid/support/v7/widget/ak$u;Landroid/support/v7/widget/LinearLayoutManager$a;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/support/v7/widget/ak$u;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    const/high16 v3, -0x80000000

    if-ltz v0, :cond_e

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    invoke-virtual {p1}, Landroid/support/v7/widget/ak$u;->e()I

    move-result p1

    if-lt v0, p1, :cond_1

    goto/16 :goto_7

    :cond_1
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    iput p1, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager$d;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    iget-boolean p1, p1, Landroid/support/v7/widget/LinearLayoutManager$d;->c:Z

    iput-boolean p1, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Z

    iget-boolean p1, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {p1}, Landroid/support/v7/widget/aj;->d()I

    move-result p1

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$d;->b:I

    sub-int/2addr p1, v1

    :goto_0
    iput p1, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:I

    goto :goto_1

    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {p1}, Landroid/support/v7/widget/aj;->c()I

    move-result p1

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$d;->b:I

    add-int/2addr p1, v1

    goto :goto_0

    :goto_1
    return v0

    :cond_3
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    if-ne p1, v3, :cond_c

    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/aj;->e(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v3}, Landroid/support/v7/widget/aj;->f()I

    move-result v3

    if-le v2, v3, :cond_4

    invoke-virtual {p2}, Landroid/support/v7/widget/LinearLayoutManager$a;->b()V

    return v0

    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/aj;->a(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v3}, Landroid/support/v7/widget/aj;->c()I

    move-result v3

    sub-int/2addr v2, v3

    if-gez v2, :cond_5

    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {p1}, Landroid/support/v7/widget/aj;->c()I

    move-result p1

    iput p1, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:I

    iput-boolean v1, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Z

    return v0

    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v1}, Landroid/support/v7/widget/aj;->d()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/aj;->b(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_6

    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {p1}, Landroid/support/v7/widget/aj;->d()I

    move-result p1

    iput p1, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:I

    iput-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Z

    return v0

    :cond_6
    iget-boolean v1, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/aj;->b(Landroid/view/View;)I

    move-result p1

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v1}, Landroid/support/v7/widget/aj;->b()I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_2

    :cond_7
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/aj;->a(Landroid/view/View;)I

    move-result p1

    :goto_2
    iput p1, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:I

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result p1

    if-lez p1, :cond_b

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result p1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    if-ge v2, p1, :cond_9

    const/4 p1, 0x1

    goto :goto_3

    :cond_9
    const/4 p1, 0x0

    :goto_3
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-ne p1, v2, :cond_a

    const/4 v1, 0x1

    :cond_a
    iput-boolean v1, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Z

    :cond_b
    invoke-virtual {p2}, Landroid/support/v7/widget/LinearLayoutManager$a;->b()V

    :goto_4
    return v0

    :cond_c
    iget-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iput-boolean p1, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Z

    iget-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {p1}, Landroid/support/v7/widget/aj;->d()I

    move-result p1

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    sub-int/2addr p1, v1

    :goto_5
    iput p1, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:I

    goto :goto_6

    :cond_d
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {p1}, Landroid/support/v7/widget/aj;->c()I

    move-result p1

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    add-int/2addr p1, v1

    goto :goto_5

    :goto_6
    return v0

    :cond_e
    :goto_7
    iput v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    iput v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    :cond_f
    :goto_8
    return v1
.end method

.method private b(ILandroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;Z)I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->c()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {p3}, Landroid/support/v7/widget/aj;->c()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_0

    iget-object p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    neg-int p4, p1

    invoke-virtual {p3, p4}, Landroid/support/v7/widget/aj;->a(I)V

    sub-int/2addr p2, p1

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private b(ZZ)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v1

    :goto_0
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/LinearLayoutManager$a;)V
    .locals 1

    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    iget p1, p1, Landroid/support/v7/widget/LinearLayoutManager$a;->c:I

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->g(II)V

    return-void
.end method

.method private b(Landroid/support/v7/widget/ak$p;I)V
    .locals 5

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    if-gez p2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v1}, Landroid/support/v7/widget/aj;->e()I

    move-result v1

    sub-int/2addr v1, p2

    iget-boolean p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/aj;->a(Landroid/view/View;)I

    move-result v4

    if-lt v4, v1, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/aj;->d(Landroid/view/View;)I

    move-result v3

    if-ge v3, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ak$p;II)V

    return-void

    :cond_3
    add-int/lit8 v0, v0, -0x1

    move p2, v0

    :goto_2
    if-ltz p2, :cond_6

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/aj;->a(Landroid/view/View;)I

    move-result v3

    if-lt v3, v1, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/aj;->d(Landroid/view/View;)I

    move-result v2

    if-ge v2, v1, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ak$p;II)V

    :cond_6
    return-void
.end method

.method private b(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;II)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/ak$u;->b()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/ak$u;->a()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->b()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/ak$p;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v7, v4, :cond_5

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/ak$x;

    invoke-virtual {v10}, Landroid/support/v7/widget/ak$x;->q()Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v10}, Landroid/support/v7/widget/ak$x;->d()I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v6, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    iget-boolean v13, v0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    const/4 v14, -0x1

    if-eq v11, v13, :cond_3

    const/4 v12, -0x1

    :cond_3
    if-ne v12, v14, :cond_4

    iget-object v11, v0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    iget-object v10, v10, Landroid/support/v7/widget/ak$x;->a:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/aj;->e(Landroid/view/View;)I

    move-result v10

    add-int/2addr v8, v10

    goto :goto_2

    :cond_4
    iget-object v11, v0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    iget-object v10, v10, Landroid/support/v7/widget/ak$x;->a:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/aj;->e(Landroid/view/View;)I

    move-result v10

    add-int/2addr v9, v10

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    iget-object v4, v0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput-object v3, v4, Landroid/support/v7/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    if-lez v8, :cond_6

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->L()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v3

    move/from16 v4, p3

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->g(II)V

    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v8, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v5, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager$c;->a()V

    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, v1, v3, v2, v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/ak$u;Z)I

    :cond_6
    if-lez v9, :cond_7

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->M()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v3

    move/from16 v4, p4

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->a(II)V

    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v9, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v5, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager$c;->a()V

    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, v1, v3, v2, v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/ak$u;Z)I

    :cond_7
    iget-object v1, v0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    :cond_8
    :goto_3
    return-void
.end method

.method private b(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;Landroid/support/v7/widget/LinearLayoutManager$a;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->E()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p3, v0, p2}, Landroid/support/v7/widget/LinearLayoutManager$a;->a(Landroid/view/View;Landroid/support/v7/widget/ak$u;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, v0, p1}, Landroid/support/v7/widget/LinearLayoutManager$a;->a(Landroid/view/View;I)V

    return v2

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Z

    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    if-eq v0, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->f(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->g(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager$a;->b(Landroid/view/View;I)V

    invoke-virtual {p2}, Landroid/support/v7/widget/ak$u;->a()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->b()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/aj;->a(Landroid/view/View;)I

    move-result p2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->d()I

    move-result v0

    if-ge p2, v0, :cond_4

    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/aj;->b(Landroid/view/View;)I

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {p2}, Landroid/support/v7/widget/aj;->c()I

    move-result p2

    if-ge p1, p2, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_7

    iget-boolean p1, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {p1}, Landroid/support/v7/widget/aj;->d()I

    move-result p1

    goto :goto_1

    :cond_6
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {p1}, Landroid/support/v7/widget/aj;->c()I

    move-result p1

    :goto_1
    iput p1, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->c:I

    :cond_7
    return v2

    :cond_8
    return v1
.end method

.method private f(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;)Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->h(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private g(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;)Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->h(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private g(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v1}, Landroid/support/v7/widget/aj;->c()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p1, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v1, p1, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p2, p1, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/high16 p2, -0x80000000

    iput p2, p1, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    return-void
.end method

.method private h(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v4

    invoke-virtual {p2}, Landroid/support/v7/widget/ak$u;->e()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private i(Landroid/support/v7/widget/ak$u;)I
    .locals 7

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()V

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/ao;->a(Landroid/support/v7/widget/ak$u;Landroid/support/v7/widget/aj;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/ak$i;ZZ)I

    move-result p1

    return p1
.end method

.method private i(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p2}, Landroid/support/v7/widget/ak$u;->e()I

    move-result v6

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private j(Landroid/support/v7/widget/ak$u;)I
    .locals 6

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()V

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/ao;->a(Landroid/support/v7/widget/ak$u;Landroid/support/v7/widget/aj;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/ak$i;Z)I

    move-result p1

    return p1
.end method

.method private j(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;)Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->l(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->m(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private k(Landroid/support/v7/widget/ak$u;)I
    .locals 6

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()V

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/ao;->b(Landroid/support/v7/widget/ak$u;Landroid/support/v7/widget/aj;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/ak$i;Z)I

    move-result p1

    return p1
.end method

.method private k(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;)Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->m(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->l(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private l(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/LinearLayoutManager;->b(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private m(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->b(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(ILandroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;)I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;)I

    move-result p1

    return p1
.end method

.method a(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/ak$u;Z)I
    .locals 7

    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    iget v1, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    iget v1, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    if-gez v1, :cond_0

    iget v1, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v1, v3

    iput v1, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/LinearLayoutManager$c;)V

    :cond_1
    iget v1, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    add-int/2addr v1, v3

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Landroid/support/v7/widget/LinearLayoutManager$b;

    :cond_2
    iget-boolean v4, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->l:Z

    if-nez v4, :cond_3

    if-lez v1, :cond_9

    :cond_3
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/LinearLayoutManager$c;->a(Landroid/support/v7/widget/ak$u;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager$b;->a()V

    invoke-virtual {p0, p1, p3, p2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/LinearLayoutManager$b;)V

    iget-boolean v4, v3, Landroid/support/v7/widget/LinearLayoutManager$b;->b:Z

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v5, v3, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    iget v6, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    mul-int v5, v5, v6

    add-int/2addr v4, v5

    iput v4, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget-boolean v4, v3, Landroid/support/v7/widget/LinearLayoutManager$b;->c:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v4, v4, Landroid/support/v7/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    if-nez v4, :cond_5

    invoke-virtual {p3}, Landroid/support/v7/widget/ak$u;->a()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    iget v5, v3, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr v4, v5

    iput v4, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    iget v4, v3, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr v1, v4

    :cond_6
    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    if-eq v4, v2, :cond_8

    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    iget v5, v3, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    add-int/2addr v4, v5

    iput v4, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    if-gez v4, :cond_7

    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    iget v5, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v4, v5

    iput v4, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    :cond_7
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/LinearLayoutManager$c;)V

    :cond_8
    if-eqz p4, :cond_2

    iget-boolean v4, v3, Landroid/support/v7/widget/LinearLayoutManager$b;->d:Z

    if-eqz v4, :cond_2

    :cond_9
    :goto_0
    iget p1, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public a()Landroid/support/v7/widget/ak$j;
    .locals 2

    new-instance v0, Landroid/support/v7/widget/ak$j;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/ak$j;-><init>(II)V

    return-object v0
.end method

.method a(IIZZ)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()V

    const/16 v0, 0x140

    if-eqz p3, :cond_0

    const/16 p3, 0x6003

    goto :goto_0

    :cond_0
    const/16 p3, 0x140

    :goto_0
    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez p4, :cond_2

    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Landroid/support/v7/widget/bd;

    :goto_2
    invoke-virtual {p4, p1, p2, p3, v0}, Landroid/support/v7/widget/bd;->a(IIII)Landroid/view/View;

    move-result-object p1

    goto :goto_3

    :cond_2
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Landroid/support/v7/widget/bd;

    goto :goto_2

    :goto_3
    return-object p1
.end method

.method a(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;III)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()V

    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {p1}, Landroid/support/v7/widget/aj;->c()I

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {p2}, Landroid/support/v7/widget/aj;->d()I

    move-result p2

    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    move-object v2, v1

    :goto_1
    if-eq p3, p4, :cond_5

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_4

    if-ge v4, p5, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/ak$j;

    invoke-virtual {v4}, Landroid/support/v7/widget/ak$j;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_4

    move-object v2, v3

    goto :goto_3

    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/aj;->a(Landroid/view/View;)I

    move-result v4

    if-ge v4, p2, :cond_3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/aj;->b(Landroid/view/View;)I

    move-result v4

    if-ge v4, p1, :cond_2

    goto :goto_2

    :cond_2
    return-object v3

    :cond_3
    :goto_2
    if-nez v1, :cond_4

    move-object v1, v3

    :cond_4
    :goto_3
    add-int/2addr p3, v0

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move-object v1, v2

    :goto_4
    return-object v1
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;)Landroid/view/View;
    .locals 3

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->K()V

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->e(I)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()V

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()V

    const v1, 0x3eaaaaab

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v2}, Landroid/support/v7/widget/aj;->f()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLandroid/support/v7/widget/ak$u;)V

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p2, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput-boolean v2, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->a:Z

    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x1

    invoke-virtual {p0, p3, p2, p4, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/ak$u;Z)I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    invoke-direct {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->k(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_2
    invoke-direct {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->j(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;)Landroid/view/View;

    move-result-object p3

    :goto_0
    if-ne p1, p2, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->L()Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->M()Landroid/view/View;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p2

    if-eqz p2, :cond_5

    if-nez p3, :cond_4

    return-object v0

    :cond_4
    return-object p1

    :cond_5
    return-object p3
.end method

.method public a(IILandroid/support/v7/widget/ak$u;Landroid/support/v7/widget/ak$i$a;)V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()V

    const/4 p2, 0x1

    if-lez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLandroid/support/v7/widget/ak$u;)V

    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p3, p1, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ak$u;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/ak$i$a;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public a(ILandroid/support/v7/widget/ak$i$a;)V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->c:Z

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$d;->a:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->K()V

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    if-ne v3, v1, :cond_2

    if-eqz v0, :cond_1

    add-int/lit8 v3, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    const/4 v0, 0x0

    :goto_2
    iget v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:I

    if-ge v0, v4, :cond_4

    if-ltz v3, :cond_4

    if-ge v3, p1, :cond_4

    invoke-interface {p2, v3, v2}, Landroid/support/v7/widget/ak$i$a;->b(II)V

    add-int/2addr v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager$d;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager$d;

    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->o()V

    :cond_0
    return-void
.end method

.method a(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;Landroid/support/v7/widget/LinearLayoutManager$a;I)V
    .locals 0

    return-void
.end method

.method a(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/LinearLayoutManager$b;)V
    .locals 7

    invoke-virtual {p3, p1}, Landroid/support/v7/widget/LinearLayoutManager$c;->a(Landroid/support/v7/widget/ak$p;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iput-boolean p2, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->b:Z

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/widget/ak$j;

    iget-object v0, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    if-ne v3, v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-ne v0, v3, :cond_2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;I)V

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    if-ne v3, v1, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-ne v0, v3, :cond_5

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;I)V

    :goto_2
    invoke-virtual {p0, p1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;II)V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aj;->e(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-ne v0, p2, :cond_8

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->y()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->C()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/aj;->f(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->A()I

    move-result v2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aj;->f(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    :goto_3
    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    if-ne v3, v1, :cond_7

    iget v1, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget p3, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v3, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr p3, v3

    move v3, p3

    move v4, v0

    move v5, v1

    goto :goto_4

    :cond_7
    iget v1, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget p3, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v3, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    add-int/2addr p3, v3

    move v5, p3

    move v4, v0

    move v3, v1

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->B()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/aj;->f(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    if-ne v3, v1, :cond_9

    iget v1, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget p3, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v3, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr p3, v3

    move v3, v0

    move v4, v1

    move v5, v2

    move v2, p3

    goto :goto_4

    :cond_9
    iget v1, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget p3, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v3, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    add-int/2addr p3, v3

    move v4, p3

    move v3, v0

    move v5, v2

    move v2, v1

    :goto_4
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;IIII)V

    invoke-virtual {v6}, Landroid/support/v7/widget/ak$j;->d()Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {v6}, Landroid/support/v7/widget/ak$j;->e()Z

    move-result p3

    if-eqz p3, :cond_b

    :cond_a
    iput-boolean p2, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->c:Z

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p1

    iput-boolean p1, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->d:Z

    return-void
.end method

.method public a(Landroid/support/v7/widget/ak$u;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/ak$i;->a(Landroid/support/v7/widget/ak$u;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager$a;->a()V

    return-void
.end method

.method a(Landroid/support/v7/widget/ak$u;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/ak$i$a;)V
    .locals 1

    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/ak$u;->e()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x0

    iget p2, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-interface {p3, v0, p1}, Landroid/support/v7/widget/ak$i$a;->b(II)V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/ak;Landroid/support/v7/widget/ak$p;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/ak$i;->a(Landroid/support/v7/widget/ak;Landroid/support/v7/widget/ak$p;)V

    iget-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->c(Landroid/support/v7/widget/ak$p;)V

    invoke-virtual {p2}, Landroid/support/v7/widget/ak$p;->a()V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/ak$i;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->m()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->n()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/widget/ak$i;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->o()V

    return-void
.end method

.method public b(ILandroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;)I

    move-result p1

    return p1
.end method

.method protected b(Landroid/support/v7/widget/ak$u;)I
    .locals 0

    invoke-virtual {p1}, Landroid/support/v7/widget/ak$u;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {p1}, Landroid/support/v7/widget/aj;->f()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method b(II)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()V

    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/aj;->a(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v1}, Landroid/support/v7/widget/aj;->c()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/16 v0, 0x4104

    const/16 v1, 0x4004

    goto :goto_1

    :cond_3
    const/16 v0, 0x1041

    const/16 v1, 0x1001

    :goto_1
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Landroid/support/v7/widget/bd;

    :goto_2
    invoke-virtual {v2, p1, p2, v0, v1}, Landroid/support/v7/widget/bd;->a(IIII)Landroid/view/View;

    move-result-object p1

    goto :goto_3

    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Landroid/support/v7/widget/bd;

    goto :goto_2

    :goto_3
    return-object p1
.end method

.method public b(I)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    if-nez v0, :cond_3

    :cond_2
    invoke-static {p0, p1}, Landroid/support/v7/widget/aj;->a(Landroid/support/v7/widget/ak$i;I)Landroid/support/v7/widget/aj;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    iput-object v1, v0, Landroid/support/v7/widget/LinearLayoutManager$a;->a:Landroid/support/v7/widget/aj;

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->o()V

    :cond_3
    return-void
.end method

.method public b(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->o()V

    return-void
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method c(ILandroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;)I
    .locals 5

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->a:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()V

    if-lez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-direct {p0, v0, v3, v2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLandroid/support/v7/widget/ak$u;)V

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p2, v4, p3, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/ak$u;Z)I

    move-result p2

    add-int/2addr v2, p2

    if-gez v2, :cond_2

    return v1

    :cond_2
    if-le v3, v2, :cond_3

    mul-int p1, v0, v2

    :cond_3
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/aj;->a(I)V

    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p1, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->j:I

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public c(Landroid/support/v7/widget/ak$u;)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/ak$u;)I

    move-result p1

    return p1
.end method

.method public c(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    sub-int v1, p1, v1

    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/ak$i;->c(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;)V
    .locals 8

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/ak$u;->e()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->c(Landroid/support/v7/widget/ak$p;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->a:I

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->a:Z

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->K()V

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->E()Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    iget-boolean v3, v3, Landroid/support/v7/widget/LinearLayoutManager$a;->e:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    if-ne v3, v1, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_6

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/aj;->a(Landroid/view/View;)I

    move-result v3

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v5}, Landroid/support/v7/widget/aj;->d()I

    move-result v5

    if-ge v3, v5, :cond_4

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/aj;->b(Landroid/view/View;)I

    move-result v3

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v5}, Landroid/support/v7/widget/aj;->c()I

    move-result v5

    if-gt v3, v5, :cond_6

    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v3, v0, v5}, Landroid/support/v7/widget/LinearLayoutManager$a;->a(Landroid/view/View;I)V

    goto :goto_1

    :cond_5
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$a;->a()V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    xor-int/2addr v3, v5

    iput-boolean v3, v0, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Z

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;Landroid/support/v7/widget/LinearLayoutManager$a;)V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    iput-boolean v4, v0, Landroid/support/v7/widget/LinearLayoutManager$a;->e:Z

    :cond_6
    :goto_1
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/ak$u;)I

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->j:I

    if-ltz v3, :cond_7

    move v3, v0

    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_2
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v5}, Landroid/support/v7/widget/aj;->c()I

    move-result v5

    add-int/2addr v0, v5

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v5}, Landroid/support/v7/widget/aj;->g()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p2}, Landroid/support/v7/widget/ak$u;->a()Z

    move-result v5

    if-eqz v5, :cond_a

    iget v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    if-eq v5, v1, :cond_a

    iget v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_a

    iget v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-boolean v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v6}, Landroid/support/v7/widget/aj;->d()I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v7, v5}, Landroid/support/v7/widget/aj;->b(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v6, v5

    iget v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    :goto_3
    sub-int/2addr v6, v5

    goto :goto_4

    :cond_8
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/aj;->a(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v6}, Landroid/support/v7/widget/aj;->c()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    goto :goto_3

    :goto_4
    if-lez v6, :cond_9

    add-int/2addr v0, v6

    goto :goto_5

    :cond_9
    sub-int/2addr v3, v6

    :cond_a
    :goto_5
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    iget-boolean v5, v5, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Z

    if-eqz v5, :cond_c

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v5, :cond_d

    :cond_b
    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v5, :cond_b

    :cond_d
    :goto_6
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-virtual {p0, p1, p2, v5, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;Landroid/support/v7/widget/LinearLayoutManager$a;I)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ak$p;)V

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->k()Z

    move-result v5

    iput-boolean v5, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->l:Z

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p2}, Landroid/support/v7/widget/ak$u;->a()Z

    move-result v5

    iput-boolean v5, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->i:Z

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    iget-boolean v1, v1, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/LinearLayoutManager$a;)V

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/ak$u;Z)I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    if-lez v5, :cond_e

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v3, v5

    :cond_e
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/LinearLayoutManager$a;)V

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v3, v5, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v5, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v6, v6, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v5, v6

    iput v5, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v3, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/ak$u;Z)I

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    if-lez v5, :cond_11

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->g(II)V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v5, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/ak$u;Z)I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    goto :goto_7

    :cond_f
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/LinearLayoutManager$a;)V

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v3, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/ak$u;Z)I

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    if-lez v5, :cond_10

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v0, v5

    :cond_10
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, v5}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/LinearLayoutManager$a;)V

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v0, v5, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v5, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v6, v6, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v5, v6

    iput v5, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/ak$u;Z)I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    if-lez v5, :cond_11

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    invoke-direct {p0, v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(II)V

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v5, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/ak$u;Z)I

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    :cond_11
    :goto_7
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v1

    if-lez v1, :cond_13

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    xor-int/2addr v1, v5

    if-eqz v1, :cond_12

    invoke-direct {p0, v3, p1, p2, v4}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;Z)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v3, v1

    invoke-direct {p0, v0, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;Z)I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    add-int/2addr v3, v1

    goto :goto_9

    :cond_12
    invoke-direct {p0, v0, p1, p2, v4}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;Z)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v3, v1

    invoke-direct {p0, v3, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;Z)I

    move-result v1

    goto :goto_8

    :cond_13
    :goto_9
    invoke-direct {p0, p1, p2, v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/ak$p;Landroid/support/v7/widget/ak$u;II)V

    invoke-virtual {p2}, Landroid/support/v7/widget/ak$u;->a()Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {p1}, Landroid/support/v7/widget/aj;->a()V

    goto :goto_a

    :cond_14
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager$a;->a()V

    :goto_a
    iget-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Z

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d(Landroid/support/v7/widget/ak$u;)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/ak$u;)I

    move-result p1

    return p1
.end method

.method public d()Landroid/os/Parcelable;
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$d;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$d;-><init>(Landroid/support/v7/widget/LinearLayoutManager$d;)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$d;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$d;-><init>()V

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()V

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->c:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->M()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v2}, Landroid/support/v7/widget/aj;->d()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/aj;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->b:I

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->a:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->L()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->a:I

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/aj;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v2}, Landroid/support/v7/widget/aj;->c()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->b:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$d;->b()V

    :goto_0
    return-object v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$d;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager$d;->b()V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->o()V

    return-void
.end method

.method e(I)I
    .locals 4

    const/16 v0, 0x11

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    if-eq p1, v0, :cond_a

    const/16 v0, 0x21

    const/4 v3, 0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x42

    if-eq p1, v0, :cond_6

    const/16 v0, 0x82

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    return v2

    :pswitch_0
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-ne p1, v3, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v3

    :pswitch_1
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-ne p1, v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()Z

    move-result p1

    if-eqz p1, :cond_3

    return v3

    :cond_3
    return v1

    :cond_4
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-ne p1, v3, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2

    :cond_6
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez p1, :cond_7

    const/4 v2, 0x1

    :cond_7
    return v2

    :cond_8
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-ne p1, v3, :cond_9

    goto :goto_0

    :cond_9
    const/high16 v1, -0x80000000

    :goto_0
    return v1

    :cond_a
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez p1, :cond_b

    goto :goto_1

    :cond_b
    const/high16 v1, -0x80000000

    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e(Landroid/support/v7/widget/ak$u;)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->j(Landroid/support/v7/widget/ak$u;)I

    move-result p1

    return p1
.end method

.method public e()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(Landroid/support/v7/widget/ak$u;)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->j(Landroid/support/v7/widget/ak$u;)I

    move-result p1

    return p1
.end method

.method public f()Z
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public g()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    return v0
.end method

.method public g(Landroid/support/v7/widget/ak$u;)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->k(Landroid/support/v7/widget/ak$u;)I

    move-result p1

    return p1
.end method

.method public h(Landroid/support/v7/widget/ak$u;)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->k(Landroid/support/v7/widget/ak$u;)I

    move-result p1

    return p1
.end method

.method protected h()Z
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->t()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method i()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->j()Landroid/support/v7/widget/LinearLayoutManager$c;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    :cond_0
    return-void
.end method

.method j()Landroid/support/v7/widget/LinearLayoutManager$c;
    .locals 1

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$c;-><init>()V

    return-object v0
.end method

.method k()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->h()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->e()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method l()Z
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->x()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->w()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()I
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public n()I
    .locals 4

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v2

    :goto_0
    return v2
.end method
