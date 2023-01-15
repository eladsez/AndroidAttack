.class Lcom/stefanjm/typer/MainActivity$3$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic b:Lcom/stefanjm/typer/MainActivity$3;


# direct methods
.method constructor <init>(Lcom/stefanjm/typer/MainActivity$3;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/stefanjm/typer/MainActivity$3$5;->b:Lcom/stefanjm/typer/MainActivity$3;

    iput-object p2, p0, Lcom/stefanjm/typer/MainActivity$3$5;->a:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/stefanjm/typer/MainActivity$3$5;->b:Lcom/stefanjm/typer/MainActivity$3;

    iget-object p2, p2, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/stefanjm/typer/MainActivity;->s:Z

    :try_start_0
    iget-object p2, p0, Lcom/stefanjm/typer/MainActivity$3$5;->b:Lcom/stefanjm/typer/MainActivity$3;

    iget-object p2, p2, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    invoke-static {p2}, Lcom/stefanjm/typer/MainActivity;->a(Lcom/stefanjm/typer/MainActivity;)Lcom/google/android/gms/common/api/f;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/games/b;->b(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p2, p0, Lcom/stefanjm/typer/MainActivity$3$5;->b:Lcom/stefanjm/typer/MainActivity$3;

    iget-object p2, p2, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    invoke-static {p2}, Lcom/stefanjm/typer/MainActivity;->a(Lcom/stefanjm/typer/MainActivity;)Lcom/google/android/gms/common/api/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/f;->g()V

    iget-object p2, p0, Lcom/stefanjm/typer/MainActivity$3$5;->a:Landroid/widget/Button;

    const-string v0, "Sign In to Google Play Games"

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/stefanjm/typer/MainActivity$3$5;->b:Lcom/stefanjm/typer/MainActivity$3;

    iget-object p2, p2, Lcom/stefanjm/typer/MainActivity$3;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/stefanjm/typer/MainActivity$3$5;->b:Lcom/stefanjm/typer/MainActivity$3;

    iget-object v0, v0, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    iget-object v0, v0, Lcom/stefanjm/typer/MainActivity;->q:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/stefanjm/typer/MainActivity$3$5;->b:Lcom/stefanjm/typer/MainActivity$3;

    iget-object p2, p2, Lcom/stefanjm/typer/MainActivity$3;->a:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/stefanjm/typer/MainActivity$3$5;->b:Lcom/stefanjm/typer/MainActivity$3;

    iget-object p2, p2, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    iput-boolean p1, p2, Lcom/stefanjm/typer/MainActivity;->s:Z

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$3$5;->b:Lcom/stefanjm/typer/MainActivity$3;

    iget-object p1, p1, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    invoke-virtual {p1}, Lcom/stefanjm/typer/MainActivity;->m()V

    return-void
.end method
