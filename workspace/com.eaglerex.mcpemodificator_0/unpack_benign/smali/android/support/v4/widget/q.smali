.class public Landroid/support/v4/widget/q;
.super Ljava/lang/Object;


# static fields
.field static final b:Landroid/support/v4/widget/r;


# instance fields
.field a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/widget/u;

    invoke-direct {v0}, Landroid/support/v4/widget/u;-><init>()V

    sput-object v0, Landroid/support/v4/widget/q;->b:Landroid/support/v4/widget/r;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/widget/t;

    invoke-direct {v0}, Landroid/support/v4/widget/t;-><init>()V

    sput-object v0, Landroid/support/v4/widget/q;->b:Landroid/support/v4/widget/r;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/widget/s;

    invoke-direct {v0}, Landroid/support/v4/widget/s;-><init>()V

    sput-object v0, Landroid/support/v4/widget/q;->b:Landroid/support/v4/widget/r;

    goto :goto_0
.end method


# virtual methods
.method public a(IIIII)V
    .locals 7

    sget-object v0, Landroid/support/v4/widget/q;->b:Landroid/support/v4/widget/r;

    iget-object v1, p0, Landroid/support/v4/widget/q;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/support/v4/widget/r;->a(Ljava/lang/Object;IIIII)V

    return-void
.end method

.method public a()Z
    .locals 2

    sget-object v0, Landroid/support/v4/widget/q;->b:Landroid/support/v4/widget/r;

    iget-object v1, p0, Landroid/support/v4/widget/q;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/r;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 2

    sget-object v0, Landroid/support/v4/widget/q;->b:Landroid/support/v4/widget/r;

    iget-object v1, p0, Landroid/support/v4/widget/q;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/r;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 2

    sget-object v0, Landroid/support/v4/widget/q;->b:Landroid/support/v4/widget/r;

    iget-object v1, p0, Landroid/support/v4/widget/q;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/r;->c(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 2

    sget-object v0, Landroid/support/v4/widget/q;->b:Landroid/support/v4/widget/r;

    iget-object v1, p0, Landroid/support/v4/widget/q;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/r;->f(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 2

    sget-object v0, Landroid/support/v4/widget/q;->b:Landroid/support/v4/widget/r;

    iget-object v1, p0, Landroid/support/v4/widget/q;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/r;->g(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 2

    sget-object v0, Landroid/support/v4/widget/q;->b:Landroid/support/v4/widget/r;

    iget-object v1, p0, Landroid/support/v4/widget/q;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/r;->d(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 2

    sget-object v0, Landroid/support/v4/widget/q;->b:Landroid/support/v4/widget/r;

    iget-object v1, p0, Landroid/support/v4/widget/q;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/r;->e(Ljava/lang/Object;)V

    return-void
.end method
