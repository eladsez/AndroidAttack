.class Landroid/support/v4/widget/e$b;
.super Landroid/database/DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/e;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/e;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/e$b;->a:Landroid/support/v4/widget/e;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/e$b;->a:Landroid/support/v4/widget/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/widget/e;->a:Z

    iget-object v0, p0, Landroid/support/v4/widget/e$b;->a:Landroid/support/v4/widget/e;

    invoke-virtual {v0}, Landroid/support/v4/widget/e;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/e$b;->a:Landroid/support/v4/widget/e;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/e;->a:Z

    iget-object v0, p0, Landroid/support/v4/widget/e$b;->a:Landroid/support/v4/widget/e;

    invoke-virtual {v0}, Landroid/support/v4/widget/e;->notifyDataSetInvalidated()V

    return-void
.end method
