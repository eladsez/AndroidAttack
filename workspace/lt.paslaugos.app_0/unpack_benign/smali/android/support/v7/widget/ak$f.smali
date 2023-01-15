.class public abstract Landroid/support/v7/widget/ak$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ak$f$c;,
        Landroid/support/v7/widget/ak$f$a;,
        Landroid/support/v7/widget/ak$f$b;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v7/widget/ak$f$b;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/ak$f$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/ak$f;->a:Landroid/support/v7/widget/ak$f$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ak$f;->b:Ljava/util/ArrayList;

    const-wide/16 v0, 0x78

    iput-wide v0, p0, Landroid/support/v7/widget/ak$f;->c:J

    iput-wide v0, p0, Landroid/support/v7/widget/ak$f;->d:J

    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Landroid/support/v7/widget/ak$f;->e:J

    iput-wide v0, p0, Landroid/support/v7/widget/ak$f;->f:J

    return-void
.end method

.method static e(Landroid/support/v7/widget/ak$x;)I
    .locals 3

    invoke-static {p0}, Landroid/support/v7/widget/ak$x;->d(Landroid/support/v7/widget/ak$x;)I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    invoke-virtual {p0}, Landroid/support/v7/widget/ak$x;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/ak$x;->f()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/ak$x;->e()I

    move-result p0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eq p0, v2, :cond_1

    if-eq v1, p0, :cond_1

    or-int/lit16 v0, v0, 0x800

    :cond_1
    return v0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/ak$u;Landroid/support/v7/widget/ak$x;)Landroid/support/v7/widget/ak$f$c;
    .locals 0

    invoke-virtual {p0}, Landroid/support/v7/widget/ak$f;->j()Landroid/support/v7/widget/ak$f$c;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/ak$f$c;->a(Landroid/support/v7/widget/ak$x;)Landroid/support/v7/widget/ak$f$c;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/support/v7/widget/ak$u;Landroid/support/v7/widget/ak$x;ILjava/util/List;)Landroid/support/v7/widget/ak$f$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/ak$u;",
            "Landroid/support/v7/widget/ak$x;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/support/v7/widget/ak$f$c;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v7/widget/ak$f;->j()Landroid/support/v7/widget/ak$f$c;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/ak$f$c;->a(Landroid/support/v7/widget/ak$x;)Landroid/support/v7/widget/ak$f$c;

    move-result-object p1

    return-object p1
.end method

.method public abstract a()V
.end method

.method a(Landroid/support/v7/widget/ak$f$b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ak$f;->a:Landroid/support/v7/widget/ak$f$b;

    return-void
.end method

.method public abstract a(Landroid/support/v7/widget/ak$x;Landroid/support/v7/widget/ak$f$c;Landroid/support/v7/widget/ak$f$c;)Z
.end method

.method public abstract a(Landroid/support/v7/widget/ak$x;Landroid/support/v7/widget/ak$x;Landroid/support/v7/widget/ak$f$c;Landroid/support/v7/widget/ak$f$c;)Z
.end method

.method public a(Landroid/support/v7/widget/ak$x;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/ak$x;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ak$f;->h(Landroid/support/v7/widget/ak$x;)Z

    move-result p1

    return p1
.end method

.method public abstract b()Z
.end method

.method public abstract b(Landroid/support/v7/widget/ak$x;Landroid/support/v7/widget/ak$f$c;Landroid/support/v7/widget/ak$f$c;)Z
.end method

.method public abstract c(Landroid/support/v7/widget/ak$x;Landroid/support/v7/widget/ak$f$c;Landroid/support/v7/widget/ak$f$c;)Z
.end method

.method public abstract d()V
.end method

.method public abstract d(Landroid/support/v7/widget/ak$x;)V
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/ak$f;->e:J

    return-wide v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/ak$f;->c:J

    return-wide v0
.end method

.method public final f(Landroid/support/v7/widget/ak$x;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ak$f;->g(Landroid/support/v7/widget/ak$x;)V

    iget-object v0, p0, Landroid/support/v7/widget/ak$f;->a:Landroid/support/v7/widget/ak$f$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ak$f;->a:Landroid/support/v7/widget/ak$f$b;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ak$f$b;->a(Landroid/support/v7/widget/ak$x;)V

    :cond_0
    return-void
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/ak$f;->d:J

    return-wide v0
.end method

.method public g(Landroid/support/v7/widget/ak$x;)V
    .locals 0

    return-void
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/ak$f;->f:J

    return-wide v0
.end method

.method public h(Landroid/support/v7/widget/ak$x;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/ak$f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/ak$f;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ak$f$a;

    invoke-interface {v2}, Landroid/support/v7/widget/ak$f$a;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ak$f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public j()Landroid/support/v7/widget/ak$f$c;
    .locals 1

    new-instance v0, Landroid/support/v7/widget/ak$f$c;

    invoke-direct {v0}, Landroid/support/v7/widget/ak$f$c;-><init>()V

    return-object v0
.end method
