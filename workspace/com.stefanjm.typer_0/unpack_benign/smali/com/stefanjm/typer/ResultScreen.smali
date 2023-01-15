.class public Lcom/stefanjm/typer/ResultScreen;
.super Landroid/support/v7/app/c;

# interfaces
.implements Lcom/google/android/gms/common/api/f$b;
.implements Lcom/google/android/gms/common/api/f$c;


# static fields
.field static n:I

.field static o:I

.field static p:I

.field static q:Ljava/lang/String;

.field static r:[Ljava/lang/String;


# instance fields
.field public s:Landroid/content/SharedPreferences;

.field private t:Lcom/google/android/gms/common/api/f;

.field private u:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private v:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const-string p1, "GoogleAPIConn"

    const-string v0, "Connection suspended"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/stefanjm/typer/ResultScreen;->m()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    const-string p1, "GoogleAPIConn"

    const-string v0, "Connection successful"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/stefanjm/typer/ResultScreen;->n:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/google/android/gms/games/b;->i:Lcom/google/android/gms/games/c/a;

    iget-object v0, p0, Lcom/stefanjm/typer/ResultScreen;->t:Lcom/google/android/gms/common/api/f;

    invoke-virtual {p0}, Lcom/stefanjm/typer/ResultScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0001

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/stefanjm/typer/ResultScreen;->o:I

    int-to-long v2, v2

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/games/c/a;->a(Lcom/google/android/gms/common/api/f;Ljava/lang/String;J)V

    const-string p1, "Leaderboard"

    const-string v0, "Score posted to leaderboard"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget p1, Lcom/stefanjm/typer/ResultScreen;->n:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/google/android/gms/games/b;->i:Lcom/google/android/gms/games/c/a;

    iget-object v0, p0, Lcom/stefanjm/typer/ResultScreen;->t:Lcom/google/android/gms/common/api/f;

    invoke-virtual {p0}, Lcom/stefanjm/typer/ResultScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0f0000

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/google/android/gms/common/b;)V
    .locals 2

    const-string v0, "GoogleAPIConn"

    invoke-virtual {p1}, Lcom/google/android/gms/common/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/google/android/gms/common/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    :try_start_0
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/common/b;->a(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {p0}, Lcom/stefanjm/typer/ResultScreen;->m()V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    iget-boolean v0, p0, Lcom/stefanjm/typer/ResultScreen;->v:Z

    if-eqz v0, :cond_1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/stefanjm/typer/ResultScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/stefanjm/typer/ResultScreen;->t:Lcom/google/android/gms/common/api/f;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/f;->e()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/support/v7/app/c;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001f

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/ResultScreen;->setContentView(I)V

    const p1, 0x7f0800f6

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/ResultScreen;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xff6635

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/ResultScreen;->a(Landroid/support/v7/widget/Toolbar;)V

    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    iput-object p1, p0, Lcom/stefanjm/typer/ResultScreen;->u:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string p1, "saved_vars"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/stefanjm/typer/ResultScreen;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/stefanjm/typer/ResultScreen;->s:Landroid/content/SharedPreferences;

    iget-object p1, p0, Lcom/stefanjm/typer/ResultScreen;->s:Landroid/content/SharedPreferences;

    const-string v1, "allowGooglePLayConnection"

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/stefanjm/typer/ResultScreen;->v:Z

    const-string p1, "GoogleApiConn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Are we allowed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/stefanjm/typer/ResultScreen;->v:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/google/android/gms/common/api/f$a;

    invoke-direct {p1, p0}, Lcom/google/android/gms/common/api/f$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/f$a;->a(Lcom/google/android/gms/common/api/f$b;)Lcom/google/android/gms/common/api/f$a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/f$a;->a(Lcom/google/android/gms/common/api/f$c;)Lcom/google/android/gms/common/api/f$a;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/games/b;->d:Lcom/google/android/gms/common/api/a;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/f$a;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/f$a;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/games/b;->b:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/f$a;->a(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/f$a;->b()Lcom/google/android/gms/common/api/f;

    move-result-object p1

    iput-object p1, p0, Lcom/stefanjm/typer/ResultScreen;->t:Lcom/google/android/gms/common/api/f;

    iget-object p1, p0, Lcom/stefanjm/typer/ResultScreen;->t:Lcom/google/android/gms/common/api/f;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/f;->j()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/stefanjm/typer/ResultScreen;->m()V

    :cond_0
    const p1, 0x7f08001c

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/ResultScreen;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/android/gms/ads/c$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/c$a;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/c$a;->a()Lcom/google/android/gms/ads/c;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/AdView;->a(Lcom/google/android/gms/ads/c;)V

    invoke-virtual {p0}, Lcom/stefanjm/typer/ResultScreen;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "typeofgame"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/stefanjm/typer/ResultScreen;->n:I

    const-string v1, "score"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/stefanjm/typer/ResultScreen;->o:I

    const-string v1, "mistakes"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/stefanjm/typer/ResultScreen;->p:I

    const-string v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/stefanjm/typer/ResultScreen;->q:Ljava/lang/String;

    const-string v1, "gameKeyWords"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    sput-object p1, Lcom/stefanjm/typer/ResultScreen;->r:[Ljava/lang/String;

    :cond_1
    const p1, 0x7f0800b2

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/ResultScreen;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v1, Lcom/stefanjm/typer/ResultScreen$1;

    invoke-direct {v1, p0}, Lcom/stefanjm/typer/ResultScreen$1;-><init>(Lcom/stefanjm/typer/ResultScreen;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0800b3

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/ResultScreen;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v1, Lcom/stefanjm/typer/ResultScreen$2;

    invoke-direct {v1, p0}, Lcom/stefanjm/typer/ResultScreen$2;-><init>(Lcom/stefanjm/typer/ResultScreen;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0800af

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/ResultScreen;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f0800b0

    invoke-virtual {p0, v1}, Lcom/stefanjm/typer/ResultScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0800b1

    invoke-virtual {p0, v3}, Lcom/stefanjm/typer/ResultScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/stefanjm/typer/ResultScreen;->n:I

    const/16 v5, 0x8

    if-nez v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Score: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/stefanjm/typer/ResultScreen;->o:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Mistakes: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/stefanjm/typer/ResultScreen;->p:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_2
    sget v4, Lcom/stefanjm/typer/ResultScreen;->n:I

    if-ne v4, v2, :cond_6

    sget v4, Lcom/stefanjm/typer/ResultScreen;->p:I

    const/16 v6, 0x63

    const/high16 v7, 0x42480000    # 50.0f

    if-le v4, v6, :cond_3

    invoke-virtual {p1, v2, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mistakes: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/stefanjm/typer/ResultScreen;->p:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    sget p1, Lcom/stefanjm/typer/ResultScreen;->o:I

    if-ne p1, v2, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/stefanjm/typer/ResultScreen;->o:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " word per minute"

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/stefanjm/typer/ResultScreen;->o:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " words per minute"

    goto :goto_0

    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    sget p1, Lcom/stefanjm/typer/ResultScreen;->o:I

    iget-object v1, p0, Lcom/stefanjm/typer/ResultScreen;->s:Landroid/content/SharedPreferences;

    const-string v2, "wordsPerMinuteScore"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-gt p1, v1, :cond_5

    iget-object p1, p0, Lcom/stefanjm/typer/ResultScreen;->s:Landroid/content/SharedPreferences;

    const-string v1, "wordsPerMinuteScore"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_9

    :cond_5
    invoke-virtual {p0}, Lcom/stefanjm/typer/ResultScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Congratulations! Your score has been update"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/stefanjm/typer/ResultScreen;->s:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "wordsPerMinuteScore"

    :goto_2
    sget v1, Lcom/stefanjm/typer/ResultScreen;->o:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_5

    :cond_6
    sget v4, Lcom/stefanjm/typer/ResultScreen;->n:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_9

    const/high16 v4, 0x423c0000    # 47.0f

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v4, Lcom/stefanjm/typer/ResultScreen;->o:I

    if-ne v4, v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/stefanjm/typer/ResultScreen;->o:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " word in a row"

    :goto_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/stefanjm/typer/ResultScreen;->o:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " words in a row"

    goto :goto_3

    :goto_4
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    sget p1, Lcom/stefanjm/typer/ResultScreen;->o:I

    iget-object v1, p0, Lcom/stefanjm/typer/ResultScreen;->s:Landroid/content/SharedPreferences;

    const-string v2, "noMistakesScore"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-gt p1, v1, :cond_8

    iget-object p1, p0, Lcom/stefanjm/typer/ResultScreen;->s:Landroid/content/SharedPreferences;

    const-string v1, "noMistakesScore"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/stefanjm/typer/ResultScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Congratulations! Your score has been update"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/stefanjm/typer/ResultScreen;->s:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "noMistakesScore"

    goto :goto_2

    :cond_9
    :goto_5
    sget-object p1, Lcom/stefanjm/typer/ResultScreen;->q:Ljava/lang/String;

    if-eqz p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Time: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/stefanjm/typer/ResultScreen;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_a
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
