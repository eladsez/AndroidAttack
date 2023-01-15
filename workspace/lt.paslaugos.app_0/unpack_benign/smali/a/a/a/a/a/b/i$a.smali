.class final enum La/a/a/a/a/b/i$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/a/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/a/a/a/a/b/i$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/a/a/a/a/b/i$a;

.field public static final enum b:La/a/a/a/a/b/i$a;

.field public static final enum c:La/a/a/a/a/b/i$a;

.field public static final enum d:La/a/a/a/a/b/i$a;

.field public static final enum e:La/a/a/a/a/b/i$a;

.field public static final enum f:La/a/a/a/a/b/i$a;

.field public static final enum g:La/a/a/a/a/b/i$a;

.field public static final enum h:La/a/a/a/a/b/i$a;

.field public static final enum i:La/a/a/a/a/b/i$a;

.field public static final enum j:La/a/a/a/a/b/i$a;

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "La/a/a/a/a/b/i$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic l:[La/a/a/a/a/b/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, La/a/a/a/a/b/i$a;

    const-string v1, "X86_32"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/a/a/a/a/b/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/a/a/b/i$a;->a:La/a/a/a/a/b/i$a;

    new-instance v0, La/a/a/a/a/b/i$a;

    const-string v1, "X86_64"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, La/a/a/a/a/b/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/a/a/b/i$a;->b:La/a/a/a/a/b/i$a;

    new-instance v0, La/a/a/a/a/b/i$a;

    const-string v1, "ARM_UNKNOWN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, La/a/a/a/a/b/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/a/a/b/i$a;->c:La/a/a/a/a/b/i$a;

    new-instance v0, La/a/a/a/a/b/i$a;

    const-string v1, "PPC"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, La/a/a/a/a/b/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/a/a/b/i$a;->d:La/a/a/a/a/b/i$a;

    new-instance v0, La/a/a/a/a/b/i$a;

    const-string v1, "PPC64"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, La/a/a/a/a/b/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/a/a/b/i$a;->e:La/a/a/a/a/b/i$a;

    new-instance v0, La/a/a/a/a/b/i$a;

    const-string v1, "ARMV6"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, La/a/a/a/a/b/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/a/a/b/i$a;->f:La/a/a/a/a/b/i$a;

    new-instance v0, La/a/a/a/a/b/i$a;

    const-string v1, "ARMV7"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, La/a/a/a/a/b/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/a/a/b/i$a;->g:La/a/a/a/a/b/i$a;

    new-instance v0, La/a/a/a/a/b/i$a;

    const-string v1, "UNKNOWN"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, La/a/a/a/a/b/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/a/a/b/i$a;->h:La/a/a/a/a/b/i$a;

    new-instance v0, La/a/a/a/a/b/i$a;

    const-string v1, "ARMV7S"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, La/a/a/a/a/b/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/a/a/b/i$a;->i:La/a/a/a/a/b/i$a;

    new-instance v0, La/a/a/a/a/b/i$a;

    const-string v1, "ARM64"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, La/a/a/a/a/b/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/a/a/b/i$a;->j:La/a/a/a/a/b/i$a;

    const/16 v0, 0xa

    new-array v0, v0, [La/a/a/a/a/b/i$a;

    sget-object v1, La/a/a/a/a/b/i$a;->a:La/a/a/a/a/b/i$a;

    aput-object v1, v0, v2

    sget-object v1, La/a/a/a/a/b/i$a;->b:La/a/a/a/a/b/i$a;

    aput-object v1, v0, v3

    sget-object v1, La/a/a/a/a/b/i$a;->c:La/a/a/a/a/b/i$a;

    aput-object v1, v0, v4

    sget-object v1, La/a/a/a/a/b/i$a;->d:La/a/a/a/a/b/i$a;

    aput-object v1, v0, v5

    sget-object v1, La/a/a/a/a/b/i$a;->e:La/a/a/a/a/b/i$a;

    aput-object v1, v0, v6

    sget-object v1, La/a/a/a/a/b/i$a;->f:La/a/a/a/a/b/i$a;

    aput-object v1, v0, v7

    sget-object v1, La/a/a/a/a/b/i$a;->g:La/a/a/a/a/b/i$a;

    aput-object v1, v0, v8

    sget-object v1, La/a/a/a/a/b/i$a;->h:La/a/a/a/a/b/i$a;

    aput-object v1, v0, v9

    sget-object v1, La/a/a/a/a/b/i$a;->i:La/a/a/a/a/b/i$a;

    aput-object v1, v0, v10

    sget-object v1, La/a/a/a/a/b/i$a;->j:La/a/a/a/a/b/i$a;

    aput-object v1, v0, v11

    sput-object v0, La/a/a/a/a/b/i$a;->l:[La/a/a/a/a/b/i$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, La/a/a/a/a/b/i$a;->k:Ljava/util/Map;

    sget-object v0, La/a/a/a/a/b/i$a;->k:Ljava/util/Map;

    const-string v1, "armeabi-v7a"

    sget-object v2, La/a/a/a/a/b/i$a;->g:La/a/a/a/a/b/i$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/a/a/a/b/i$a;->k:Ljava/util/Map;

    const-string v1, "armeabi"

    sget-object v2, La/a/a/a/a/b/i$a;->f:La/a/a/a/a/b/i$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/a/a/a/b/i$a;->k:Ljava/util/Map;

    const-string v1, "arm64-v8a"

    sget-object v2, La/a/a/a/a/b/i$a;->j:La/a/a/a/a/b/i$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/a/a/a/b/i$a;->k:Ljava/util/Map;

    const-string v1, "x86"

    sget-object v2, La/a/a/a/a/b/i$a;->a:La/a/a/a/a/b/i$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a()La/a/a/a/a/b/i$a;
    .locals 3

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Architecture#getValue()::Build.CPU_ABI returned null or empty"

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, La/a/a/a/a/b/i$a;->h:La/a/a/a/a/b/i$a;

    return-object v0

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, La/a/a/a/a/b/i$a;->k:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/b/i$a;

    if-nez v0, :cond_1

    sget-object v0, La/a/a/a/a/b/i$a;->h:La/a/a/a/a/b/i$a;

    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)La/a/a/a/a/b/i$a;
    .locals 1

    const-class v0, La/a/a/a/a/b/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/a/a/a/a/b/i$a;

    return-object p0
.end method

.method public static values()[La/a/a/a/a/b/i$a;
    .locals 1

    sget-object v0, La/a/a/a/a/b/i$a;->l:[La/a/a/a/a/b/i$a;

    invoke-virtual {v0}, [La/a/a/a/a/b/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/a/a/a/b/i$a;

    return-object v0
.end method
