.class Lcom/stefanjm/typer/MainActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stefanjm/typer/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Lcom/stefanjm/typer/MainActivity;


# direct methods
.method constructor <init>(Lcom/stefanjm/typer/MainActivity;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/stefanjm/typer/MainActivity$2;->b:Lcom/stefanjm/typer/MainActivity;

    iput-object p2, p0, Lcom/stefanjm/typer/MainActivity$2;->a:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$2;->b:Lcom/stefanjm/typer/MainActivity;

    iget-boolean p1, p1, Lcom/stefanjm/typer/MainActivity;->s:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$2;->b:Lcom/stefanjm/typer/MainActivity;

    invoke-static {p1}, Lcom/stefanjm/typer/MainActivity;->a(Lcom/stefanjm/typer/MainActivity;)Lcom/google/android/gms/common/api/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/f;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$2;->b:Lcom/stefanjm/typer/MainActivity;

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/stefanjm/typer/MainActivity$2;->b:Lcom/stefanjm/typer/MainActivity;

    const v2, 0x1030073

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p1, Lcom/stefanjm/typer/MainActivity;->w:Landroid/app/Dialog;

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$2;->b:Lcom/stefanjm/typer/MainActivity;

    iget-object p1, p1, Lcom/stefanjm/typer/MainActivity;->w:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$2;->b:Lcom/stefanjm/typer/MainActivity;

    iget-object p1, p1, Lcom/stefanjm/typer/MainActivity;->w:Landroid/app/Dialog;

    const v0, 0x7f0b0024

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$2;->b:Lcom/stefanjm/typer/MainActivity;

    iget-object p1, p1, Lcom/stefanjm/typer/MainActivity;->w:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$2;->b:Lcom/stefanjm/typer/MainActivity;

    iget-object p1, p1, Lcom/stefanjm/typer/MainActivity;->w:Landroid/app/Dialog;

    const v0, 0x7f080109

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iget-object v0, p0, Lcom/stefanjm/typer/MainActivity$2;->b:Lcom/stefanjm/typer/MainActivity;

    iget-object v0, v0, Lcom/stefanjm/typer/MainActivity;->w:Landroid/app/Dialog;

    const v1, 0x7f08009b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/stefanjm/typer/MainActivity$2$1;

    invoke-direct {v1, p0}, Lcom/stefanjm/typer/MainActivity$2$1;-><init>(Lcom/stefanjm/typer/MainActivity$2;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/stefanjm/typer/MainActivity$2$2;

    invoke-direct {p1, p0}, Lcom/stefanjm/typer/MainActivity$2$2;-><init>(Lcom/stefanjm/typer/MainActivity$2;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    new-instance p1, Landroid/support/v7/app/b$a;

    iget-object v0, p0, Lcom/stefanjm/typer/MainActivity$2;->b:Lcom/stefanjm/typer/MainActivity;

    invoke-direct {p1, v0}, Landroid/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    const-string v0, "Google Play Games Connection Required..."

    invoke-virtual {p1, v0}, Landroid/support/v7/app/b$a;->a(Ljava/lang/CharSequence;)Landroid/support/v7/app/b$a;

    move-result-object p1

    const-string v0, "We are not connected to Google Play Games, should we do that now? (Required for Leaderboards)"

    invoke-virtual {p1, v0}, Landroid/support/v7/app/b$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/b$a;

    move-result-object p1

    const-string v0, "Yes"

    new-instance v1, Lcom/stefanjm/typer/MainActivity$2$4;

    invoke-direct {v1, p0}, Lcom/stefanjm/typer/MainActivity$2$4;-><init>(Lcom/stefanjm/typer/MainActivity$2;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/b$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/b$a;

    move-result-object p1

    const-string v0, "No"

    new-instance v1, Lcom/stefanjm/typer/MainActivity$2$3;

    invoke-direct {v1, p0}, Lcom/stefanjm/typer/MainActivity$2$3;-><init>(Lcom/stefanjm/typer/MainActivity$2;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/b$a;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/b$a;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/b$a;->c()Landroid/support/v7/app/b;

    return-void
.end method
