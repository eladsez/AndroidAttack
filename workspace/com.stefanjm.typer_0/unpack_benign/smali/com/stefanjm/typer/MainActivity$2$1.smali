.class Lcom/stefanjm/typer/MainActivity$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stefanjm/typer/MainActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/stefanjm/typer/MainActivity$2;


# direct methods
.method constructor <init>(Lcom/stefanjm/typer/MainActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/stefanjm/typer/MainActivity$2$1;->a:Lcom/stefanjm/typer/MainActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$2$1;->a:Lcom/stefanjm/typer/MainActivity$2;

    iget-object p1, p1, Lcom/stefanjm/typer/MainActivity$2;->b:Lcom/stefanjm/typer/MainActivity;

    sget-object v0, Lcom/google/android/gms/games/b;->i:Lcom/google/android/gms/games/c/a;

    iget-object v1, p0, Lcom/stefanjm/typer/MainActivity$2$1;->a:Lcom/stefanjm/typer/MainActivity$2;

    iget-object v1, v1, Lcom/stefanjm/typer/MainActivity$2;->b:Lcom/stefanjm/typer/MainActivity;

    invoke-static {v1}, Lcom/stefanjm/typer/MainActivity;->a(Lcom/stefanjm/typer/MainActivity;)Lcom/google/android/gms/common/api/f;

    move-result-object v1

    iget-object v2, p0, Lcom/stefanjm/typer/MainActivity$2$1;->a:Lcom/stefanjm/typer/MainActivity$2;

    iget-object v2, v2, Lcom/stefanjm/typer/MainActivity$2;->b:Lcom/stefanjm/typer/MainActivity;

    invoke-virtual {v2}, Lcom/stefanjm/typer/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/c/a;->a(Lcom/google/android/gms/common/api/f;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/stefanjm/typer/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
