.class public Lcom/google/android/gms/a/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private final f:Lcom/google/android/gms/a/a$c;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private l:Z

.field private final m:Lcom/google/android/gms/internal/aot;

.field private n:Z

.field private synthetic o:Lcom/google/android/gms/a/a;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/a/a;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/a/a$a;-><init>(Lcom/google/android/gms/a/a;[BLcom/google/android/gms/a/a$c;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/a/a;[BLcom/google/android/gms/a/a$c;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/gms/a/a$a;->o:Lcom/google/android/gms/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p3, p0, Lcom/google/android/gms/a/a$a;->o:Lcom/google/android/gms/a/a;

    invoke-static {p3}, Lcom/google/android/gms/a/a;->a(Lcom/google/android/gms/a/a;)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/a/a$a;->a:I

    iget-object p3, p0, Lcom/google/android/gms/a/a$a;->o:Lcom/google/android/gms/a/a;

    invoke-static {p3}, Lcom/google/android/gms/a/a;->b(Lcom/google/android/gms/a/a;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/a/a$a;->b:Ljava/lang/String;

    iget-object p3, p0, Lcom/google/android/gms/a/a$a;->o:Lcom/google/android/gms/a/a;

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/google/android/gms/a/a$a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/a/a$a;->o:Lcom/google/android/gms/a/a;

    iput-object p3, p0, Lcom/google/android/gms/a/a$a;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/a/a$a;->e:I

    iput-object p3, p0, Lcom/google/android/gms/a/a$a;->g:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/a/a$a;->h:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/a/a$a;->i:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/a/a$a;->j:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/a/a$a;->k:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/a/a$a;->l:Z

    new-instance v1, Lcom/google/android/gms/internal/aot;

    invoke-direct {v1}, Lcom/google/android/gms/internal/aot;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/a/a$a;->m:Lcom/google/android/gms/internal/aot;

    iput-boolean v0, p0, Lcom/google/android/gms/a/a$a;->n:Z

    iput-object p3, p0, Lcom/google/android/gms/a/a$a;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/a/a$a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/a/a$a;->m:Lcom/google/android/gms/internal/aot;

    invoke-static {p1}, Lcom/google/android/gms/a/a;->c(Lcom/google/android/gms/a/a;)Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/aot;->a:J

    iget-object v0, p0, Lcom/google/android/gms/a/a$a;->m:Lcom/google/android/gms/internal/aot;

    invoke-static {p1}, Lcom/google/android/gms/a/a;->c(Lcom/google/android/gms/a/a;)Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/aot;->b:J

    iget-object v0, p0, Lcom/google/android/gms/a/a$a;->m:Lcom/google/android/gms/internal/aot;

    invoke-static {p1}, Lcom/google/android/gms/a/a;->d(Lcom/google/android/gms/a/a;)Lcom/google/android/gms/a/a$d;

    iget-object p1, p0, Lcom/google/android/gms/a/a$a;->m:Lcom/google/android/gms/internal/aot;

    iget-wide v1, p1, Lcom/google/android/gms/internal/aot;->a:J

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    iput-wide v1, v0, Lcom/google/android/gms/internal/aot;->d:J

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/a/a$a;->m:Lcom/google/android/gms/internal/aot;

    iput-object p2, p1, Lcom/google/android/gms/internal/aot;->c:[B

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/a/a$a;->f:Lcom/google/android/gms/a/a$c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/a/a;[BLcom/google/android/gms/a/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/a/a$a;-><init>(Lcom/google/android/gms/a/a;[B)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 14

    iget-boolean v0, p0, Lcom/google/android/gms/a/a$a;->n:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/a/a$a;->n:Z

    new-instance v0, Lcom/google/android/gms/a/f;

    new-instance v10, Lcom/google/android/gms/internal/rd;

    iget-object v1, p0, Lcom/google/android/gms/a/a$a;->o:Lcom/google/android/gms/a/a;

    invoke-static {v1}, Lcom/google/android/gms/a/a;->f(Lcom/google/android/gms/a/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/gms/a/a$a;->o:Lcom/google/android/gms/a/a;

    invoke-static {v1}, Lcom/google/android/gms/a/a;->g(Lcom/google/android/gms/a/a;)I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/a/a$a;->a:I

    iget-object v5, p0, Lcom/google/android/gms/a/a$a;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/a/a$a;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/a/a$a;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/a/a$a;->o:Lcom/google/android/gms/a/a;

    invoke-static {v1}, Lcom/google/android/gms/a/a;->e(Lcom/google/android/gms/a/a;)Z

    move-result v8

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/rd;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object v3, p0, Lcom/google/android/gms/a/a$a;->m:Lcom/google/android/gms/internal/aot;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Lcom/google/android/gms/a/a;->a(Ljava/util/ArrayList;)[I

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v12}, Lcom/google/android/gms/a/a;->a(Ljava/util/ArrayList;)[I

    move-result-object v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    iget-boolean v13, p0, Lcom/google/android/gms/a/a$a;->l:Z

    move-object v1, v0

    move-object v2, v10

    move-object v10, v11

    move v11, v13

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/a/f;-><init>(Lcom/google/android/gms/internal/rd;Lcom/google/android/gms/internal/aot;Lcom/google/android/gms/a/a$c;Lcom/google/android/gms/a/a$c;[I[Ljava/lang/String;[I[[B[Lcom/google/android/gms/d/a;Z)V

    iget-object v1, v0, Lcom/google/android/gms/a/f;->a:Lcom/google/android/gms/internal/rd;

    iget-object v2, p0, Lcom/google/android/gms/a/a$a;->o:Lcom/google/android/gms/a/a;

    invoke-static {v2}, Lcom/google/android/gms/a/a;->h(Lcom/google/android/gms/a/a;)Lcom/google/android/gms/a/a$b;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/rd;->b:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/gms/internal/rd;->a:I

    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/a/a$b;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/a/a$a;->o:Lcom/google/android/gms/a/a;

    invoke-static {v1}, Lcom/google/android/gms/a/a;->i(Lcom/google/android/gms/a/a;)Lcom/google/android/gms/a/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/a/c;->a(Lcom/google/android/gms/a/f;)Lcom/google/android/gms/common/api/g;

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0, v12}, Lcom/google/android/gms/common/api/h;->a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/g;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
