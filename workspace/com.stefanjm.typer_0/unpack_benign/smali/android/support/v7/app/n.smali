.class Landroid/support/v7/app/n;
.super Landroid/support/v7/app/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/n$b;,
        Landroid/support/v7/app/n$a;,
        Landroid/support/v7/app/n$c;
    }
.end annotation


# instance fields
.field a:Landroid/support/v7/widget/ag;

.field b:Z

.field c:Landroid/view/Window$Callback;

.field private d:Z

.field private e:Z

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/app/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/Runnable;

.field private final h:Landroid/support/v7/widget/Toolbar$c;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/app/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/n;->f:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v7/app/n$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/n$1;-><init>(Landroid/support/v7/app/n;)V

    iput-object v0, p0, Landroid/support/v7/app/n;->g:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v7/app/n$2;

    invoke-direct {v0, p0}, Landroid/support/v7/app/n$2;-><init>(Landroid/support/v7/app/n;)V

    iput-object v0, p0, Landroid/support/v7/app/n;->h:Landroid/support/v7/widget/Toolbar$c;

    new-instance v0, Landroid/support/v7/widget/bj;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v7/widget/bj;-><init>(Landroid/support/v7/widget/Toolbar;Z)V

    iput-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/widget/ag;

    new-instance v0, Landroid/support/v7/app/n$c;

    invoke-direct {v0, p0, p3}, Landroid/support/v7/app/n$c;-><init>(Landroid/support/v7/app/n;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Landroid/support/v7/app/n;->c:Landroid/view/Window$Callback;

    iget-object p3, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/widget/ag;

    iget-object v0, p0, Landroid/support/v7/app/n;->c:Landroid/view/Window$Callback;

    invoke-interface {p3, v0}, Landroid/support/v7/widget/ag;->a(Landroid/view/Window$Callback;)V

    iget-object p3, p0, Landroid/support/v7/app/n;->h:Landroid/support/v7/widget/Toolbar$c;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$c;)V

    iget-object p1, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/widget/ag;

    invoke-interface {p1, p2}, Landroid/support/v7/widget/ag;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private j()Landroid/view/Menu;
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/app/n;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/widget/ag;

    new-instance v1, Landroid/support/v7/app/n$a;

    invoke-direct {v1, p0}, Landroid/support/v7/app/n$a;-><init>(Landroid/support/v7/app/n;)V

    new-instance v2, Landroid/support/v7/app/n$b;

    invoke-direct {v2, p0}, Landroid/support/v7/app/n$b;-><init>(Landroid/support/v7/app/n;)V

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/ag;->a(Landroid/support/v7/view/menu/o$a;Landroid/support/v7/view/menu/h$a;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/n;->d:Z

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/widget/ag;

    invoke-interface {v0}, Landroid/support/v7/widget/ag;->q()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/widget/ag;

    invoke-interface {v0}, Landroid/support/v7/widget/ag;->o()I

    move-result v0

    return v0
.end method

.method public a(F)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/widget/ag;

    invoke-interface {v0}, Landroid/support/v7/widget/ag;->a()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/h/q;->a(Landroid/view/View;F)V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/app/a;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/widget/ag;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ag;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 4

    invoke-direct {p0}, Landroid/support/v7/app/n;->j()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/n;->c()Z

    :cond_0
    return v0
.end method

.method public b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/widget/ag;

    invoke-interface {v0}, Landroid/support/v7/widget/ag;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/widget/ag;

    invoke-interface {v0}, Landroid/support/v7/widget/ag;->k()Z

    move-result v0

    return v0
.end method

.method public d(Z)V
    .locals 0

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/widget/ag;

    invoke-interface {v0}, Landroid/support/v7/widget/ag;->l()Z

    move-result v0

    return v0
.end method

.method public e(Z)V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/app/n;->e:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/app/n;->e:Z

    iget-object v0, p0, Landroid/support/v7/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/support/v7/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/a$b;

    invoke-interface {v2, p1}, Landroid/support/v7/app/a$b;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/widget/ag;

    invoke-interface {v0}, Landroid/support/v7/widget/ag;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/n;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/widget/ag;

    invoke-interface {v0}, Landroid/support/v7/widget/ag;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/n;->g:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/h/q;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/widget/ag;

    invoke-interface {v0}, Landroid/support/v7/widget/ag;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/widget/ag;

    invoke-interface {v0}, Landroid/support/v7/widget/ag;->d()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method g()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/widget/ag;

    invoke-interface {v0}, Landroid/support/v7/widget/ag;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/n;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public h()Landroid/view/Window$Callback;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/n;->c:Landroid/view/Window$Callback;

    return-object v0
.end method

.method i()V
    .locals 5

    invoke-direct {p0}, Landroid/support/v7/app/n;->j()Landroid/view/Menu;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v7/view/menu/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/support/v7/view/menu/h;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->g()V

    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    iget-object v3, p0, Landroid/support/v7/app/n;->c:Landroid/view/Window$Callback;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/app/n;->c:Landroid/view/Window$Callback;

    invoke-interface {v3, v4, v2, v0}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->h()V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->h()V

    :cond_5
    throw v0
.end method
