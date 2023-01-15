.class public Landroid/support/v7/widget/m;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private b:Landroid/support/v7/widget/av;

.field private c:Landroid/support/v7/widget/av;

.field private d:Landroid/support/v7/widget/av;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/m;->a:Landroid/widget/ImageView;

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/m;->d:Landroid/support/v7/widget/av;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/av;

    invoke-direct {v0}, Landroid/support/v7/widget/av;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/m;->d:Landroid/support/v7/widget/av;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/m;->d:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->a()V

    iget-object v1, p0, Landroid/support/v7/widget/m;->a:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/support/v4/widget/i;->a(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iput-boolean v2, v0, Landroid/support/v7/widget/av;->d:Z

    iput-object v1, v0, Landroid/support/v7/widget/av;->a:Landroid/content/res/ColorStateList;

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/m;->a:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/support/v4/widget/i;->b(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-boolean v2, v0, Landroid/support/v7/widget/av;->c:Z

    iput-object v1, v0, Landroid/support/v7/widget/av;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_2
    iget-boolean v1, v0, Landroid/support/v7/widget/av;->d:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Landroid/support/v7/widget/av;->c:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/m;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/support/v7/widget/i;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/av;[I)V

    return v2
.end method

.method private e()Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-le v0, v3, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/av;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    if-ne v0, v3, :cond_2

    return v2

    :cond_2
    return v1
.end method


# virtual methods
.method public a(I)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/m;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/b/a/b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/support/v7/widget/x;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/m;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/m;->a:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/m;->d()V

    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/m;->c:Landroid/support/v7/widget/av;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/av;

    invoke-direct {v0}, Landroid/support/v7/widget/av;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/m;->c:Landroid/support/v7/widget/av;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/m;->c:Landroid/support/v7/widget/av;

    iput-object p1, v0, Landroid/support/v7/widget/av;->a:Landroid/content/res/ColorStateList;

    iget-object p1, p0, Landroid/support/v7/widget/m;->c:Landroid/support/v7/widget/av;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/widget/av;->d:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/m;->d()V

    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/m;->c:Landroid/support/v7/widget/av;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/av;

    invoke-direct {v0}, Landroid/support/v7/widget/av;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/m;->c:Landroid/support/v7/widget/av;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/m;->c:Landroid/support/v7/widget/av;

    iput-object p1, v0, Landroid/support/v7/widget/av;->b:Landroid/graphics/PorterDuff$Mode;

    iget-object p1, p0, Landroid/support/v7/widget/m;->c:Landroid/support/v7/widget/av;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/widget/av;->c:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/m;->d()V

    return-void
.end method

.method public a(Landroid/util/AttributeSet;I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/m;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/a/a$j;->AppCompatImageView:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroid/support/v7/widget/ax;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/ax;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Landroid/support/v7/widget/m;->a:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, -0x1

    if-nez p2, :cond_0

    sget v1, Landroid/support/v7/a/a$j;->AppCompatImageView_srcCompat:I

    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/ax;->g(II)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object p2, p0, Landroid/support/v7/widget/m;->a:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Landroid/support/v7/b/a/b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/m;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Landroid/support/v7/widget/x;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    sget p2, Landroid/support/v7/a/a$j;->AppCompatImageView_tint:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/ax;->f(I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroid/support/v7/widget/m;->a:Landroid/widget/ImageView;

    sget v1, Landroid/support/v7/a/a$j;->AppCompatImageView_tint:I

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/ax;->d(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/support/v4/widget/i;->a(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    :cond_2
    sget p2, Landroid/support/v7/a/a$j;->AppCompatImageView_tintMode:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/ax;->f(I)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroid/support/v7/widget/m;->a:Landroid/widget/ImageView;

    sget v1, Landroid/support/v7/a/a$j;->AppCompatImageView_tintMode:I

    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/ax;->a(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/x;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/support/v4/widget/i;->a(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/ax;->a()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/support/v7/widget/ax;->a()V

    throw p2
.end method

.method a()Z
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/m;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method b()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/m;->c:Landroid/support/v7/widget/av;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/m;->c:Landroid/support/v7/widget/av;

    iget-object v0, v0, Landroid/support/v7/widget/av;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method c()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/m;->c:Landroid/support/v7/widget/av;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/m;->c:Landroid/support/v7/widget/av;

    iget-object v0, v0, Landroid/support/v7/widget/av;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method d()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/m;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/support/v7/widget/x;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/m;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/m;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/m;->c:Landroid/support/v7/widget/av;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/m;->c:Landroid/support/v7/widget/av;

    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/m;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/i;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/av;[I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/av;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/av;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
