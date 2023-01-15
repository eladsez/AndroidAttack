.class Lcom/stefanjm/typer/MainActivity$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stefanjm/typer/MainActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/stefanjm/typer/MainActivity$3;


# direct methods
.method constructor <init>(Lcom/stefanjm/typer/MainActivity$3;)V
    .locals 0

    iput-object p1, p0, Lcom/stefanjm/typer/MainActivity$3$1;->a:Lcom/stefanjm/typer/MainActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$3$1;->a:Lcom/stefanjm/typer/MainActivity$3;

    iget-object p1, p1, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    iget-boolean p1, p1, Lcom/stefanjm/typer/MainActivity;->p:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$3$1;->a:Lcom/stefanjm/typer/MainActivity$3;

    iget-object p1, p1, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    invoke-virtual {p1}, Lcom/stefanjm/typer/MainActivity;->n()V

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$3$1;->a:Lcom/stefanjm/typer/MainActivity$3;

    iget-object p1, p1, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/stefanjm/typer/MainActivity;->p:Z

    :cond_0
    return-void
.end method
