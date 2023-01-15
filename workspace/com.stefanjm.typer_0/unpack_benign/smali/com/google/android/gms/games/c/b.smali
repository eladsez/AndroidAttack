.class public final Lcom/google/android/gms/games/c/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/c/b$a;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/games/c/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "leaderboardId"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "playerId"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "timeSpan"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "hasResult"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "rawScore"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "formattedScore"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "newBest"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "scoreTag"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/games/c/b;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/c/b;->d:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/c/b;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->d()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/ad;->b(Z)V

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/data/DataHolder;->a(I)I

    move-result v2

    if-nez v1, :cond_1

    const-string v3, "leaderboardId"

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/games/c/b;->b:Ljava/lang/String;

    const-string v3, "playerId"

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/games/c/b;->c:Ljava/lang/String;

    :cond_1
    const-string v3, "hasResult"

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->d(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/google/android/gms/games/c/b$a;

    const-string v4, "rawScore"

    invoke-virtual {p1, v4, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->a(Ljava/lang/String;II)J

    move-result-wide v5

    const-string v4, "formattedScore"

    invoke-virtual {p1, v4, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    const-string v4, "scoreTag"

    invoke-virtual {p1, v4, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v8

    const-string v4, "newBest"

    invoke-virtual {p1, v4, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->d(Ljava/lang/String;II)Z

    move-result v9

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/games/c/b$a;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "timeSpan"

    invoke-virtual {p1, v4, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->b(Ljava/lang/String;II)I

    move-result v2

    iget-object v4, p0, Lcom/google/android/gms/games/c/b;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lcom/google/android/gms/common/internal/ac;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ac$a;

    move-result-object v0

    const-string v1, "PlayerId"

    iget-object v2, p0, Lcom/google/android/gms/games/c/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ac$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ac$a;

    move-result-object v0

    const-string v1, "StatusCode"

    iget v2, p0, Lcom/google/android/gms/games/c/b;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ac$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ac$a;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/games/c/b;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/games/c/b$a;

    const-string v3, "TimesSpan"

    invoke-static {v1}, Lcom/google/android/gms/internal/d/t;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/common/internal/ac$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ac$a;

    const-string v3, "Result"

    if-nez v2, :cond_0

    const-string v2, "null"

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/games/c/b$a;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/common/internal/ac$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ac$a;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ac$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
