.class public Lcom/stefanjm/typer/MainActivity;
.super Landroid/support/v7/app/c;

# interfaces
.implements Lcom/google/android/gms/common/api/f$b;
.implements Lcom/google/android/gms/common/api/f$c;


# static fields
.field private static A:I = 0x3e8


# instance fields
.field private B:I

.field private C:I

.field n:Z

.field o:Z

.field p:Z

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field public s:Z

.field t:Landroid/content/SharedPreferences;

.field u:Ljava/lang/String;

.field v:Landroid/app/ProgressDialog;

.field w:Landroid/app/Dialog;

.field x:Landroid/app/Dialog;

.field private y:Lcom/google/android/gms/common/api/f;

.field private z:Lcom/google/firebase/analytics/FirebaseAnalytics;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/c;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stefanjm/typer/MainActivity;->n:Z

    iput-boolean v0, p0, Lcom/stefanjm/typer/MainActivity;->o:Z

    iput-boolean v0, p0, Lcom/stefanjm/typer/MainActivity;->p:Z

    const-string v0, "You are not currently signed in with Google (No Leaderboards)."

    iput-object v0, p0, Lcom/stefanjm/typer/MainActivity;->q:Ljava/lang/String;

    const-string v0, "You are signed in with Google."

    iput-object v0, p0, Lcom/stefanjm/typer/MainActivity;->r:Ljava/lang/String;

    const-string v0, "englishwords.txt"

    iput-object v0, p0, Lcom/stefanjm/typer/MainActivity;->u:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/stefanjm/typer/MainActivity;I)I
    .locals 0

    iput p1, p0, Lcom/stefanjm/typer/MainActivity;->B:I

    return p1
.end method

.method static synthetic a(Lcom/stefanjm/typer/MainActivity;)Lcom/google/android/gms/common/api/f;
    .locals 0

    iget-object p0, p0, Lcom/stefanjm/typer/MainActivity;->y:Lcom/google/android/gms/common/api/f;

    return-object p0
.end method

.method static synthetic b(Lcom/stefanjm/typer/MainActivity;)I
    .locals 0

    iget p0, p0, Lcom/stefanjm/typer/MainActivity;->B:I

    return p0
.end method

.method static synthetic b(Lcom/stefanjm/typer/MainActivity;I)I
    .locals 0

    iput p1, p0, Lcom/stefanjm/typer/MainActivity;->C:I

    return p1
.end method

.method static synthetic c(Lcom/stefanjm/typer/MainActivity;)I
    .locals 0

    iget p0, p0, Lcom/stefanjm/typer/MainActivity;->C:I

    return p0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const-string p1, "GoogleAPIConn"

    const-string v0, "Connection suspended"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f080073

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/stefanjm/typer/MainActivity;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    const-string p1, "GoogleAPIConn"

    const-string v0, "onConnectionSuspended(): attempting to connect"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/stefanjm/typer/MainActivity;->n()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    const-string p1, "GoogleAPIConn"

    const-string v0, "Connection successful"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f080073

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/stefanjm/typer/MainActivity;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/b;)V
    .locals 2

    const-string v0, "GoogleAPIConn"

    invoke-virtual {p1}, Lcom/google/android/gms/common/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f080073

    invoke-virtual {p0, v0}, Lcom/stefanjm/typer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/stefanjm/typer/MainActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget v0, Lcom/stefanjm/typer/MainActivity;->A:I

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/common/b;->a(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {p0}, Lcom/stefanjm/typer/MainActivity;->n()V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 3

    const-string v0, "saved_vars"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/stefanjm/typer/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "allowGooglePLayConnection"

    iget-boolean v2, p0, Lcom/stefanjm/typer/MainActivity;->s:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public n()V
    .locals 1

    iget-boolean v0, p0, Lcom/stefanjm/typer/MainActivity;->s:Z

    if-eqz v0, :cond_1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/stefanjm/typer/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/stefanjm/typer/MainActivity;->y:Lcom/google/android/gms/common/api/f;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/f;->e()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v0, 0x7f100008

    invoke-virtual {p0, v0}, Lcom/stefanjm/typer/MainActivity;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/support/v7/app/c;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "saved_vars"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/stefanjm/typer/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/stefanjm/typer/MainActivity;->t:Landroid/content/SharedPreferences;

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity;->t:Landroid/content/SharedPreferences;

    const-string v0, "allowGooglePLayConnection"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/stefanjm/typer/MainActivity;->s:Z

    const p1, 0x7f0b001e

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/MainActivity;->setContentView(I)V

    const p1, 0x7f0800f6

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0xff6635

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/MainActivity;->a(Landroid/support/v7/widget/Toolbar;)V

    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    iput-object p1, p0, Lcom/stefanjm/typer/MainActivity;->z:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {p0}, Lcom/stefanjm/typer/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "ca-app-pub-6602470679504666~5592708514"

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/common/api/f$a;

    invoke-direct {p1, p0}, Lcom/google/android/gms/common/api/f$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/f$a;->a(Lcom/google/android/gms/common/api/f$b;)Lcom/google/android/gms/common/api/f$a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/f$a;->a(Lcom/google/android/gms/common/api/f$c;)Lcom/google/android/gms/common/api/f$a;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/games/b;->d:Lcom/google/android/gms/common/api/a;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/f$a;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/f$a;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/games/b;->b:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/f$a;->a(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/f$a;->b()Lcom/google/android/gms/common/api/f;

    move-result-object p1

    iput-object p1, p0, Lcom/stefanjm/typer/MainActivity;->y:Lcom/google/android/gms/common/api/f;

    const p1, 0x7f080073

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/stefanjm/typer/MainActivity;->y:Lcom/google/android/gms/common/api/f;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/f;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stefanjm/typer/MainActivity;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/stefanjm/typer/MainActivity;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    const v0, 0x7f0800a7

    invoke-virtual {p0, v0}, Lcom/stefanjm/typer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f08006b

    invoke-virtual {p0, v1}, Lcom/stefanjm/typer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f080006

    invoke-virtual {p0, v2}, Lcom/stefanjm/typer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/stefanjm/typer/MainActivity$1;

    invoke-direct {v3, p0}, Lcom/stefanjm/typer/MainActivity$1;-><init>(Lcom/stefanjm/typer/MainActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/stefanjm/typer/MainActivity$2;

    invoke-direct {v0, p0, v2}, Lcom/stefanjm/typer/MainActivity$2;-><init>(Lcom/stefanjm/typer/MainActivity;Landroid/widget/Button;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/stefanjm/typer/MainActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/stefanjm/typer/MainActivity$3;-><init>(Lcom/stefanjm/typer/MainActivity;Landroid/widget/TextView;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/stefanjm/typer/MainActivity;->v:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stefanjm/typer/MainActivity;->v:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/stefanjm/typer/MainActivity;->w:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/stefanjm/typer/MainActivity;->w:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/stefanjm/typer/MainActivity;->x:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/stefanjm/typer/MainActivity;->x:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    invoke-super {p0}, Landroid/support/v7/app/c;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/app/c;->onStart()V

    iget-boolean v0, p0, Lcom/stefanjm/typer/MainActivity;->o:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/stefanjm/typer/MainActivity;->n:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/stefanjm/typer/MainActivity;->n()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/app/c;->onStop()V

    iget-object v0, p0, Lcom/stefanjm/typer/MainActivity;->y:Lcom/google/android/gms/common/api/f;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/f;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stefanjm/typer/MainActivity;->y:Lcom/google/android/gms/common/api/f;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/f;->g()V

    :cond_0
    return-void
.end method
