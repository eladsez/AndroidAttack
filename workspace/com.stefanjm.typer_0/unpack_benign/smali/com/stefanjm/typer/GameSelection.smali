.class public Lcom/stefanjm/typer/GameSelection;
.super Landroid/support/v7/app/c;


# instance fields
.field n:I

.field o:Ljava/lang/String;

.field public p:Z

.field q:Lcom/stefanjm/typer/b;

.field private r:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private final s:I

.field private final t:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/c;-><init>()V

    const/16 v0, 0xfa0

    iput v0, p0, Lcom/stefanjm/typer/GameSelection;->n:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/stefanjm/typer/GameSelection;->s:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/stefanjm/typer/GameSelection;->t:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stefanjm/typer/GameSelection;->p:Z

    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/stefanjm/typer/GameSelection;->p:Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/app/c;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001c

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/GameSelection;->setContentView(I)V

    const p1, 0x7f0800f6

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/GameSelection;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xff6635

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/GameSelection;->a(Landroid/support/v7/widget/Toolbar;)V

    new-instance p1, Lcom/stefanjm/typer/b;

    invoke-direct {p1, p0}, Lcom/stefanjm/typer/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/stefanjm/typer/GameSelection;->q:Lcom/stefanjm/typer/b;

    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    iput-object p1, p0, Lcom/stefanjm/typer/GameSelection;->r:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const p1, 0x7f08001c

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/GameSelection;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/AdView;

    new-instance v0, Lcom/google/android/gms/ads/c$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/c$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/c$a;->a()Lcom/google/android/gms/ads/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/AdView;->a(Lcom/google/android/gms/ads/c;)V

    const-string p1, "saved_vars"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/stefanjm/typer/GameSelection;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "wordsFileLocation"

    const-string v1, "null"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stefanjm/typer/GameSelection;->o:Ljava/lang/String;

    iget-object p1, p0, Lcom/stefanjm/typer/GameSelection;->q:Lcom/stefanjm/typer/b;

    iget-object v0, p0, Lcom/stefanjm/typer/GameSelection;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/stefanjm/typer/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    const p1, 0x7f0800a8

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/GameSelection;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/stefanjm/typer/GameSelection$1;

    invoke-direct {v0, p0}, Lcom/stefanjm/typer/GameSelection$1;-><init>(Lcom/stefanjm/typer/GameSelection;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08010b

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/GameSelection;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/stefanjm/typer/GameSelection$2;

    invoke-direct {v0, p0}, Lcom/stefanjm/typer/GameSelection$2;-><init>(Lcom/stefanjm/typer/GameSelection;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08009d

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/GameSelection;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/stefanjm/typer/GameSelection$3;

    invoke-direct {v0, p0}, Lcom/stefanjm/typer/GameSelection$3;-><init>(Lcom/stefanjm/typer/GameSelection;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/app/c;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    aget p1, p3, v0

    if-nez p1, :cond_1

    new-array p1, p2, [Ljava/lang/String;

    const-string p2, "txt"

    aput-object p2, p1, v0

    new-instance p2, Lcom/github/angads25/filepicker/b/a;

    invoke-direct {p2}, Lcom/github/angads25/filepicker/b/a;-><init>()V

    iput v0, p2, Lcom/github/angads25/filepicker/b/a;->a:I

    iput v0, p2, Lcom/github/angads25/filepicker/b/a;->b:I

    new-instance p3, Ljava/io/File;

    const-string v1, "/mnt"

    invoke-direct {p3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p3, p2, Lcom/github/angads25/filepicker/b/a;->c:Ljava/io/File;

    new-instance p3, Ljava/io/File;

    const-string v1, "/mnt"

    invoke-direct {p3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p3, p2, Lcom/github/angads25/filepicker/b/a;->d:Ljava/io/File;

    new-instance p3, Ljava/io/File;

    const-string v1, "/mnt"

    invoke-direct {p3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p3, p2, Lcom/github/angads25/filepicker/b/a;->e:Ljava/io/File;

    iput-object p1, p2, Lcom/github/angads25/filepicker/b/a;->f:[Ljava/lang/String;

    new-instance p1, Lcom/github/angads25/filepicker/d/a;

    invoke-direct {p1, p0, p2}, Lcom/github/angads25/filepicker/d/a;-><init>(Landroid/content/Context;Lcom/github/angads25/filepicker/b/a;)V

    const-string p2, "Select a File"

    invoke-virtual {p1, p2}, Lcom/github/angads25/filepicker/d/a;->setTitle(Ljava/lang/CharSequence;)V

    new-instance p2, Lcom/stefanjm/typer/GameSelection$4;

    invoke-direct {p2, p0}, Lcom/stefanjm/typer/GameSelection$4;-><init>(Lcom/stefanjm/typer/GameSelection;)V

    invoke-virtual {p1, p2}, Lcom/github/angads25/filepicker/d/a;->a(Lcom/github/angads25/filepicker/a/a;)V

    invoke-virtual {p1, v0}, Lcom/github/angads25/filepicker/d/a;->setCancelable(Z)V

    invoke-virtual {p1}, Lcom/github/angads25/filepicker/d/a;->show()V

    const-string p1, "permission"

    const-string p2, "granted, opening choose file"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/stefanjm/typer/MainActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/GameSelection;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/stefanjm/typer/GameSelection;->finish()V

    return-void

    :cond_2
    array-length p1, p3

    if-lez p1, :cond_3

    aget p1, p3, v0

    if-nez p1, :cond_3

    new-instance p1, Lcom/stefanjm/typer/a;

    invoke-direct {p1, p0}, Lcom/stefanjm/typer/a;-><init>(Landroid/content/Context;)V

    new-array p2, v0, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/stefanjm/typer/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string p1, "permission"

    const-string p2, "granted, running download again"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/stefanjm/typer/MainActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/GameSelection;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/stefanjm/typer/GameSelection;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/app/c;->onResume()V

    iget-boolean v0, p0, Lcom/stefanjm/typer/GameSelection;->p:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stefanjm/typer/GameSelection;->p:Z

    invoke-virtual {p0}, Lcom/stefanjm/typer/GameSelection;->recreate()V

    :cond_0
    return-void
.end method
