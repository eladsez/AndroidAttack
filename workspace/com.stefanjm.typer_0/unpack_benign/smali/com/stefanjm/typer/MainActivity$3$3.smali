.class Lcom/stefanjm/typer/MainActivity$3$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/stefanjm/typer/MainActivity$3$3;->a:Lcom/stefanjm/typer/MainActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance p1, Landroid/support/v7/app/b$a;

    iget-object v0, p0, Lcom/stefanjm/typer/MainActivity$3$3;->a:Lcom/stefanjm/typer/MainActivity$3;

    iget-object v0, v0, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    invoke-direct {p1, v0}, Landroid/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/support/v7/app/b$a;->b()Landroid/support/v7/app/b;

    move-result-object p1

    const-string v0, "Caution"

    invoke-virtual {p1, v0}, Landroid/support/v7/app/b;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "Every word in the file has to be on its own line!"

    invoke-virtual {p1, v0}, Landroid/support/v7/app/b;->a(Ljava/lang/CharSequence;)V

    const-string v0, "I understand"

    new-instance v1, Lcom/stefanjm/typer/MainActivity$3$3$1;

    invoke-direct {v1, p0}, Lcom/stefanjm/typer/MainActivity$3$3$1;-><init>(Lcom/stefanjm/typer/MainActivity$3$3;)V

    const/4 v2, -0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/support/v7/app/b;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroid/support/v7/app/b;->show()V

    return-void
.end method
