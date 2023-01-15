.class Landroid/support/v7/internal/widget/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/t;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/t;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/widget/ab;->a:Landroid/support/v7/internal/widget/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/t;Landroid/support/v7/internal/widget/u;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ab;-><init>(Landroid/support/v7/internal/widget/t;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ab;->a:Landroid/support/v7/internal/widget/t;

    invoke-static {v0}, Landroid/support/v7/internal/widget/t;->a(Landroid/support/v7/internal/widget/t;)Landroid/support/v7/internal/widget/w;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ab;->a:Landroid/support/v7/internal/widget/t;

    invoke-static {v0}, Landroid/support/v7/internal/widget/t;->a(Landroid/support/v7/internal/widget/t;)Landroid/support/v7/internal/widget/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/w;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/ab;->a:Landroid/support/v7/internal/widget/t;

    invoke-static {v1}, Landroid/support/v7/internal/widget/t;->a(Landroid/support/v7/internal/widget/t;)Landroid/support/v7/internal/widget/w;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/w;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ab;->a:Landroid/support/v7/internal/widget/t;

    invoke-static {v0}, Landroid/support/v7/internal/widget/t;->a(Landroid/support/v7/internal/widget/t;)Landroid/support/v7/internal/widget/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/w;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/ab;->a:Landroid/support/v7/internal/widget/t;

    iget v1, v1, Landroid/support/v7/internal/widget/t;->a:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ab;->a:Landroid/support/v7/internal/widget/t;

    invoke-static {v0}, Landroid/support/v7/internal/widget/t;->b(Landroid/support/v7/internal/widget/t;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ab;->a:Landroid/support/v7/internal/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/t;->c()V

    :cond_0
    return-void
.end method
