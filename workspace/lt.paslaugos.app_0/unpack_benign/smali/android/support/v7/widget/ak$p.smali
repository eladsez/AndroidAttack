.class public final Landroid/support/v7/widget/ak$p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "p"
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/ak$x;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/ak$x;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/ak$x;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:Landroid/support/v7/widget/ak$o;

.field final synthetic f:Landroid/support/v7/widget/ak;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/widget/ak$x;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Landroid/support/v7/widget/ak$v;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ak;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/ak$p;->a:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/ak$p;->b:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/ak$p;->c:Ljava/util/ArrayList;

    iget-object p1, p0, Landroid/support/v7/widget/ak$p;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/ak$p;->g:Ljava/util/List;

    const/4 p1, 0x2

    iput p1, p0, Landroid/support/v7/widget/ak$p;->h:I

    iput p1, p0, Landroid/support/v7/widget/ak$p;->d:I

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v1}, Landroid/support/v7/widget/ak$p;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private a(Landroid/support/v7/widget/ak$x;IIJ)Z
    .locals 9

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iput-object v0, p1, Landroid/support/v7/widget/ak$x;->m:Landroid/support/v7/widget/ak;

    invoke-virtual {p1}, Landroid/support/v7/widget/ak$x;->h()I

    move-result v2

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak;->getNanoTime()J

    move-result-wide v7

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ak$p;->e:Landroid/support/v7/widget/ak$o;

    move-wide v3, v7

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/widget/ak$o;->b(IJJ)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p4, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object p4, p4, Landroid/support/v7/widget/ak;->l:Landroid/support/v7/widget/ak$a;

    invoke-virtual {p4, p1, p2}, Landroid/support/v7/widget/ak$a;->b(Landroid/support/v7/widget/ak$x;I)V

    iget-object p2, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    invoke-virtual {p2}, Landroid/support/v7/widget/ak;->getNanoTime()J

    move-result-wide p4

    iget-object p2, p0, Landroid/support/v7/widget/ak$p;->e:Landroid/support/v7/widget/ak$o;

    invoke-virtual {p1}, Landroid/support/v7/widget/ak$x;->h()I

    move-result v0

    sub-long/2addr p4, v7

    invoke-virtual {p2, v0, p4, p5}, Landroid/support/v7/widget/ak$o;->b(IJ)V

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ak$p;->e(Landroid/support/v7/widget/ak$x;)V

    iget-object p2, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object p2, p2, Landroid/support/v7/widget/ak;->C:Landroid/support/v7/widget/ak$u;

    invoke-virtual {p2}, Landroid/support/v7/widget/ak$u;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    iput p3, p1, Landroid/support/v7/widget/ak$x;->g:I

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private e(Landroid/support/v7/widget/ak$x;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/support/v7/widget/ak$x;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/h/q;->d(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/h/q;->a(Landroid/view/View;I)V

    :cond_0
    invoke-static {v0}, Landroid/support/v4/h/q;->a(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x4000

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/ak$x;->b(I)V

    iget-object p1, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object p1, p1, Landroid/support/v7/widget/ak;->G:Landroid/support/v7/widget/al;

    invoke-virtual {p1}, Landroid/support/v7/widget/al;->c()Landroid/support/v4/h/b;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/support/v4/h/q;->a(Landroid/view/View;Landroid/support/v4/h/b;)V

    :cond_1
    return-void
.end method

.method private f(Landroid/support/v7/widget/ak$x;)V
    .locals 1

    iget-object v0, p1, Landroid/support/v7/widget/ak$x;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroid/support/v7/widget/ak$x;->a:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ak$p;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method a(IZJ)Landroid/support/v7/widget/ak$x;
    .locals 16

    move-object/from16 v6, p0

    move/from16 v3, p1

    move/from16 v0, p2

    if-ltz v3, :cond_17

    iget-object v1, v6, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v1, v1, Landroid/support/v7/widget/ak;->C:Landroid/support/v7/widget/ak$u;

    invoke-virtual {v1}, Landroid/support/v7/widget/ak$u;->e()I

    move-result v1

    if-ge v3, v1, :cond_17

    iget-object v1, v6, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v1, v1, Landroid/support/v7/widget/ak;->C:Landroid/support/v7/widget/ak$u;

    invoke-virtual {v1}, Landroid/support/v7/widget/ak$u;->a()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/widget/ak$p;->f(I)Landroid/support/v7/widget/ak$x;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v1, :cond_6

    invoke-virtual/range {p0 .. p2}, Landroid/support/v7/widget/ak$p;->b(IZ)Landroid/support/v7/widget/ak$x;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/ak$p;->a(Landroid/support/v7/widget/ak$x;)Z

    move-result v5

    if-nez v5, :cond_5

    if-nez v0, :cond_4

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/ak$x;->b(I)V

    invoke-virtual {v1}, Landroid/support/v7/widget/ak$x;->i()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v6, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v9, v1, Landroid/support/v7/widget/ak$x;->a:Landroid/view/View;

    invoke-virtual {v5, v9, v8}, Landroid/support/v7/widget/ak;->removeDetachedView(Landroid/view/View;Z)V

    invoke-virtual {v1}, Landroid/support/v7/widget/ak$x;->j()V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/support/v7/widget/ak$x;->k()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Landroid/support/v7/widget/ak$x;->l()V

    :cond_3
    :goto_1
    invoke-virtual {v6, v1}, Landroid/support/v7/widget/ak$p;->b(Landroid/support/v7/widget/ak$x;)V

    :cond_4
    move-object v1, v2

    goto :goto_2

    :cond_5
    const/4 v4, 0x1

    :cond_6
    :goto_2
    if-nez v1, :cond_f

    iget-object v5, v6, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v5, v5, Landroid/support/v7/widget/ak;->e:Landroid/support/v7/widget/f;

    invoke-virtual {v5, v3}, Landroid/support/v7/widget/f;->b(I)I

    move-result v5

    if-ltz v5, :cond_e

    iget-object v9, v6, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v9, v9, Landroid/support/v7/widget/ak;->l:Landroid/support/v7/widget/ak$a;

    invoke-virtual {v9}, Landroid/support/v7/widget/ak$a;->a()I

    move-result v9

    if-ge v5, v9, :cond_e

    iget-object v9, v6, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v9, v9, Landroid/support/v7/widget/ak;->l:Landroid/support/v7/widget/ak$a;

    invoke-virtual {v9, v5}, Landroid/support/v7/widget/ak$a;->a(I)I

    move-result v9

    iget-object v10, v6, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v10, v10, Landroid/support/v7/widget/ak;->l:Landroid/support/v7/widget/ak$a;

    invoke-virtual {v10}, Landroid/support/v7/widget/ak$a;->b()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v1, v6, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v1, v1, Landroid/support/v7/widget/ak;->l:Landroid/support/v7/widget/ak$a;

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/ak$a;->b(I)J

    move-result-wide v10

    invoke-virtual {v6, v10, v11, v9, v0}, Landroid/support/v7/widget/ak$p;->a(JIZ)Landroid/support/v7/widget/ak$x;

    move-result-object v1

    if-eqz v1, :cond_7

    iput v5, v1, Landroid/support/v7/widget/ak$x;->c:I

    const/4 v4, 0x1

    :cond_7
    if-nez v1, :cond_a

    iget-object v0, v6, Landroid/support/v7/widget/ak$p;->i:Landroid/support/v7/widget/ak$v;

    if-eqz v0, :cond_a

    iget-object v0, v6, Landroid/support/v7/widget/ak$p;->i:Landroid/support/v7/widget/ak$v;

    invoke-virtual {v0, v6, v3, v9}, Landroid/support/v7/widget/ak$v;->a(Landroid/support/v7/widget/ak$p;II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, v6, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ak;->b(Landroid/view/View;)Landroid/support/v7/widget/ak$x;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/support/v7/widget/ak$x;->c()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    invoke-virtual {v2}, Landroid/support/v7/widget/ak;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    invoke-virtual {v2}, Landroid/support/v7/widget/ak;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_3
    if-nez v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ak$p;->g()Landroid/support/v7/widget/ak$o;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/ak$o;->a(I)Landroid/support/v7/widget/ak$x;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/support/v7/widget/ak$x;->v()V

    sget-boolean v0, Landroid/support/v7/widget/ak;->a:Z

    if-eqz v0, :cond_b

    invoke-direct {v6, v1}, Landroid/support/v7/widget/ak$p;->f(Landroid/support/v7/widget/ak$x;)V

    :cond_b
    if-nez v1, :cond_f

    iget-object v0, v6, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak;->getNanoTime()J

    move-result-wide v0

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v5, p3, v10

    if-eqz v5, :cond_c

    iget-object v10, v6, Landroid/support/v7/widget/ak$p;->e:Landroid/support/v7/widget/ak$o;

    move v11, v9

    move-wide v12, v0

    move-wide/from16 v14, p3

    invoke-virtual/range {v10 .. v15}, Landroid/support/v7/widget/ak$o;->a(IJJ)Z

    move-result v5

    if-nez v5, :cond_c

    return-object v2

    :cond_c
    iget-object v2, v6, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v2, v2, Landroid/support/v7/widget/ak;->l:Landroid/support/v7/widget/ak$a;

    iget-object v5, v6, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    invoke-virtual {v2, v5, v9}, Landroid/support/v7/widget/ak$a;->b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ak$x;

    move-result-object v2

    invoke-static {}, Landroid/support/v7/widget/ak;->y()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, v2, Landroid/support/v7/widget/ak$x;->a:Landroid/view/View;

    invoke-static {v5}, Landroid/support/v7/widget/ak;->j(Landroid/view/View;)Landroid/support/v7/widget/ak;

    move-result-object v5

    if-eqz v5, :cond_d

    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v10, v2, Landroid/support/v7/widget/ak$x;->b:Ljava/lang/ref/WeakReference;

    :cond_d
    iget-object v5, v6, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    invoke-virtual {v5}, Landroid/support/v7/widget/ak;->getNanoTime()J

    move-result-wide v10

    iget-object v5, v6, Landroid/support/v7/widget/ak$p;->e:Landroid/support/v7/widget/ak$o;

    sub-long/2addr v10, v0

    invoke-virtual {v5, v9, v10, v11}, Landroid/support/v7/widget/ak$o;->a(IJ)V

    move-object v10, v2

    goto :goto_4

    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "(offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v2, v2, Landroid/support/v7/widget/ak;->C:Landroid/support/v7/widget/ak$u;

    invoke-virtual {v2}, Landroid/support/v7/widget/ak$u;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    invoke-virtual {v2}, Landroid/support/v7/widget/ak;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move-object v10, v1

    :goto_4
    move v9, v4

    if-eqz v9, :cond_10

    iget-object v0, v6, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->C:Landroid/support/v7/widget/ak$u;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak$u;->a()Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x2000

    invoke-virtual {v10, v0}, Landroid/support/v7/widget/ak$x;->a(I)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v10, v8, v0}, Landroid/support/v7/widget/ak$x;->a(II)V

    iget-object v0, v6, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->C:Landroid/support/v7/widget/ak$u;

    iget-boolean v0, v0, Landroid/support/v7/widget/ak$u;->i:Z

    if-eqz v0, :cond_10

    invoke-static {v10}, Landroid/support/v7/widget/ak$f;->e(Landroid/support/v7/widget/ak$x;)I

    move-result v0

    or-int/lit16 v0, v0, 0x1000

    iget-object v1, v6, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v1, v1, Landroid/support/v7/widget/ak;->y:Landroid/support/v7/widget/ak$f;

    iget-object v2, v6, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v2, v2, Landroid/support/v7/widget/ak;->C:Landroid/support/v7/widget/ak$u;

    invoke-virtual {v10}, Landroid/support/v7/widget/ak$x;->u()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v2, v10, v0, v4}, Landroid/support/v7/widget/ak$f;->a(Landroid/support/v7/widget/ak$u;Landroid/support/v7/widget/ak$x;ILjava/util/List;)Landroid/support/v7/widget/ak$f$c;

    move-result-object v0

    iget-object v1, v6, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    invoke-virtual {v1, v10, v0}, Landroid/support/v7/widget/ak;->a(Landroid/support/v7/widget/ak$x;Landroid/support/v7/widget/ak$f$c;)V

    :cond_10
    iget-object v0, v6, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->C:Landroid/support/v7/widget/ak$u;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak$u;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v10}, Landroid/support/v7/widget/ak$x;->p()Z

    move-result v0

    if-eqz v0, :cond_11

    iput v3, v10, Landroid/support/v7/widget/ak$x;->g:I

    goto :goto_5

    :cond_11
    invoke-virtual {v10}, Landroid/support/v7/widget/ak$x;->p()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v10}, Landroid/support/v7/widget/ak$x;->o()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v10}, Landroid/support/v7/widget/ak$x;->n()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_6

    :cond_12
    :goto_5
    const/4 v0, 0x0

    goto :goto_7

    :cond_13
    :goto_6
    iget-object v0, v6, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->e:Landroid/support/v7/widget/f;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/f;->b(I)I

    move-result v2

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v3, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/ak$p;->a(Landroid/support/v7/widget/ak$x;IIJ)Z

    move-result v0

    :goto_7
    iget-object v1, v10, Landroid/support/v7/widget/ak$x;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_14

    iget-object v1, v6, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    invoke-virtual {v1}, Landroid/support/v7/widget/ak;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :goto_8
    check-cast v1, Landroid/support/v7/widget/ak$j;

    iget-object v2, v10, Landroid/support/v7/widget/ak$x;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    :cond_14
    iget-object v2, v6, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ak;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_15

    iget-object v2, v6, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ak;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    goto :goto_8

    :cond_15
    check-cast v1, Landroid/support/v7/widget/ak$j;

    :goto_9
    iput-object v10, v1, Landroid/support/v7/widget/ak$j;->c:Landroid/support/v7/widget/ak$x;

    if-eqz v9, :cond_16

    if-eqz v0, :cond_16

    goto :goto_a

    :cond_16
    const/4 v7, 0x0

    :goto_a
    iput-boolean v7, v1, Landroid/support/v7/widget/ak$j;->f:Z

    return-object v10

    :cond_17
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v2, v2, Landroid/support/v7/widget/ak;->C:Landroid/support/v7/widget/ak$u;

    invoke-virtual {v2}, Landroid/support/v7/widget/ak$u;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    invoke-virtual {v2}, Landroid/support/v7/widget/ak;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(JIZ)Landroid/support/v7/widget/ak$x;
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/ak$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ak$x;

    invoke-virtual {v1}, Landroid/support/v7/widget/ak$x;->g()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/support/v7/widget/ak$x;->k()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/support/v7/widget/ak$x;->h()I

    move-result v2

    if-ne p3, v2, :cond_1

    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ak$x;->b(I)V

    invoke-virtual {v1}, Landroid/support/v7/widget/ak$x;->q()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object p1, p1, Landroid/support/v7/widget/ak;->C:Landroid/support/v7/widget/ak$u;

    invoke-virtual {p1}, Landroid/support/v7/widget/ak$u;->a()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    const/16 p2, 0xe

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/ak$x;->a(II)V

    :cond_0
    return-object v1

    :cond_1
    if-nez p4, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/ak$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v3, v1, Landroid/support/v7/widget/ak$x;->a:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/ak;->removeDetachedView(Landroid/view/View;Z)V

    iget-object v1, v1, Landroid/support/v7/widget/ak$x;->a:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ak$p;->b(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    const/4 v1, 0x0

    if-ltz v0, :cond_7

    iget-object v2, p0, Landroid/support/v7/widget/ak$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ak$x;

    invoke-virtual {v2}, Landroid/support/v7/widget/ak$x;->g()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_6

    invoke-virtual {v2}, Landroid/support/v7/widget/ak$x;->h()I

    move-result v3

    if-ne p3, v3, :cond_5

    if-nez p4, :cond_4

    iget-object p1, p0, Landroid/support/v7/widget/ak$p;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    return-object v2

    :cond_5
    if-nez p4, :cond_6

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ak$p;->d(I)V

    return-object v1

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    return-object v1
.end method

.method a(IZ)Landroid/view/View;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/ak$p;->a(IZJ)Landroid/support/v7/widget/ak$x;

    move-result-object p1

    iget-object p1, p1, Landroid/support/v7/widget/ak$x;->a:Landroid/view/View;

    return-object p1
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/support/v7/widget/ak$p;->d()V

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/ak$p;->h:I

    invoke-virtual {p0}, Landroid/support/v7/widget/ak$p;->b()V

    return-void
.end method

.method a(II)V
    .locals 8

    if-ge p1, p2, :cond_0

    const/4 v0, -0x1

    move v0, p1

    move v1, p2

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    move v1, p1

    move v0, p2

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/ak$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_4

    iget-object v6, p0, Landroid/support/v7/widget/ak$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/ak$x;

    if-eqz v6, :cond_3

    iget v7, v6, Landroid/support/v7/widget/ak$x;->c:I

    if-lt v7, v0, :cond_3

    iget v7, v6, Landroid/support/v7/widget/ak$x;->c:I

    if-le v7, v1, :cond_1

    goto :goto_2

    :cond_1
    iget v7, v6, Landroid/support/v7/widget/ak$x;->c:I

    if-ne v7, p1, :cond_2

    sub-int v7, p2, p1

    invoke-virtual {v6, v7, v4}, Landroid/support/v7/widget/ak$x;->a(IZ)V

    goto :goto_2

    :cond_2
    invoke-virtual {v6, v2, v4}, Landroid/support/v7/widget/ak$x;->a(IZ)V

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method a(IIZ)V
    .locals 4

    add-int v0, p1, p2

    iget-object v1, p0, Landroid/support/v7/widget/ak$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/ak$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ak$x;

    if-eqz v2, :cond_1

    iget v3, v2, Landroid/support/v7/widget/ak$x;->c:I

    if-lt v3, v0, :cond_0

    neg-int v3, p2

    invoke-virtual {v2, v3, p3}, Landroid/support/v7/widget/ak$x;->a(IZ)V

    goto :goto_1

    :cond_0
    iget v3, v2, Landroid/support/v7/widget/ak$x;->c:I

    if-lt v3, p1, :cond_1

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ak$x;->b(I)V

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ak$p;->d(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method a(Landroid/support/v7/widget/ak$a;Landroid/support/v7/widget/ak$a;Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/ak$p;->a()V

    invoke-virtual {p0}, Landroid/support/v7/widget/ak$p;->g()Landroid/support/v7/widget/ak$o;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/ak$o;->a(Landroid/support/v7/widget/ak$a;Landroid/support/v7/widget/ak$a;Z)V

    return-void
.end method

.method a(Landroid/support/v7/widget/ak$o;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->e:Landroid/support/v7/widget/ak$o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->e:Landroid/support/v7/widget/ak$o;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak$o;->b()V

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/ak$p;->e:Landroid/support/v7/widget/ak$o;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/ak$p;->e:Landroid/support/v7/widget/ak$o;

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak;->getAdapter()Landroid/support/v7/widget/ak$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ak$o;->a(Landroid/support/v7/widget/ak$a;)V

    :cond_1
    return-void
.end method

.method a(Landroid/support/v7/widget/ak$v;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ak$p;->i:Landroid/support/v7/widget/ak$v;

    return-void
.end method

.method a(Landroid/support/v7/widget/ak$x;Z)V
    .locals 3

    invoke-static {p1}, Landroid/support/v7/widget/ak;->c(Landroid/support/v7/widget/ak$x;)V

    const/16 v0, 0x4000

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ak$x;->a(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/ak$x;->a(II)V

    iget-object v0, p1, Landroid/support/v7/widget/ak$x;->a:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/h/q;->a(Landroid/view/View;Landroid/support/v4/h/b;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ak$p;->d(Landroid/support/v7/widget/ak$x;)V

    :cond_1
    iput-object v2, p1, Landroid/support/v7/widget/ak$x;->m:Landroid/support/v7/widget/ak;

    invoke-virtual {p0}, Landroid/support/v7/widget/ak$p;->g()Landroid/support/v7/widget/ak$o;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/ak$o;->a(Landroid/support/v7/widget/ak$x;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Landroid/support/v7/widget/ak;->e(Landroid/view/View;)Landroid/support/v7/widget/ak$x;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ak$x;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/ak;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/ak$x;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/ak$x;->j()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/ak$x;->k()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/ak$x;->l()V

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ak$p;->b(Landroid/support/v7/widget/ak$x;)V

    return-void
.end method

.method a(Landroid/support/v7/widget/ak$x;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/support/v7/widget/ak$x;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object p1, p1, Landroid/support/v7/widget/ak;->C:Landroid/support/v7/widget/ak$u;

    invoke-virtual {p1}, Landroid/support/v7/widget/ak$u;->a()Z

    move-result p1

    return p1

    :cond_0
    iget v0, p1, Landroid/support/v7/widget/ak$x;->c:I

    if-ltz v0, :cond_4

    iget v0, p1, Landroid/support/v7/widget/ak$x;->c:I

    iget-object v1, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v1, v1, Landroid/support/v7/widget/ak;->l:Landroid/support/v7/widget/ak$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/ak$a;->a()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->C:Landroid/support/v7/widget/ak$u;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak$u;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->l:Landroid/support/v7/widget/ak$a;

    iget v2, p1, Landroid/support/v7/widget/ak$x;->c:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ak$a;->a(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/widget/ak$x;->h()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->l:Landroid/support/v7/widget/ak$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak$a;->b()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/support/v7/widget/ak$x;->g()J

    move-result-wide v3

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->l:Landroid/support/v7/widget/ak$a;

    iget p1, p1, Landroid/support/v7/widget/ak$x;->c:I

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ak$a;->b(I)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    invoke-virtual {p1}, Landroid/support/v7/widget/ak;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(I)I
    .locals 3

    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->C:Landroid/support/v7/widget/ak$u;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak$u;->e()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->C:Landroid/support/v7/widget/ak$u;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak$u;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->e:Landroid/support/v7/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->b(I)I

    move-result p1

    return p1

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". State "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "item count is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object p1, p1, Landroid/support/v7/widget/ak;->C:Landroid/support/v7/widget/ak$u;

    invoke-virtual {p1}, Landroid/support/v7/widget/ak$u;->e()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    invoke-virtual {p1}, Landroid/support/v7/widget/ak;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b(IZ)Landroid/support/v7/widget/ak$x;
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/ak$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ak$x;

    invoke-virtual {v3}, Landroid/support/v7/widget/ak$x;->k()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/support/v7/widget/ak$x;->d()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Landroid/support/v7/widget/ak$x;->n()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v4, v4, Landroid/support/v7/widget/ak;->C:Landroid/support/v7/widget/ak$u;

    iget-boolean v4, v4, Landroid/support/v7/widget/ak$u;->f:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/ak$x;->q()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/16 p1, 0x20

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/ak$x;->b(I)V

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez p2, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->f:Landroid/support/v7/widget/u;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/u;->c(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Landroid/support/v7/widget/ak;->e(Landroid/view/View;)Landroid/support/v7/widget/ak$x;

    move-result-object p1

    iget-object p2, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object p2, p2, Landroid/support/v7/widget/ak;->f:Landroid/support/v7/widget/u;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/u;->e(Landroid/view/View;)V

    iget-object p2, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object p2, p2, Landroid/support/v7/widget/ak;->f:Landroid/support/v7/widget/u;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/u;->b(Landroid/view/View;)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v1, v1, Landroid/support/v7/widget/ak;->f:Landroid/support/v7/widget/u;

    invoke-virtual {v1, p2}, Landroid/support/v7/widget/u;->e(I)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ak$p;->c(Landroid/view/View;)V

    const/16 p2, 0x2020

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/ak$x;->b(I)V

    return-object p1

    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    invoke-virtual {p1}, Landroid/support/v7/widget/ak;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_7

    iget-object v2, p0, Landroid/support/v7/widget/ak$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ak$x;

    invoke-virtual {v2}, Landroid/support/v7/widget/ak$x;->n()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Landroid/support/v7/widget/ak$x;->d()I

    move-result v3

    if-ne v3, p1, :cond_6

    if-nez p2, :cond_5

    iget-object p1, p0, Landroid/support/v7/widget/ak$p;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    return-object v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method b()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->m:Landroid/support/v7/widget/ak$i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->m:Landroid/support/v7/widget/ak$i;

    iget v0, v0, Landroid/support/v7/widget/ak$i;->x:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/ak$p;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/support/v7/widget/ak$p;->d:I

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/ak$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/ak$p;->d:I

    if-le v1, v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ak$p;->d(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method b(II)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/ak$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ak$x;

    if-eqz v2, :cond_0

    iget v3, v2, Landroid/support/v7/widget/ak$x;->c:I

    if-lt v3, p1, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, p2, v3}, Landroid/support/v7/widget/ak$x;->a(IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method b(Landroid/support/v7/widget/ak$x;)V
    .locals 6

    invoke-virtual {p1}, Landroid/support/v7/widget/ak$x;->i()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_d

    iget-object v0, p1, Landroid/support/v7/widget/ak$x;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/ak$x;->r()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Landroid/support/v7/widget/ak$x;->c()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p1}, Landroid/support/v7/widget/ak$x;->a(Landroid/support/v7/widget/ak$x;)Z

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v3, v3, Landroid/support/v7/widget/ak;->l:Landroid/support/v7/widget/ak$a;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v3, v3, Landroid/support/v7/widget/ak;->l:Landroid/support/v7/widget/ak$a;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/ak$a;->b(Landroid/support/v7/widget/ak$x;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/support/v7/widget/ak$x;->w()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_5

    :cond_3
    :goto_1
    iget v3, p0, Landroid/support/v7/widget/ak$p;->d:I

    if-lez v3, :cond_8

    const/16 v3, 0x20e

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/ak$x;->a(I)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Landroid/support/v7/widget/ak$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/ak$p;->d:I

    if-lt v3, v4, :cond_4

    if-lez v3, :cond_4

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ak$p;->d(I)V

    add-int/lit8 v3, v3, -0x1

    :cond_4
    invoke-static {}, Landroid/support/v7/widget/ak;->y()Z

    move-result v4

    if-eqz v4, :cond_7

    if-lez v3, :cond_7

    iget-object v4, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v4, v4, Landroid/support/v7/widget/ak;->B:Landroid/support/v7/widget/ac$a;

    iget v5, p1, Landroid/support/v7/widget/ak$x;->c:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ac$a;->a(I)Z

    move-result v4

    if-nez v4, :cond_7

    add-int/lit8 v3, v3, -0x1

    :goto_2
    if-ltz v3, :cond_6

    iget-object v4, p0, Landroid/support/v7/widget/ak$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/ak$x;

    iget v4, v4, Landroid/support/v7/widget/ak$x;->c:I

    iget-object v5, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v5, v5, Landroid/support/v7/widget/ak;->B:Landroid/support/v7/widget/ac$a;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/ac$a;->a(I)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    add-int/2addr v3, v2

    :cond_7
    iget-object v4, p0, Landroid/support/v7/widget/ak$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    :goto_4
    if-nez v3, :cond_9

    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/ak$p;->a(Landroid/support/v7/widget/ak$x;Z)V

    const/4 v1, 0x1

    :cond_9
    :goto_5
    iget-object v2, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v2, v2, Landroid/support/v7/widget/ak;->g:Landroid/support/v7/widget/be;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/be;->g(Landroid/support/v7/widget/ak$x;)V

    if-nez v3, :cond_a

    if-nez v1, :cond_a

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/ak$x;->m:Landroid/support/v7/widget/ak;

    :cond_a
    return-void

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    invoke-virtual {v1}, Landroid/support/v7/widget/ak;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    invoke-virtual {p1}, Landroid/support/v7/widget/ak;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v7/widget/ak$x;->i()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/support/v7/widget/ak$x;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_e

    const/4 v1, 0x1

    :cond_e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    invoke-virtual {p1}, Landroid/support/v7/widget/ak;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Landroid/support/v7/widget/ak;->e(Landroid/view/View;)Landroid/support/v7/widget/ak$x;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/widget/ak$x;->a(Landroid/support/v7/widget/ak$x;Landroid/support/v7/widget/ak$p;)Landroid/support/v7/widget/ak$p;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/widget/ak$x;->a(Landroid/support/v7/widget/ak$x;Z)Z

    invoke-virtual {p1}, Landroid/support/v7/widget/ak$x;->l()V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ak$p;->b(Landroid/support/v7/widget/ak$x;)V

    return-void
.end method

.method public c(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/ak$p;->a(IZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/ak$x;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->g:Ljava/util/List;

    return-object v0
.end method

.method c(II)V
    .locals 3

    add-int/2addr p2, p1

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/ak$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ak$x;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget v2, v1, Landroid/support/v7/widget/ak$x;->c:I

    if-lt v2, p1, :cond_1

    if-ge v2, p2, :cond_1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ak$x;->b(I)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ak$p;->d(I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method c(Landroid/support/v7/widget/ak$x;)V
    .locals 1

    invoke-static {p1}, Landroid/support/v7/widget/ak$x;->b(Landroid/support/v7/widget/ak$x;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->b:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->a:Ljava/util/ArrayList;

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/widget/ak$x;->a(Landroid/support/v7/widget/ak$x;Landroid/support/v7/widget/ak$p;)Landroid/support/v7/widget/ak$p;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/widget/ak$x;->a(Landroid/support/v7/widget/ak$x;Z)Z

    invoke-virtual {p1}, Landroid/support/v7/widget/ak$x;->l()V

    return-void
.end method

.method c(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Landroid/support/v7/widget/ak;->e(Landroid/view/View;)Landroid/support/v7/widget/ak$x;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ak$x;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/support/v7/widget/ak$x;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ak;->b(Landroid/support/v7/widget/ak$x;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ak$p;->b:Ljava/util/ArrayList;

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/widget/ak$x;->a(Landroid/support/v7/widget/ak$p;Z)V

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->b:Ljava/util/ArrayList;

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/widget/ak$x;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/support/v7/widget/ak$x;->q()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->l:Landroid/support/v7/widget/ak$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak$a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    invoke-virtual {v1}, Landroid/support/v7/widget/ak;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/widget/ak$x;->a(Landroid/support/v7/widget/ak$p;Z)V

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->a:Ljava/util/ArrayList;

    :goto_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method d()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ak$p;->d(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Landroid/support/v7/widget/ak;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->B:Landroid/support/v7/widget/ac$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/ac$a;->a()V

    :cond_1
    return-void
.end method

.method d(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ak$x;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/ak$p;->a(Landroid/support/v7/widget/ak$x;Z)V

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method d(Landroid/support/v7/widget/ak$x;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->n:Landroid/support/v7/widget/ak$q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->n:Landroid/support/v7/widget/ak$q;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ak$q;->a(Landroid/support/v7/widget/ak$x;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->l:Landroid/support/v7/widget/ak$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->l:Landroid/support/v7/widget/ak$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ak$a;->a(Landroid/support/v7/widget/ak$x;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->C:Landroid/support/v7/widget/ak$u;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->g:Landroid/support/v7/widget/be;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/be;->g(Landroid/support/v7/widget/ak$x;)V

    :cond_2
    return-void
.end method

.method e()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method e(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/ak$x;

    iget-object p1, p1, Landroid/support/v7/widget/ak$x;->a:Landroid/view/View;

    return-object p1
.end method

.method f(I)Landroid/support/v7/widget/ak$x;
    .locals 9

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_2

    iget-object v5, p0, Landroid/support/v7/widget/ak$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/ak$x;

    invoke-virtual {v5}, Landroid/support/v7/widget/ak$x;->k()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/support/v7/widget/ak$x;->d()I

    move-result v6

    if-ne v6, p1, :cond_1

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/ak$x;->b(I)V

    return-object v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v3, v3, Landroid/support/v7/widget/ak;->l:Landroid/support/v7/widget/ak$a;

    invoke-virtual {v3}, Landroid/support/v7/widget/ak$a;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v3, v3, Landroid/support/v7/widget/ak;->e:Landroid/support/v7/widget/f;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/f;->b(I)I

    move-result p1

    if-lez p1, :cond_4

    iget-object v3, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v3, v3, Landroid/support/v7/widget/ak;->l:Landroid/support/v7/widget/ak$a;

    invoke-virtual {v3}, Landroid/support/v7/widget/ak$a;->a()I

    move-result v3

    if-ge p1, v3, :cond_4

    iget-object v3, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v3, v3, Landroid/support/v7/widget/ak;->l:Landroid/support/v7/widget/ak$a;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/ak$a;->b(I)J

    move-result-wide v5

    :goto_1
    if-ge v2, v0, :cond_4

    iget-object p1, p0, Landroid/support/v7/widget/ak$p;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/ak$x;

    invoke-virtual {p1}, Landroid/support/v7/widget/ak$x;->k()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/support/v7/widget/ak$x;->g()J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-nez v3, :cond_3

    invoke-virtual {p1, v4}, Landroid/support/v7/widget/ak$x;->b(I)V

    return-object p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v1
.end method

.method f()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method g()Landroid/support/v7/widget/ak$o;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->e:Landroid/support/v7/widget/ak$o;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/ak$o;

    invoke-direct {v0}, Landroid/support/v7/widget/ak$o;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ak$p;->e:Landroid/support/v7/widget/ak$o;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->e:Landroid/support/v7/widget/ak$o;

    return-object v0
.end method

.method h()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/ak$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ak$x;

    if-eqz v2, :cond_0

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ak$x;->b(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ak$x;->a(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->l:Landroid/support/v7/widget/ak$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->f:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->l:Landroid/support/v7/widget/ak$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak$a;->b()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/ak$p;->d()V

    :cond_3
    return-void
.end method

.method i()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/ak$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ak$x;

    invoke-virtual {v3}, Landroid/support/v7/widget/ak$x;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/ak$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ak$x;

    invoke-virtual {v3}, Landroid/support/v7/widget/ak$x;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/ak$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ak$x;

    invoke-virtual {v2}, Landroid/support/v7/widget/ak$x;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method j()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/ak$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/ak$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ak$x;

    iget-object v2, v2, Landroid/support/v7/widget/ak$x;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ak$j;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/ak$j;->e:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
