.class Landroid/support/v7/internal/widget/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/k;

.field private final b:Landroid/support/v7/internal/widget/n;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/k;Landroid/support/v7/internal/widget/n;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/widget/o;->a:Landroid/support/v7/internal/widget/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v7/internal/widget/o;->b:Landroid/support/v7/internal/widget/n;

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Landroid/support/v7/internal/widget/o;->b:Landroid/support/v7/internal/widget/n;

    iget-object v1, p0, Landroid/support/v7/internal/widget/o;->a:Landroid/support/v7/internal/widget/k;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v7/internal/widget/n;->a(Landroid/support/v7/internal/widget/k;Landroid/view/View;IJ)V

    return-void
.end method
