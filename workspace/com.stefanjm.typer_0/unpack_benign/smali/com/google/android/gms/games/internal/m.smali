.class public final Lcom/google/android/gms/games/internal/m;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/android/gms/common/internal/r;

.field private static final b:Lcom/google/android/gms/common/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/a/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/internal/r;

    const-string v1, "Games"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/games/internal/m;->a:Lcom/google/android/gms/common/internal/r;

    const-string v0, "games.play_games_dogfood"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/a;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/a;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/games/internal/m;->b:Lcom/google/android/gms/common/a/a;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/games/internal/m;->a:Lcom/google/android/gms/common/internal/r;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/common/internal/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/games/internal/m;->a:Lcom/google/android/gms/common/internal/r;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/common/internal/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/games/internal/m;->a:Lcom/google/android/gms/common/internal/r;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/common/internal/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
