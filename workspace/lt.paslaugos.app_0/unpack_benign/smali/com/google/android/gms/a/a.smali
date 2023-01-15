.class public final Lcom/google/android/gms/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/a/a$a;,
        Lcom/google/android/gms/a/a$d;,
        Lcom/google/android/gms/a/a$b;,
        Lcom/google/android/gms/a/a$c;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static b:Lcom/google/android/gms/common/api/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$g<",
            "Lcom/google/android/gms/internal/qv;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/google/android/gms/common/api/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$b<",
            "Lcom/google/android/gms/internal/qv;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:[Lcom/google/android/gms/d/a;

.field private static final e:[Ljava/lang/String;

.field private static final f:[[B


# instance fields
.field private final g:Ljava/lang/String;

.field private final h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private final m:Z

.field private n:I

.field private final o:Lcom/google/android/gms/a/c;

.field private final p:Lcom/google/android/gms/common/util/e;

.field private q:Lcom/google/android/gms/a/a$d;

.field private final r:Lcom/google/android/gms/a/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lcom/google/android/gms/a/a;->b:Lcom/google/android/gms/common/api/a$g;

    new-instance v0, Lcom/google/android/gms/a/b;

    invoke-direct {v0}, Lcom/google/android/gms/a/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/a/a;->c:Lcom/google/android/gms/common/api/a$b;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string v1, "ClearcutLogger.API"

    sget-object v2, Lcom/google/android/gms/a/a;->c:Lcom/google/android/gms/common/api/a$b;

    sget-object v3, Lcom/google/android/gms/a/a;->b:Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v0, Lcom/google/android/gms/a/a;->a:Lcom/google/android/gms/common/api/a;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/android/gms/d/a;

    sput-object v1, Lcom/google/android/gms/a/a;->d:[Lcom/google/android/gms/d/a;

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/google/android/gms/a/a;->e:[Ljava/lang/String;

    new-array v0, v0, [[B

    sput-object v0, Lcom/google/android/gms/a/a;->f:[[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/a/c;Lcom/google/android/gms/common/util/e;Lcom/google/android/gms/a/a$d;Lcom/google/android/gms/a/a$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    iput p2, p0, Lcom/google/android/gms/a/a;->j:I

    const/4 p4, 0x0

    iput p4, p0, Lcom/google/android/gms/a/a;->n:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/google/android/gms/a/a;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/a/a;->a(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/a/a;->h:I

    iput p2, p0, Lcom/google/android/gms/a/a;->j:I

    iput-object p3, p0, Lcom/google/android/gms/a/a;->i:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/a/a;->k:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/a/a;->l:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/a/a;->m:Z

    iput-object p7, p0, Lcom/google/android/gms/a/a;->o:Lcom/google/android/gms/a/c;

    iput-object p8, p0, Lcom/google/android/gms/a/a;->p:Lcom/google/android/gms/common/util/e;

    new-instance p2, Lcom/google/android/gms/a/a$d;

    invoke-direct {p2}, Lcom/google/android/gms/a/a$d;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/a/a;->q:Lcom/google/android/gms/a/a$d;

    iput p4, p0, Lcom/google/android/gms/a/a;->n:I

    iput-object p10, p0, Lcom/google/android/gms/a/a;->r:Lcom/google/android/gms/a/a$b;

    const-string p2, "can\'t be anonymous with an upload account"

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/ad;->b(ZLjava/lang/Object;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "ClearcutLogger"

    const-string v2, "This can\'t happen."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic a(Lcom/google/android/gms/a/a;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/a/a;->j:I

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/a/a;
    .locals 12

    new-instance v11, Lcom/google/android/gms/a/a;

    invoke-static {p0}, Lcom/google/android/gms/internal/qq;->a(Landroid/content/Context;)Lcom/google/android/gms/a/c;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/common/util/g;->d()Lcom/google/android/gms/common/util/e;

    move-result-object v8

    new-instance v10, Lcom/google/android/gms/internal/rb;

    invoke-direct {v10, p0}, Lcom/google/android/gms/internal/rb;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/a/a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/a/c;Lcom/google/android/gms/common/util/e;Lcom/google/android/gms/a/a$d;Lcom/google/android/gms/a/a$b;)V

    return-object v11
.end method

.method static synthetic a(Ljava/util/ArrayList;)[I
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/google/android/gms/a/a;->b(Ljava/util/ArrayList;)[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/a/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/a/a;->i:Ljava/lang/String;

    return-object p0
.end method

.method private static b(Ljava/util/ArrayList;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    aput v4, v0, v3

    move v3, v5

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/a/a;)Lcom/google/android/gms/common/util/e;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/a/a;->p:Lcom/google/android/gms/common/util/e;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/a/a;)Lcom/google/android/gms/a/a$d;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/a/a;->q:Lcom/google/android/gms/a/a$d;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/a/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/a/a;->m:Z

    return p0
.end method

.method static synthetic f(Lcom/google/android/gms/a/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/a/a;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/gms/a/a;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/a/a;->h:I

    return p0
.end method

.method static synthetic h(Lcom/google/android/gms/a/a;)Lcom/google/android/gms/a/a$b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/a/a;->r:Lcom/google/android/gms/a/a$b;

    return-object p0
.end method

.method static synthetic i(Lcom/google/android/gms/a/a;)Lcom/google/android/gms/a/c;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/a/a;->o:Lcom/google/android/gms/a/c;

    return-object p0
.end method


# virtual methods
.method public final a([B)Lcom/google/android/gms/a/a$a;
    .locals 2

    new-instance v0, Lcom/google/android/gms/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/a/a$a;-><init>(Lcom/google/android/gms/a/a;[BLcom/google/android/gms/a/b;)V

    return-object v0
.end method
