.class public Lcom/google/android/gms/d/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/net/Uri;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 7

    const-string v3, ""

    const-string v4, ""

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/d/c$a;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/d/c$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/d/c$a;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/d/c$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/d/c$a;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/d/c$a;->e:Z

    iput-boolean p6, p0, Lcom/google/android/gms/d/c$a;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/d/c$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/d/c$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/d/c$a;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/d/c$a;->b:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/d/c$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/d/c$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/d/c$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/d/c$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/d/c$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/d/c$a;->f:Z

    return p0
.end method

.method static synthetic f(Lcom/google/android/gms/d/c$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/d/c$a;->e:Z

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/android/gms/d/c$a;
    .locals 8

    iget-boolean v0, p0, Lcom/google/android/gms/d/c$a;->e:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/d/c$a;

    iget-object v2, p0, Lcom/google/android/gms/d/c$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/d/c$a;->b:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/gms/d/c$a;->d:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/d/c$a;->e:Z

    iget-boolean v7, p0, Lcom/google/android/gms/d/c$a;->f:Z

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/d/c$a;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set GServices prefix and skip GServices"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/d/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/d/c<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/d/c;->a(Lcom/google/android/gms/d/c$a;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/d/c;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/google/android/gms/d/c$a;
    .locals 8

    new-instance v7, Lcom/google/android/gms/d/c$a;

    iget-object v1, p0, Lcom/google/android/gms/d/c$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/d/c$a;->b:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/gms/d/c$a;->c:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/gms/d/c$a;->e:Z

    iget-boolean v6, p0, Lcom/google/android/gms/d/c$a;->f:Z

    move-object v0, v7

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/d/c$a;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v7
.end method
