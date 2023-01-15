.class public final Lcom/google/android/gms/internal/agm;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T_WRAPPER::",
        "Lcom/google/android/gms/internal/agn<",
        "TT_ENGINE;>;T_ENGINE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/internal/agm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/agm<",
            "Lcom/google/android/gms/internal/ago;",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/internal/agm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/agm<",
            "Lcom/google/android/gms/internal/agt;",
            "Ljavax/crypto/Mac;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/internal/agm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/agm<",
            "Lcom/google/android/gms/internal/agq;",
            "Ljavax/crypto/KeyAgreement;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/google/android/gms/internal/agm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/agm<",
            "Lcom/google/android/gms/internal/ags;",
            "Ljava/security/KeyPairGenerator;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/google/android/gms/internal/agm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/agm<",
            "Lcom/google/android/gms/internal/agr;",
            "Ljava/security/KeyFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/logging/Logger;

.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Lcom/google/android/gms/internal/agm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/agm<",
            "Lcom/google/android/gms/internal/agv;",
            "Ljava/security/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Lcom/google/android/gms/internal/agm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/agm<",
            "Lcom/google/android/gms/internal/agu;",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private j:Lcom/google/android/gms/internal/agn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_WRAPPER;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-class v0, Lcom/google/android/gms/internal/agm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/agm;->f:Ljava/util/logging/Logger;

    invoke-static {}, Lcom/google/android/gms/internal/ahe;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "GmsCore_OpenSSL"

    const-string v1, "AndroidOpenSSL"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    sget-object v5, Lcom/google/android/gms/internal/agm;->f:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v7, "com.google.crypto.tink.subtle.EngineFactory"

    const-string v8, "toProviderList"

    const-string v9, "Provider %s not available"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v4, v10, v2

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v7, v8, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sput-object v1, Lcom/google/android/gms/internal/agm;->g:Ljava/util/List;

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/agm;->g:Ljava/util/List;

    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/agm;

    new-instance v1, Lcom/google/android/gms/internal/ago;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ago;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/agm;-><init>(Lcom/google/android/gms/internal/agn;)V

    sput-object v0, Lcom/google/android/gms/internal/agm;->a:Lcom/google/android/gms/internal/agm;

    new-instance v0, Lcom/google/android/gms/internal/agm;

    new-instance v1, Lcom/google/android/gms/internal/agt;

    invoke-direct {v1}, Lcom/google/android/gms/internal/agt;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/agm;-><init>(Lcom/google/android/gms/internal/agn;)V

    sput-object v0, Lcom/google/android/gms/internal/agm;->b:Lcom/google/android/gms/internal/agm;

    new-instance v0, Lcom/google/android/gms/internal/agm;

    new-instance v1, Lcom/google/android/gms/internal/agv;

    invoke-direct {v1}, Lcom/google/android/gms/internal/agv;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/agm;-><init>(Lcom/google/android/gms/internal/agn;)V

    sput-object v0, Lcom/google/android/gms/internal/agm;->h:Lcom/google/android/gms/internal/agm;

    new-instance v0, Lcom/google/android/gms/internal/agm;

    new-instance v1, Lcom/google/android/gms/internal/agu;

    invoke-direct {v1}, Lcom/google/android/gms/internal/agu;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/agm;-><init>(Lcom/google/android/gms/internal/agn;)V

    sput-object v0, Lcom/google/android/gms/internal/agm;->i:Lcom/google/android/gms/internal/agm;

    new-instance v0, Lcom/google/android/gms/internal/agm;

    new-instance v1, Lcom/google/android/gms/internal/agq;

    invoke-direct {v1}, Lcom/google/android/gms/internal/agq;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/agm;-><init>(Lcom/google/android/gms/internal/agn;)V

    sput-object v0, Lcom/google/android/gms/internal/agm;->c:Lcom/google/android/gms/internal/agm;

    new-instance v0, Lcom/google/android/gms/internal/agm;

    new-instance v1, Lcom/google/android/gms/internal/ags;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ags;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/agm;-><init>(Lcom/google/android/gms/internal/agn;)V

    sput-object v0, Lcom/google/android/gms/internal/agm;->d:Lcom/google/android/gms/internal/agm;

    new-instance v0, Lcom/google/android/gms/internal/agm;

    new-instance v1, Lcom/google/android/gms/internal/agr;

    invoke-direct {v1}, Lcom/google/android/gms/internal/agr;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/agm;-><init>(Lcom/google/android/gms/internal/agn;)V

    sput-object v0, Lcom/google/android/gms/internal/agm;->e:Lcom/google/android/gms/internal/agm;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/agn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_WRAPPER;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/agm;->j:Lcom/google/android/gms/internal/agn;

    sget-object p1, Lcom/google/android/gms/internal/agm;->g:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/agm;->k:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/agm;->l:Z

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/security/Provider;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/agm;->j:Lcom/google/android/gms/internal/agn;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/agn;->a(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT_ENGINE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/agm;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/agm;->a(Ljava/lang/String;Ljava/security/Provider;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/agm;->j:Lcom/google/android/gms/internal/agn;

    :goto_0
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/agn;->a(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/agm;->l:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/agm;->j:Lcom/google/android/gms/internal/agn;

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "No good Provider found."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
