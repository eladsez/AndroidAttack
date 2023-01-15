.class final Lcom/google/android/gms/internal/aky$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/aky$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/aky;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field static final a:Lcom/google/android/gms/internal/aky$c;

.field private static b:Lcom/google/android/gms/internal/akz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/aky$c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aky$c;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/aky$c;->a:Lcom/google/android/gms/internal/aky$c;

    new-instance v0, Lcom/google/android/gms/internal/akz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/akz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/aky$c;->b:Lcom/google/android/gms/internal/akz;

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

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    return p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/aky$c;->b:Lcom/google/android/gms/internal/akz;

    throw p1
.end method

.method public final a(ZLcom/google/android/gms/internal/aka;ZLcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/aka;
    .locals 0

    if-ne p1, p3, :cond_0

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/aka;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/aky$c;->b:Lcom/google/android/gms/internal/akz;

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ald;Lcom/google/android/gms/internal/ald;)Lcom/google/android/gms/internal/ald;
    .locals 0
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

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/aky$c;->b:Lcom/google/android/gms/internal/akz;

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/alx;Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/alx;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/alx;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/aky;

    if-eq v1, p2, :cond_1

    sget v2, Lcom/google/android/gms/internal/aky$g;->i:I

    invoke-virtual {v1, v2, v0, v0}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aky;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Lcom/google/android/gms/internal/aky;

    sget v0, Lcom/google/android/gms/internal/aky$g;->b:I

    invoke-virtual {v1, v0, p0, p2}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/google/android/gms/internal/aky;->b:Lcom/google/android/gms/internal/anb;

    iget-object p2, p2, Lcom/google/android/gms/internal/aky;->b:Lcom/google/android/gms/internal/anb;

    invoke-interface {p0, v0, p2}, Lcom/google/android/gms/internal/aky$h;->a(Lcom/google/android/gms/internal/anb;Lcom/google/android/gms/internal/anb;)Lcom/google/android/gms/internal/anb;

    move-result-object p2

    iput-object p2, v1, Lcom/google/android/gms/internal/aky;->b:Lcom/google/android/gms/internal/anb;

    :cond_1
    return-object p1

    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/aky$c;->b:Lcom/google/android/gms/internal/akz;

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/anb;Lcom/google/android/gms/internal/anb;)Lcom/google/android/gms/internal/anb;
    .locals 0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/anb;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/aky$c;->b:Lcom/google/android/gms/internal/akz;

    throw p1
.end method

.method public final a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-ne p1, p3, :cond_0

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/aky$c;->b:Lcom/google/android/gms/internal/akz;

    throw p1
.end method

.method public final a(ZZZZ)Z
    .locals 0

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    return p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/aky$c;->b:Lcom/google/android/gms/internal/akz;

    throw p1
.end method
