.class Lcom/google/android/gms/games/b$c;
.super Lcom/google/android/gms/common/api/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/a$a<",
        "Lcom/google/android/gms/games/internal/j;",
        "Lcom/google/android/gms/games/b$a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/b$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/g;Ljava/lang/Object;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;)Lcom/google/android/gms/common/api/a$f;
    .locals 7

    check-cast p4, Lcom/google/android/gms/games/b$a;

    if-nez p4, :cond_0

    new-instance p4, Lcom/google/android/gms/games/b$a$a;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Lcom/google/android/gms/games/b$a$a;-><init>(Lcom/google/android/gms/games/o;)V

    invoke-virtual {p4}, Lcom/google/android/gms/games/b$a$a;->a()Lcom/google/android/gms/games/b$a;

    move-result-object p4

    :cond_0
    move-object v4, p4

    new-instance p4, Lcom/google/android/gms/games/internal/j;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/games/internal/j;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/g;Lcom/google/android/gms/games/b$a;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;)V

    return-object p4
.end method
