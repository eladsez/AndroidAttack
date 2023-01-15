.class final enum Lcom/google/android/gms/internal/aiz;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/aiz;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/aiz;

.field public static final enum b:Lcom/google/android/gms/internal/aiz;

.field private static final synthetic h:[Lcom/google/android/gms/internal/aiz;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v8, Lcom/google/android/gms/internal/aiz;

    const-string v1, "NETWORK"

    const-string v3, "network"

    const/4 v2, 0x0

    const/16 v4, 0xa

    const/16 v5, 0x2bc

    const/16 v6, 0xa

    const/16 v7, 0x46

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/aiz;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v8, Lcom/google/android/gms/internal/aiz;->a:Lcom/google/android/gms/internal/aiz;

    new-instance v0, Lcom/google/android/gms/internal/aiz;

    const-string v10, "TRACE"

    const-string v12, "trace"

    const/4 v11, 0x1

    const/16 v13, 0xa

    const/16 v14, 0x12c

    const/16 v15, 0xa

    const/16 v16, 0x1e

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/internal/aiz;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lcom/google/android/gms/internal/aiz;->b:Lcom/google/android/gms/internal/aiz;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/aiz;

    sget-object v1, Lcom/google/android/gms/internal/aiz;->a:Lcom/google/android/gms/internal/aiz;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/aiz;->b:Lcom/google/android/gms/internal/aiz;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/aiz;->h:[Lcom/google/android/gms/internal/aiz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/aiz;->c:Ljava/lang/String;

    const/16 p1, 0xa

    iput p1, p0, Lcom/google/android/gms/internal/aiz;->d:I

    iput p5, p0, Lcom/google/android/gms/internal/aiz;->e:I

    iput p1, p0, Lcom/google/android/gms/internal/aiz;->f:I

    iput p7, p0, Lcom/google/android/gms/internal/aiz;->g:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/aiz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/aiz;->h:[Lcom/google/android/gms/internal/aiz;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/aiz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/aiz;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/aiz;->d:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/aiz;->e:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/aiz;->f:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/aiz;->g:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aiz;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_flimit_time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aiz;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_flimit_events"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aiz;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_blimit_time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aiz;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_blimit_events"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aiz;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
