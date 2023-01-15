.class public final Lcom/google/android/gms/auth/api/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/a$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/common/api/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$g<",
            "Lcom/google/android/gms/internal/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/common/api/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$g<",
            "Lcom/google/android/gms/auth/api/signin/internal/i;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "Lcom/google/android/gms/auth/api/f;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "Lcom/google/android/gms/auth/api/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lcom/google/android/gms/auth/api/a/a;

.field public static final g:Lcom/google/android/gms/auth/api/credentials/a;

.field public static final h:Lcom/google/android/gms/auth/api/signin/b;

.field private static final i:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "Lcom/google/android/gms/internal/b/b;",
            "Lcom/google/android/gms/auth/api/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "Lcom/google/android/gms/auth/api/signin/internal/i;",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/a;->a:Lcom/google/android/gms/common/api/a$g;

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/a;->b:Lcom/google/android/gms/common/api/a$g;

    new-instance v0, Lcom/google/android/gms/auth/api/b;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/a;->i:Lcom/google/android/gms/common/api/a$a;

    new-instance v0, Lcom/google/android/gms/auth/api/c;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/a;->j:Lcom/google/android/gms/common/api/a$a;

    sget-object v0, Lcom/google/android/gms/auth/api/d;->a:Lcom/google/android/gms/common/api/a;

    sput-object v0, Lcom/google/android/gms/auth/api/a;->c:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string v1, "Auth.CREDENTIALS_API"

    sget-object v2, Lcom/google/android/gms/auth/api/a;->i:Lcom/google/android/gms/common/api/a$a;

    sget-object v3, Lcom/google/android/gms/auth/api/a;->a:Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v0, Lcom/google/android/gms/auth/api/a;->d:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string v1, "Auth.GOOGLE_SIGN_IN_API"

    sget-object v2, Lcom/google/android/gms/auth/api/a;->j:Lcom/google/android/gms/common/api/a$a;

    sget-object v3, Lcom/google/android/gms/auth/api/a;->b:Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v0, Lcom/google/android/gms/auth/api/a;->e:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/internal/b/h;

    invoke-direct {v0}, Lcom/google/android/gms/internal/b/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/a;->f:Lcom/google/android/gms/auth/api/a/a;

    new-instance v0, Lcom/google/android/gms/internal/b/a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/b/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/a;->g:Lcom/google/android/gms/auth/api/credentials/a;

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/h;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/internal/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/a;->h:Lcom/google/android/gms/auth/api/signin/b;

    return-void
.end method
