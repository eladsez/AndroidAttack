.class public final Lcom/google/android/gms/internal/aky$f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/aky$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/aky;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/internal/aky$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/aky$f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aky$f;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/aky$f;->a:Lcom/google/android/gms/internal/aky$f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZIZI)I
    .locals 0

    if-eqz p3, :cond_0

    return p4

    :cond_0
    return p2
.end method

.method public final a(ZLcom/google/android/gms/internal/aka;ZLcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/aka;
    .locals 0

    if-eqz p3, :cond_0

    return-object p4

    :cond_0
    return-object p2
.end method

.method public final a(Lcom/google/android/gms/internal/ald;Lcom/google/android/gms/internal/ald;)Lcom/google/android/gms/internal/ald;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ald<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ald<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/ald<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/internal/ald;->size()I

    move-result v0

    invoke-interface {p2}, Lcom/google/android/gms/internal/ald;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ald;->a()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ald;->a(I)Lcom/google/android/gms/internal/ald;

    move-result-object p1

    :cond_0
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ald;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    return-object p1

    :cond_2
    return-object p2
.end method

.method public final a(Lcom/google/android/gms/internal/alx;Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/alx;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/alx;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/alx;->m()Lcom/google/android/gms/internal/aly;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/aly;->a(Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/aly;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/aly;->e()Lcom/google/android/gms/internal/alx;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    return-object p2
.end method

.method public final a(Lcom/google/android/gms/internal/anb;Lcom/google/android/gms/internal/anb;)Lcom/google/android/gms/internal/anb;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/anb;->a()Lcom/google/android/gms/internal/anb;

    move-result-object v0

    if-ne p2, v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/anb;->a(Lcom/google/android/gms/internal/anb;Lcom/google/android/gms/internal/anb;)Lcom/google/android/gms/internal/anb;

    move-result-object p1

    return-object p1
.end method

.method public final a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p3, :cond_0

    return-object p4

    :cond_0
    return-object p2
.end method

.method public final a(ZZZZ)Z
    .locals 0

    if-eqz p3, :cond_0

    return p4

    :cond_0
    return p2
.end method
