.class public abstract Landroid/support/v7/widget/av$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/av$f$c;,
        Landroid/support/v7/widget/av$f$a;,
        Landroid/support/v7/widget/av$f$b;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v7/widget/av$f$b;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/av$f$a;",
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

    iput-object v0, p0, Landroid/support/v7/widget/av$f;->a:Landroid/support/v7/widget/av$f$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/av$f;->b:Ljava/util/ArrayList;

    const-wide/16 v0, 0x78

    iput-wide v0, p0, Landroid/support/v7/widget/av$f;->c:J

    iput-wide v0, p0, Landroid/support/v7/widget/av$f;->d:J

    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Landroid/support/v7/widget/av$f;->e:J

    iput-wide v0, p0, Landroid/support/v7/widget/av$f;->f:J

    return-void
.end method

.method static e(Landroid/support/v7/widget/av$x;)I
    .locals 3

    invoke-static {p0}, Landroid/support/v7/widget/av$x;->d(Landroid/support/v7/widget/av$x;)I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    invoke-virtual {p0}, Landroid/support/v7/widget/av$x;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/av$x;->f()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/av$x;->e()I

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
.method public a(Landroid/support/v7/widget/av$u;Landroid/support/v7/widget/av$x;)Landroid/support/v7/widget/av$f$c;
    .locals 0

    invoke-virtual {p0}, Landroid/support/v7/widget/av$f;->j()Landroid/support/v7/widget/av$f$c;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/av$f$c;->a(Landroid/support/v7/widget/av$x;)Landroid/support/v7/widget/av$f$c;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/support/v7/widget/av$u;Landroid/support/v7/widget/av$x;ILjava/util/List;)Landroid/support/v7/widget/av$f$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/av$u;",
            "Landroid/support/v7/widget/av$x;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/support/v7/widget/av$f$c;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v7/widget/av$f;->j()Landroid/support/v7/widget/av$f$c;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/av$f$c;->a(Landroid/support/v7/widget/av$x;)Landroid/support/v7/widget/av$f$c;

    move-result-object p1

    return-object p1
.end method

.method public abstract a()V
.end method

.method a(Landroid/support/v7/widget/av$f$b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/av$f;->a:Landroid/support/v7/widget/av$f$b;

    return-void
.end method

.method public abstract a(Landroid/support/v7/widget/av$x;Landroid/support/v7/widget/av$f$c;Landroid/support/v7/widget/av$f$c;)Z
.end method

.method public abstract a(Landroid/support/v7/widget/av$x;Landroid/support/v7/widget/av$x;Landroid/support/v7/widget/av$f$c;Landroid/support/v7/widget/av$f$c;)Z
.end method

.method public a(Landroid/support/v7/widget/av$x;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/av$x;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/av$f;->h(Landroid/support/v7/widget/av$x;)Z

    move-result p1

    return p1
.end method

.method public abstract b()Z
.end method

.method public abstract b(Landroid/support/v7/widget/av$x;Landroid/support/v7/widget/av$f$c;Landroid/support/v7/widget/av$f$c;)Z
.end method

.method public abstract c(Landroid/support/v7/widget/av$x;Landroid/support/v7/widget/av$f$c;Landroid/support/v7/widget/av$f$c;)Z
.end method

.method public abstract d()V
.end method

.method public abstract d(Landroid/support/v7/widget/av$x;)V
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/av$f;->e:J

    return-wide v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/av$f;->c:J

    return-wide v0
.end method

.method public final f(Landroid/support/v7/widget/av$x;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/av$f;->g(Landroid/support/v7/widget/av$x;)V

    iget-object v0, p0, Landroid/support/v7/widget/av$f;->a:Landroid/support/v7/widget/av$f$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/av$f;->a:Landroid/support/v7/widget/av$f$b;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/av$f$b;->a(Landroid/support/v7/widget/av$x;)V

    :cond_0
    return-void
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/av$f;->d:J

    return-wide v0
.end method

.method public g(Landroid/support/v7/widget/av$x;)V
    .locals 0

    return-void
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/av$f;->f:J

    return-wide v0
.end method

.method public h(Landroid/support/v7/widget/av$x;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/av$f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/av$f;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/av$f$a;

    invoke-interface {v2}, Landroid/support/v7/widget/av$f$a;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/av$f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public j()Landroid/support/v7/widget/av$f$c;
    .locals 1

    new-instance v0, Landroid/support/v7/widget/av$f$c;

    invoke-direct {v0}, Landroid/support/v7/widget/av$f$c;-><init>()V

    return-object v0
.end method
