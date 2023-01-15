.class Landroid/support/v7/widget/z$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/z$b;-><init>(Landroid/support/v7/widget/z;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/z;

.field final synthetic b:Landroid/support/v7/widget/z$b;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/z$b;Landroid/support/v7/widget/z;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/z$b$1;->b:Landroid/support/v7/widget/z$b;

    iput-object p2, p0, Landroid/support/v7/widget/z$b$1;->a:Landroid/support/v7/widget/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Landroid/support/v7/widget/z$b$1;->b:Landroid/support/v7/widget/z$b;

    iget-object p1, p1, Landroid/support/v7/widget/z$b;->b:Landroid/support/v7/widget/z;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/z;->setSelection(I)V

    iget-object p1, p0, Landroid/support/v7/widget/z$b$1;->b:Landroid/support/v7/widget/z$b;

    iget-object p1, p1, Landroid/support/v7/widget/z$b;->b:Landroid/support/v7/widget/z;

    invoke-virtual {p1}, Landroid/support/v7/widget/z;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/z$b$1;->b:Landroid/support/v7/widget/z$b;

    iget-object p1, p1, Landroid/support/v7/widget/z$b;->b:Landroid/support/v7/widget/z;

    iget-object p4, p0, Landroid/support/v7/widget/z$b$1;->b:Landroid/support/v7/widget/z$b;

    iget-object p4, p4, Landroid/support/v7/widget/z$b;->a:Landroid/widget/ListAdapter;

    invoke-interface {p4, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide p4

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/support/v7/widget/z;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/z$b$1;->b:Landroid/support/v7/widget/z$b;

    invoke-virtual {p1}, Landroid/support/v7/widget/z$b;->c()V

    return-void
.end method
