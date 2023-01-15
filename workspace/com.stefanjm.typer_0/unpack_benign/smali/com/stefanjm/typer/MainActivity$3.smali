.class Lcom/stefanjm/typer/MainActivity$3;
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
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/stefanjm/typer/MainActivity;


# direct methods
.method constructor <init>(Lcom/stefanjm/typer/MainActivity;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    iput-object p2, p0, Lcom/stefanjm/typer/MainActivity$3;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    const v2, 0x1030073

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p1, Lcom/stefanjm/typer/MainActivity;->x:Landroid/app/Dialog;

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    iget-object p1, p1, Lcom/stefanjm/typer/MainActivity;->x:Landroid/app/Dialog;

    new-instance v0, Lcom/stefanjm/typer/MainActivity$3$1;

    invoke-direct {v0, p0}, Lcom/stefanjm/typer/MainActivity$3$1;-><init>(Lcom/stefanjm/typer/MainActivity$3;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    iget-object p1, p1, Lcom/stefanjm/typer/MainActivity;->x:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    iget-object p1, p1, Lcom/stefanjm/typer/MainActivity;->x:Landroid/app/Dialog;

    const v1, 0x7f0b001b

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    iget-object p1, p1, Lcom/stefanjm/typer/MainActivity;->x:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    iget-object p1, p1, Lcom/stefanjm/typer/MainActivity;->x:Landroid/app/Dialog;

    const v1, 0x7f080101

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    iget-object v1, v1, Lcom/stefanjm/typer/MainActivity;->x:Landroid/app/Dialog;

    const v2, 0x7f0800ae

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    iget-object v2, v2, Lcom/stefanjm/typer/MainActivity;->x:Landroid/app/Dialog;

    const v3, 0x7f0800ad

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/stefanjm/typer/MainActivity$3$2;

    invoke-direct {v3, p0}, Lcom/stefanjm/typer/MainActivity$3$2;-><init>(Lcom/stefanjm/typer/MainActivity$3;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/stefanjm/typer/MainActivity$3$3;

    invoke-direct {v1, p0}, Lcom/stefanjm/typer/MainActivity$3$3;-><init>(Lcom/stefanjm/typer/MainActivity$3;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    iget-object v1, v1, Lcom/stefanjm/typer/MainActivity;->x:Landroid/app/Dialog;

    const v2, 0x7f0800d2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    invoke-static {v2}, Lcom/stefanjm/typer/MainActivity;->a(Lcom/stefanjm/typer/MainActivity;)Lcom/google/android/gms/common/api/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/f;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Sign Out of Google Play Games"

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    const-string v2, "Sign In to Google Play Games"

    goto :goto_0

    :goto_1
    new-instance v2, Lcom/stefanjm/typer/MainActivity$3$4;

    invoke-direct {v2, p0, v1, p1}, Lcom/stefanjm/typer/MainActivity$3$4;-><init>(Lcom/stefanjm/typer/MainActivity$3;Landroid/widget/Button;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    iget-boolean v2, v2, Lcom/stefanjm/typer/MainActivity;->s:Z

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v0, Lcom/stefanjm/typer/MainActivity$3$5;

    invoke-direct {v0, p0, v1}, Lcom/stefanjm/typer/MainActivity$3$5;-><init>(Lcom/stefanjm/typer/MainActivity$3;Landroid/widget/Button;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    iget-object v0, p0, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    iget-object v0, v0, Lcom/stefanjm/typer/MainActivity;->t:Landroid/content/SharedPreferences;

    const-string v1, "noMistakesScore"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/stefanjm/typer/MainActivity;->a(Lcom/stefanjm/typer/MainActivity;I)I

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    iget-object v0, p0, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    iget-object v0, v0, Lcom/stefanjm/typer/MainActivity;->t:Landroid/content/SharedPreferences;

    const-string v1, "wordsPerMinuteScore"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/stefanjm/typer/MainActivity;->b(Lcom/stefanjm/typer/MainActivity;I)I

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    iget-object p1, p1, Lcom/stefanjm/typer/MainActivity;->x:Landroid/app/Dialog;

    const v0, 0x7f08009c

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    iget-object v0, v0, Lcom/stefanjm/typer/MainActivity;->x:Landroid/app/Dialog;

    const v1, 0x7f08010a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Mistakes top score: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    invoke-static {v2}, Lcom/stefanjm/typer/MainActivity;->b(Lcom/stefanjm/typer/MainActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Words Per Minute top score: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    invoke-static {v1}, Lcom/stefanjm/typer/MainActivity;->c(Lcom/stefanjm/typer/MainActivity;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
