.class public Landroid/support/v7/internal/view/menu/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/support/v7/internal/view/menu/v;


# instance fields
.field private a:Landroid/support/v7/internal/view/menu/n;

.field b:Landroid/support/v7/internal/view/menu/l;

.field private c:Landroid/app/AlertDialog;

.field private d:Landroid/support/v7/internal/view/menu/v;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/q;->a:Landroid/support/v7/internal/view/menu/n;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/q;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/q;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/IBinder;)V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/q;->a:Landroid/support/v7/internal/view/menu/n;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->d()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/support/v7/internal/view/menu/l;

    sget v3, Landroid/support/v7/b/g;->abc_list_menu_item_layout:I

    sget v4, Landroid/support/v7/b/i;->Theme_AppCompat_CompactMenu_Dialog:I

    invoke-direct {v2, v3, v4}, Landroid/support/v7/internal/view/menu/l;-><init>(II)V

    iput-object v2, p0, Landroid/support/v7/internal/view/menu/q;->b:Landroid/support/v7/internal/view/menu/l;

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/q;->b:Landroid/support/v7/internal/view/menu/l;

    invoke-virtual {v2, p0}, Landroid/support/v7/internal/view/menu/l;->a(Landroid/support/v7/internal/view/menu/v;)V

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/q;->a:Landroid/support/v7/internal/view/menu/n;

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/q;->b:Landroid/support/v7/internal/view/menu/l;

    invoke-virtual {v2, v3}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/support/v7/internal/view/menu/u;)V

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/q;->b:Landroid/support/v7/internal/view/menu/l;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/l;->a()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->n()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    :goto_0
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/q;->c:Landroid/app/AlertDialog;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/q;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/q;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eqz p1, :cond_0

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/q;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->l()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public a(Landroid/support/v7/internal/view/menu/n;Z)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/q;->a:Landroid/support/v7/internal/view/menu/n;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/q;->a()V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/q;->d:Landroid/support/v7/internal/view/menu/v;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/q;->d:Landroid/support/v7/internal/view/menu/v;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/v;->a(Landroid/support/v7/internal/view/menu/n;Z)V

    :cond_2
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/n;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/q;->d:Landroid/support/v7/internal/view/menu/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/q;->d:Landroid/support/v7/internal/view/menu/v;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/view/menu/v;->a(Landroid/support/v7/internal/view/menu/n;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/q;->a:Landroid/support/v7/internal/view/menu/n;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/q;->b:Landroid/support/v7/internal/view/menu/l;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/l;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/r;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/view/MenuItem;I)Z

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/q;->b:Landroid/support/v7/internal/view/menu/l;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/q;->a:Landroid/support/v7/internal/view/menu/n;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/view/menu/l;->a(Landroid/support/v7/internal/view/menu/n;Z)V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x52

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/q;->c:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/q;->c:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/q;->a:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/menu/n;->a(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/q;->a:Landroid/support/v7/internal/view/menu/n;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/support/v7/internal/view/menu/n;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_0
.end method
