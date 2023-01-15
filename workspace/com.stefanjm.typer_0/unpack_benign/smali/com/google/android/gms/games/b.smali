.class public final Lcom/google/android/gms/games/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/b$d;,
        Lcom/google/android/gms/games/b$b;,
        Lcom/google/android/gms/games/b$c;,
        Lcom/google/android/gms/games/b$a;
    }
.end annotation


# static fields
.field static final a:Lcom/google/android/gms/common/api/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$g<",
            "Lcom/google/android/gms/games/internal/j;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/common/api/Scope;

.field public static final c:Lcom/google/android/gms/common/api/Scope;

.field public static final d:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "Lcom/google/android/gms/games/b$a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final e:Lcom/google/android/gms/common/api/Scope;

.field public static final f:Lcom/google/android/gms/games/d;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final g:Lcom/google/android/gms/games/a/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final h:Lcom/google/android/gms/games/b/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final i:Lcom/google/android/gms/games/c/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final j:Lcom/google/android/gms/games/d/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final k:Lcom/google/android/gms/games/d/b/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final l:Lcom/google/android/gms/games/d/a/b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final m:Lcom/google/android/gms/games/j;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final n:Lcom/google/android/gms/games/f;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final o:Lcom/google/android/gms/games/e/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final p:Lcom/google/android/gms/games/f/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final q:Lcom/google/android/gms/games/g/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final r:Lcom/google/android/gms/games/h/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final s:Lcom/google/android/gms/games/i/b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final t:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "Lcom/google/android/gms/games/internal/j;",
            "Lcom/google/android/gms/games/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final u:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "Lcom/google/android/gms/games/internal/j;",
            "Lcom/google/android/gms/games/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final v:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "Lcom/google/android/gms/games/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final w:Lcom/google/android/gms/internal/d/s;

.field private static final x:Lcom/google/android/gms/games/d/b;

.field private static final y:Lcom/google/android/gms/internal/d/w;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/b;->a:Lcom/google/android/gms/common/api/a$g;

    new-instance v0, Lcom/google/android/gms/games/o;

    invoke-direct {v0}, Lcom/google/android/gms/games/o;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/b;->t:Lcom/google/android/gms/common/api/a$a;

    new-instance v0, Lcom/google/android/gms/games/p;

    invoke-direct {v0}, Lcom/google/android/gms/games/p;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/b;->u:Lcom/google/android/gms/common/api/a$a;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/games"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/games/b;->b:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/games_lite"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/games/b;->c:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string v1, "Games.API"

    sget-object v2, Lcom/google/android/gms/games/b;->t:Lcom/google/android/gms/common/api/a$a;

    sget-object v3, Lcom/google/android/gms/games/b;->a:Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v0, Lcom/google/android/gms/games/b;->d:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/games.firstparty"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/games/b;->e:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string v1, "Games.API_1P"

    sget-object v2, Lcom/google/android/gms/games/b;->u:Lcom/google/android/gms/common/api/a$a;

    sget-object v3, Lcom/google/android/gms/games/b;->a:Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v0, Lcom/google/android/gms/games/b;->v:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/internal/d/b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/d/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/b;->f:Lcom/google/android/gms/games/d;

    new-instance v0, Lcom/google/android/gms/internal/d/x;

    invoke-direct {v0}, Lcom/google/android/gms/internal/d/x;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/b;->g:Lcom/google/android/gms/games/a/a;

    new-instance v0, Lcom/google/android/gms/internal/d/y;

    invoke-direct {v0}, Lcom/google/android/gms/internal/d/y;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/b;->w:Lcom/google/android/gms/internal/d/s;

    new-instance v0, Lcom/google/android/gms/internal/d/z;

    invoke-direct {v0}, Lcom/google/android/gms/internal/d/z;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/b;->h:Lcom/google/android/gms/games/b/a;

    new-instance v0, Lcom/google/android/gms/internal/d/d;

    invoke-direct {v0}, Lcom/google/android/gms/internal/d/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/b;->i:Lcom/google/android/gms/games/c/a;

    new-instance v0, Lcom/google/android/gms/internal/d/c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/d/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/b;->j:Lcom/google/android/gms/games/d/a;

    new-instance v0, Lcom/google/android/gms/internal/d/q;

    invoke-direct {v0}, Lcom/google/android/gms/internal/d/q;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/b;->k:Lcom/google/android/gms/games/d/b/a;

    new-instance v0, Lcom/google/android/gms/internal/d/j;

    invoke-direct {v0}, Lcom/google/android/gms/internal/d/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/b;->l:Lcom/google/android/gms/games/d/a/b;

    new-instance v0, Lcom/google/android/gms/internal/d/f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/d/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/b;->x:Lcom/google/android/gms/games/d/b;

    new-instance v0, Lcom/google/android/gms/internal/d/h;

    invoke-direct {v0}, Lcom/google/android/gms/internal/d/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/b;->m:Lcom/google/android/gms/games/j;

    new-instance v0, Lcom/google/android/gms/internal/d/g;

    invoke-direct {v0}, Lcom/google/android/gms/internal/d/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/b;->n:Lcom/google/android/gms/games/f;

    new-instance v0, Lcom/google/android/gms/internal/d/i;

    invoke-direct {v0}, Lcom/google/android/gms/internal/d/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/b;->o:Lcom/google/android/gms/games/e/a;

    new-instance v0, Lcom/google/android/gms/internal/d/l;

    invoke-direct {v0}, Lcom/google/android/gms/internal/d/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/b;->p:Lcom/google/android/gms/games/f/a;

    new-instance v0, Lcom/google/android/gms/internal/d/m;

    invoke-direct {v0}, Lcom/google/android/gms/internal/d/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/b;->q:Lcom/google/android/gms/games/g/a;

    new-instance v0, Lcom/google/android/gms/internal/d/o;

    invoke-direct {v0}, Lcom/google/android/gms/internal/d/o;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/b;->r:Lcom/google/android/gms/games/h/a;

    new-instance v0, Lcom/google/android/gms/internal/d/r;

    invoke-direct {v0}, Lcom/google/android/gms/internal/d/r;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/b;->s:Lcom/google/android/gms/games/i/b;

    new-instance v0, Lcom/google/android/gms/internal/d/n;

    invoke-direct {v0}, Lcom/google/android/gms/internal/d/n;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/b;->y:Lcom/google/android/gms/internal/d/w;

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/games/internal/j;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/games/b;->a(Lcom/google/android/gms/common/api/f;Z)Lcom/google/android/gms/games/internal/j;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/google/android/gms/common/api/f;Z)Lcom/google/android/gms/games/internal/j;
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "GoogleApiClient parameter is required."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ad;->b(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/f;->j()Z

    move-result v0

    const-string v1, "GoogleApiClient must be connected."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ad;->a(ZLjava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/google/android/gms/games/b;->b(Lcom/google/android/gms/common/api/f;Z)Lcom/google/android/gms/games/internal/j;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/f;",
            ")",
            "Lcom/google/android/gms/common/api/g<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/q;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/q;-><init>(Lcom/google/android/gms/common/api/f;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/f;->a(Lcom/google/android/gms/common/api/internal/c$a;)Lcom/google/android/gms/common/api/internal/c$a;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/google/android/gms/common/api/f;Z)Lcom/google/android/gms/games/internal/j;
    .locals 2

    sget-object v0, Lcom/google/android/gms/games/b;->d:Lcom/google/android/gms/common/api/a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/f;->a(Lcom/google/android/gms/common/api/a;)Z

    move-result v0

    const-string v1, "GoogleApiClient is not configured to use the Games Api. Pass Games.API into GoogleApiClient.Builder#addApi() to use this feature."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ad;->a(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/games/b;->d:Lcom/google/android/gms/common/api/a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/f;->b(Lcom/google/android/gms/common/api/a;)Z

    move-result v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "GoogleApiClient has an optional Games.API and is not connected to Games. Use GoogleApiClient.hasConnectedApi(Games.API) to guard this call."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-eqz v0, :cond_1

    sget-object p1, Lcom/google/android/gms/games/b;->a:Lcom/google/android/gms/common/api/a$g;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/f;->a(Lcom/google/android/gms/common/api/a$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/games/internal/j;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
