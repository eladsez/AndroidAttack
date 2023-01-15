.class public Landroid/support/v7/widget/av$o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/av$o$a;
    }
.end annotation


# instance fields
.field a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/v7/widget/av$o$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/av$o;->a:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/av$o;->b:I

    return-void
.end method

.method private b(I)Landroid/support/v7/widget/av$o$a;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/av$o;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/av$o$a;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/av$o$a;

    invoke-direct {v0}, Landroid/support/v7/widget/av$o$a;-><init>()V

    iget-object v1, p0, Landroid/support/v7/widget/av$o;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method a(JJ)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide p3

    :cond_0
    const-wide/16 v0, 0x4

    div-long/2addr p1, v0

    const-wide/16 v2, 0x3

    mul-long/2addr p1, v2

    div-long/2addr p3, v0

    add-long v0, p1, p3

    return-wide v0
.end method

.method public a(I)Landroid/support/v7/widget/av$x;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/av$o;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/av$o$a;

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/av$o$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Landroid/support/v7/widget/av$o$a;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/av$x;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/av$o;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/av$o;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/av$o$a;

    iget-object v1, v1, Landroid/support/v7/widget/av$o$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(IJ)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/av$o;->b(I)Landroid/support/v7/widget/av$o$a;

    move-result-object p1

    iget-wide v0, p1, Landroid/support/v7/widget/av$o$a;->c:J

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/support/v7/widget/av$o;->a(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Landroid/support/v7/widget/av$o$a;->c:J

    return-void
.end method

.method a(Landroid/support/v7/widget/av$a;)V
    .locals 0

    iget p1, p0, Landroid/support/v7/widget/av$o;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/v7/widget/av$o;->b:I

    return-void
.end method

.method a(Landroid/support/v7/widget/av$a;Landroid/support/v7/widget/av$a;Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/av$o;->b()V

    :cond_0
    if-nez p3, :cond_1

    iget p1, p0, Landroid/support/v7/widget/av$o;->b:I

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/av$o;->a()V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/av$o;->a(Landroid/support/v7/widget/av$a;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/support/v7/widget/av$x;)V
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/widget/av$x;->h()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/av$o;->b(I)Landroid/support/v7/widget/av$o$a;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v7/widget/av$o$a;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v7/widget/av$o;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/av$o$a;

    iget v0, v0, Landroid/support/v7/widget/av$o$a;->b:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/av$x;->v()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(IJJ)Z
    .locals 4

    invoke-direct {p0, p1}, Landroid/support/v7/widget/av$o;->b(I)Landroid/support/v7/widget/av$o$a;

    move-result-object p1

    iget-wide v0, p1, Landroid/support/v7/widget/av$o$a;->c:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    add-long v2, p2, v0

    cmp-long p1, v2, p4

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method b()V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/av$o;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/av$o;->b:I

    return-void
.end method

.method b(IJ)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/av$o;->b(I)Landroid/support/v7/widget/av$o$a;

    move-result-object p1

    iget-wide v0, p1, Landroid/support/v7/widget/av$o$a;->d:J

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/support/v7/widget/av$o;->a(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Landroid/support/v7/widget/av$o$a;->d:J

    return-void
.end method

.method b(IJJ)Z
    .locals 4

    invoke-direct {p0, p1}, Landroid/support/v7/widget/av$o;->b(I)Landroid/support/v7/widget/av$o$a;

    move-result-object p1

    iget-wide v0, p1, Landroid/support/v7/widget/av$o$a;->d:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    add-long v2, p2, v0

    cmp-long p1, v2, p4

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
