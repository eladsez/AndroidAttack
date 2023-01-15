.class Landroid/support/v4/widget/DrawerLayout$a;
.super Landroid/support/v4/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/DrawerLayout;

.field private final c:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/DrawerLayout;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$a;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0}, Landroid/support/v4/h/b;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$a;->c:Landroid/graphics/Rect;

    return-void
.end method

.method private a(Landroid/support/v4/h/a/b;Landroid/support/v4/h/a/b;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$a;->c:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/support/v4/h/a/b;->a(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a/b;->b(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Landroid/support/v4/h/a/b;->c(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a/b;->d(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/support/v4/h/a/b;->g()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a/b;->e(Z)V

    invoke-virtual {p2}, Landroid/support/v4/h/a/b;->o()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a/b;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/support/v4/h/a/b;->p()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a/b;->b(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/support/v4/h/a/b;->r()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a/b;->c(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/support/v4/h/a/b;->l()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a/b;->j(Z)V

    invoke-virtual {p2}, Landroid/support/v4/h/a/b;->j()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a/b;->h(Z)V

    invoke-virtual {p2}, Landroid/support/v4/h/a/b;->e()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a/b;->c(Z)V

    invoke-virtual {p2}, Landroid/support/v4/h/a/b;->f()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a/b;->d(Z)V

    invoke-virtual {p2}, Landroid/support/v4/h/a/b;->h()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a/b;->f(Z)V

    invoke-virtual {p2}, Landroid/support/v4/h/a/b;->i()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a/b;->g(Z)V

    invoke-virtual {p2}, Landroid/support/v4/h/a/b;->k()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a/b;->i(Z)V

    invoke-virtual {p2}, Landroid/support/v4/h/a/b;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/v4/h/a/b;->a(I)V

    return-void
.end method

.method private a(Landroid/support/v4/h/a/b;Landroid/view/ViewGroup;)V
    .locals 4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/widget/DrawerLayout;->l(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Landroid/support/v4/h/a/b;->b(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/h/a/b;)V
    .locals 3

    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->b:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/support/v4/h/b;->a(Landroid/view/View;Landroid/support/v4/h/a/b;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/support/v4/h/a/b;->a(Landroid/support/v4/h/a/b;)Landroid/support/v4/h/a/b;

    move-result-object v0

    invoke-super {p0, p1, v0}, Landroid/support/v4/h/b;->a(Landroid/view/View;Landroid/support/v4/h/a/b;)V

    invoke-virtual {p2, p1}, Landroid/support/v4/h/a/b;->a(Landroid/view/View;)V

    invoke-static {p1}, Landroid/support/v4/h/q;->f(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/support/v4/h/a/b;->c(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0, p2, v0}, Landroid/support/v4/widget/DrawerLayout$a;->a(Landroid/support/v4/h/a/b;Landroid/support/v4/h/a/b;)V

    invoke-virtual {v0}, Landroid/support/v4/h/a/b;->s()V

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p2, p1}, Landroid/support/v4/widget/DrawerLayout$a;->a(Landroid/support/v4/h/a/b;Landroid/view/ViewGroup;)V

    :goto_0
    const-class p1, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v4/h/a/b;->b(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/support/v4/h/a/b;->c(Z)V

    invoke-virtual {p2, p1}, Landroid/support/v4/h/a/b;->d(Z)V

    sget-object p1, Landroid/support/v4/h/a/b$a;->a:Landroid/support/v4/h/a/b$a;

    invoke-virtual {p2, p1}, Landroid/support/v4/h/a/b;->a(Landroid/support/v4/h/a/b$a;)Z

    sget-object p1, Landroid/support/v4/h/a/b$a;->b:Landroid/support/v4/h/a/b$a;

    invoke-virtual {p2, p1}, Landroid/support/v4/h/a/b;->a(Landroid/support/v4/h/a/b$a;)Z

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v4/h/b;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p1, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->b:Z

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/support/v4/widget/DrawerLayout;->l(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/h/b;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Landroid/support/v4/widget/DrawerLayout$a;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {p2}, Landroid/support/v4/widget/DrawerLayout;->c()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$a;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/DrawerLayout;->e(Landroid/view/View;)I

    move-result p2

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$a;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/DrawerLayout;->b(I)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/h/b;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method
