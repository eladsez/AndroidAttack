.class Lnet/youmi/android/bt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lnet/youmi/android/bj;


# direct methods
.method constructor <init>(Lnet/youmi/android/bj;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/bt;->a:Lnet/youmi/android/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/bt;->a:Lnet/youmi/android/bj;

    iget-object v0, v0, Lnet/youmi/android/bj;->f:Lnet/youmi/android/ao;

    invoke-virtual {v0}, Lnet/youmi/android/ao;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/bt;->a:Lnet/youmi/android/bj;

    iget-object v0, v0, Lnet/youmi/android/bj;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/bt;->a:Lnet/youmi/android/bj;

    iget-object v0, v0, Lnet/youmi/android/bj;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lnet/youmi/android/bt;->a:Lnet/youmi/android/bj;

    iget-object v1, v1, Lnet/youmi/android/bj;->f:Lnet/youmi/android/ao;

    invoke-virtual {v1}, Lnet/youmi/android/ao;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
