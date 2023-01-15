.class public final Lcom/google/android/gms/games/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a$d$b;
.implements Lcom/google/android/gms/common/api/a$d$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/b$a$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:I

.field public final d:Z

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;


# direct methods
.method private constructor <init>(ZZIZILjava/lang/String;Ljava/util/ArrayList;ZZZLcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZIZI",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;ZZZ",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/games/b$a;->a:Z

    iput-boolean p2, p0, Lcom/google/android/gms/games/b$a;->b:Z

    iput p3, p0, Lcom/google/android/gms/games/b$a;->c:I

    iput-boolean p4, p0, Lcom/google/android/gms/games/b$a;->d:Z

    iput p5, p0, Lcom/google/android/gms/games/b$a;->e:I

    iput-object p6, p0, Lcom/google/android/gms/games/b$a;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/games/b$a;->g:Ljava/util/ArrayList;

    iput-boolean p8, p0, Lcom/google/android/gms/games/b$a;->h:Z

    iput-boolean p9, p0, Lcom/google/android/gms/games/b$a;->i:Z

    iput-boolean p10, p0, Lcom/google/android/gms/games/b$a;->j:Z

    iput-object p11, p0, Lcom/google/android/gms/games/b$a;->k:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method

.method synthetic constructor <init>(ZZIZILjava/lang/String;Ljava/util/ArrayList;ZZZLcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/games/o;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lcom/google/android/gms/games/b$a;-><init>(ZZIZILjava/lang/String;Ljava/util/ArrayList;ZZZLcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/b$a;->k:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object v0
.end method

.method public final b()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.google.android.gms.games.key.isHeadless"

    iget-boolean v2, p0, Lcom/google/android/gms/games/b$a;->a:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.games.key.showConnectingPopup"

    iget-boolean v2, p0, Lcom/google/android/gms/games/b$a;->b:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.games.key.connectingPopupGravity"

    iget v2, p0, Lcom/google/android/gms/games/b$a;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.google.android.gms.games.key.retryingSignIn"

    iget-boolean v2, p0, Lcom/google/android/gms/games/b$a;->d:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.games.key.sdkVariant"

    iget v2, p0, Lcom/google/android/gms/games/b$a;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.google.android.gms.games.key.forceResolveAccountKey"

    iget-object v2, p0, Lcom/google/android/gms/games/b$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.games.key.proxyApis"

    iget-object v2, p0, Lcom/google/android/gms/games/b$a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "com.google.android.gms.games.key.requireGooglePlus"

    iget-boolean v2, p0, Lcom/google/android/gms/games/b$a;->h:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.games.key.unauthenticated"

    iget-boolean v2, p0, Lcom/google/android/gms/games/b$a;->i:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.games.key.skipWelcomePopup"

    iget-boolean v2, p0, Lcom/google/android/gms/games/b$a;->j:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/games/b$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/games/b$a;

    iget-boolean v1, p0, Lcom/google/android/gms/games/b$a;->a:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/b$a;->a:Z

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lcom/google/android/gms/games/b$a;->b:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/b$a;->b:Z

    if-ne v1, v3, :cond_4

    iget v1, p0, Lcom/google/android/gms/games/b$a;->c:I

    iget v3, p1, Lcom/google/android/gms/games/b$a;->c:I

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lcom/google/android/gms/games/b$a;->d:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/b$a;->d:Z

    if-ne v1, v3, :cond_4

    iget v1, p0, Lcom/google/android/gms/games/b$a;->e:I

    iget v3, p1, Lcom/google/android/gms/games/b$a;->e:I

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/games/b$a;->f:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/games/b$a;->f:Ljava/lang/String;

    if-nez v1, :cond_4

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/games/b$a;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/games/b$a;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/games/b$a;->g:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/google/android/gms/games/b$a;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/google/android/gms/games/b$a;->h:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/b$a;->h:Z

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lcom/google/android/gms/games/b$a;->i:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/b$a;->i:Z

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lcom/google/android/gms/games/b$a;->j:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/b$a;->j:Z

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/games/b$a;->k:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez v1, :cond_3

    iget-object p1, p1, Lcom/google/android/gms/games/b$a;->k:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez p1, :cond_4

    return v0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/games/b$a;->k:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iget-object p1, p1, Lcom/google/android/gms/games/b$a;->k:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/games/b$a;->a:Z

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/games/b$a;->b:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/games/b$a;->c:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/games/b$a;->d:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/games/b$a;->e:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/games/b$a;->f:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/b$a;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/games/b$a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/games/b$a;->h:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/games/b$a;->i:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/games/b$a;->j:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/games/b$a;->k:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/games/b$a;->k:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    return v1
.end method
