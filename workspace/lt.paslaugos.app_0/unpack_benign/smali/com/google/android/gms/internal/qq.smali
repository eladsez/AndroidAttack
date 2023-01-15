.class public final Lcom/google/android/gms/internal/qq;
.super Lcom/google/android/gms/common/api/e;

# interfaces
.implements Lcom/google/android/gms/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/e<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/google/android/gms/a/c;"
    }
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/a/a;->a:Lcom/google/android/gms/common/api/a;

    new-instance v1, Lcom/google/android/gms/common/api/internal/am;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/am;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/google/android/gms/common/api/e;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/internal/af;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/a/c;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/qq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/qq;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/a/f;)Lcom/google/android/gms/common/api/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/a/f;",
            ")",
            "Lcom/google/android/gms/common/api/g<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/qt;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->c()Lcom/google/android/gms/common/api/f;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/qt;-><init>(Lcom/google/android/gms/a/f;Lcom/google/android/gms/common/api/f;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/internal/ar;)Lcom/google/android/gms/common/api/internal/ar;

    move-result-object p1

    return-object p1
.end method
