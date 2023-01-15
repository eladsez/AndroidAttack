.class Landroid/support/v7/internal/widget/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/internal/widget/n;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/aj;

.field final synthetic b:Landroid/support/v7/internal/widget/an;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/an;Landroid/support/v7/internal/widget/aj;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/widget/ao;->b:Landroid/support/v7/internal/widget/an;

    iput-object p2, p0, Landroid/support/v7/internal/widget/ao;->a:Landroid/support/v7/internal/widget/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/internal/widget/k;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ao;->b:Landroid/support/v7/internal/widget/an;

    iget-object v0, v0, Landroid/support/v7/internal/widget/an;->b:Landroid/support/v7/internal/widget/aj;

    invoke-virtual {v0, p3}, Landroid/support/v7/internal/widget/aj;->a(I)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ao;->b:Landroid/support/v7/internal/widget/an;

    iget-object v0, v0, Landroid/support/v7/internal/widget/an;->b:Landroid/support/v7/internal/widget/aj;

    iget-object v0, v0, Landroid/support/v7/internal/widget/aj;->t:Landroid/support/v7/internal/widget/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ao;->b:Landroid/support/v7/internal/widget/an;

    iget-object v0, v0, Landroid/support/v7/internal/widget/an;->b:Landroid/support/v7/internal/widget/aj;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ao;->b:Landroid/support/v7/internal/widget/an;

    invoke-static {v1}, Landroid/support/v7/internal/widget/an;->a(Landroid/support/v7/internal/widget/an;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/support/v7/internal/widget/aj;->a(Landroid/view/View;IJ)Z

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ao;->b:Landroid/support/v7/internal/widget/an;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/an;->d()V

    return-void
.end method
