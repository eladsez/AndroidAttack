.class public final Lcom/google/android/gms/internal/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/c/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/f;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/d/d;->a(Lcom/google/android/gms/common/api/f;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/common/api/f;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/d/d;->a(Lcom/google/android/gms/common/api/f;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/common/api/f;Ljava/lang/String;II)Landroid/content/Intent;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/games/b;->a(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/games/internal/j;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/google/android/gms/games/internal/j;->a(Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/common/api/f;Ljava/lang/String;J)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/d/d;->a(Lcom/google/android/gms/common/api/f;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/f;Ljava/lang/String;JLjava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/b;->a(Lcom/google/android/gms/common/api/f;Z)Lcom/google/android/gms/games/internal/j;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/games/internal/j;->a(Lcom/google/android/gms/common/api/internal/c$b;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "LeaderboardsImpl"

    const-string p2, "service died"

    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
