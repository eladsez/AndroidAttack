.class Landroid/support/v7/internal/widget/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ProgressBarICS;

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ProgressBarICS;IIZ)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/widget/ae;->a:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/support/v7/internal/widget/ae;->b:I

    iput p3, p0, Landroid/support/v7/internal/widget/ae;->c:I

    iput-boolean p4, p0, Landroid/support/v7/internal/widget/ae;->d:Z

    return-void
.end method


# virtual methods
.method public a(IIZ)V
    .locals 0

    iput p1, p0, Landroid/support/v7/internal/widget/ae;->b:I

    iput p2, p0, Landroid/support/v7/internal/widget/ae;->c:I

    iput-boolean p3, p0, Landroid/support/v7/internal/widget/ae;->d:Z

    return-void
.end method

.method public run()V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/internal/widget/ae;->a:Landroid/support/v7/internal/widget/ProgressBarICS;

    iget v1, p0, Landroid/support/v7/internal/widget/ae;->b:I

    iget v2, p0, Landroid/support/v7/internal/widget/ae;->c:I

    iget-boolean v3, p0, Landroid/support/v7/internal/widget/ae;->d:Z

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->a(Landroid/support/v7/internal/widget/ProgressBarICS;IIZZ)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ae;->a:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-static {v0, p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->a(Landroid/support/v7/internal/widget/ProgressBarICS;Landroid/support/v7/internal/widget/ae;)Landroid/support/v7/internal/widget/ae;

    return-void
.end method
