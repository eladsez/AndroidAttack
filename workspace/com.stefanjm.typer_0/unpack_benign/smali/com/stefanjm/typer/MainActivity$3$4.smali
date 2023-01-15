.class Lcom/stefanjm/typer/MainActivity$3$4;
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
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Lcom/stefanjm/typer/MainActivity$3;


# direct methods
.method constructor <init>(Lcom/stefanjm/typer/MainActivity$3;Landroid/widget/Button;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/stefanjm/typer/MainActivity$3$4;->c:Lcom/stefanjm/typer/MainActivity$3;

    iput-object p2, p0, Lcom/stefanjm/typer/MainActivity$3$4;->a:Landroid/widget/Button;

    iput-object p3, p0, Lcom/stefanjm/typer/MainActivity$3$4;->b:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$3$4;->c:Lcom/stefanjm/typer/MainActivity$3;

    iget-object p1, p1, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    invoke-static {p1}, Lcom/stefanjm/typer/MainActivity;->a(Lcom/stefanjm/typer/MainActivity;)Lcom/google/android/gms/common/api/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/f;->j()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$3$4;->c:Lcom/stefanjm/typer/MainActivity$3;

    iget-object p1, p1, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    iput-boolean v0, p1, Lcom/stefanjm/typer/MainActivity;->n:Z

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$3$4;->c:Lcom/stefanjm/typer/MainActivity$3;

    iget-object p1, p1, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    invoke-static {p1}, Lcom/stefanjm/typer/MainActivity;->a(Lcom/stefanjm/typer/MainActivity;)Lcom/google/android/gms/common/api/f;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$3$4;->c:Lcom/stefanjm/typer/MainActivity$3;

    iget-object p1, p1, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    invoke-static {p1}, Lcom/stefanjm/typer/MainActivity;->a(Lcom/stefanjm/typer/MainActivity;)Lcom/google/android/gms/common/api/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/f;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$3$4;->c:Lcom/stefanjm/typer/MainActivity$3;

    iget-object p1, p1, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    invoke-static {p1}, Lcom/stefanjm/typer/MainActivity;->a(Lcom/stefanjm/typer/MainActivity;)Lcom/google/android/gms/common/api/f;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/games/b;->b(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/g;

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$3$4;->c:Lcom/stefanjm/typer/MainActivity$3;

    iget-object p1, p1, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    invoke-static {p1}, Lcom/stefanjm/typer/MainActivity;->a(Lcom/stefanjm/typer/MainActivity;)Lcom/google/android/gms/common/api/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/f;->g()V

    :cond_0
    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$3$4;->c:Lcom/stefanjm/typer/MainActivity$3;

    iget-object p1, p1, Lcom/stefanjm/typer/MainActivity$3;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/stefanjm/typer/MainActivity$3$4;->c:Lcom/stefanjm/typer/MainActivity$3;

    iget-object v1, v1, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    iget-object v1, v1, Lcom/stefanjm/typer/MainActivity;->q:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$3$4;->c:Lcom/stefanjm/typer/MainActivity$3;

    iget-object p1, p1, Lcom/stefanjm/typer/MainActivity$3;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$3$4;->a:Landroid/widget/Button;

    const-string v0, "Sign In to Google Play Games"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "GoogleAPIConn"

    const-string v0, "Signin out of Google Play Games"

    :goto_0
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$3$4;->c:Lcom/stefanjm/typer/MainActivity$3;

    iget-object p1, p1, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    invoke-static {p1}, Lcom/stefanjm/typer/MainActivity;->a(Lcom/stefanjm/typer/MainActivity;)Lcom/google/android/gms/common/api/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/f;->j()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$3$4;->b:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$3$4;->c:Lcom/stefanjm/typer/MainActivity$3;

    iget-object p1, p1, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    iput-boolean v0, p1, Lcom/stefanjm/typer/MainActivity;->s:Z

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$3$4;->b:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$3$4;->c:Lcom/stefanjm/typer/MainActivity$3;

    iget-object p1, p1, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    invoke-virtual {p1}, Lcom/stefanjm/typer/MainActivity;->m()V

    :cond_2
    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$3$4;->c:Lcom/stefanjm/typer/MainActivity$3;

    iget-object p1, p1, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    invoke-virtual {p1}, Lcom/stefanjm/typer/MainActivity;->n()V

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$3$4;->c:Lcom/stefanjm/typer/MainActivity$3;

    iget-object p1, p1, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    iput-boolean v0, p1, Lcom/stefanjm/typer/MainActivity;->p:Z

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$3$4;->a:Landroid/widget/Button;

    const-string v0, "Sign Out of Google Play Games"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "GoogleAPIConn"

    const-string v0, "Signing user back in again"

    goto :goto_0

    :cond_3
    return-void
.end method
