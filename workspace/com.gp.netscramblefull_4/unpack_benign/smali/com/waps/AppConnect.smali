.class public final Lcom/waps/AppConnect;
.super Ljava/lang/Object;


# static fields
.field public static A:Landroid/content/ComponentName; = null

.field protected static B:Ljava/lang/String; = null

.field protected static C:Ljava/lang/String; = null

.field public static E:Z = false

.field private static I:Lcom/waps/AppConnect; = null

.field private static J:Lcom/waps/r; = null

.field private static K:Lcom/waps/DisplayAd; = null

.field public static final LIBRARY_VERSION_NUMBER:Ljava/lang/String; = "1.5.1"

.field private static aA:Z

.field private static aD:Ljava/lang/String;

.field private static aE:Z

.field private static aF:Z

.field private static final aL:[B

.field private static ai:Z

.field private static aj:Z

.field private static ak:Ljava/lang/String;

.field private static ao:Lcom/waps/UpdatePointsNotifier;

.field private static au:Ljava/lang/String;

.field private static av:Ljava/lang/String;

.field private static aw:Ljava/lang/String;


# instance fields
.field D:Lcom/waps/n;

.field private F:Lcom/waps/k;

.field private G:Landroid/content/Context;

.field private final H:Ljava/util/concurrent/ScheduledExecutorService;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private Z:Ljava/lang/String;

.field final a:Ljava/lang/String;

.field private aB:I

.field private aC:Z

.field private aG:Ljava/lang/String;

.field private aH:Ljava/lang/String;

.field private aI:Ljava/lang/String;

.field private aJ:Ljava/lang/String;

.field private aK:Landroid/graphics/Bitmap;

.field private aM:[B

.field private aN:I

.field private aO:I

.field private aP:Z

.field private aQ:I

.field private aa:Ljava/lang/String;

.field private ab:Ljava/lang/String;

.field private ac:Ljava/lang/String;

.field private ad:Ljava/lang/String;

.field private ae:Ljava/lang/String;

.field private af:I

.field private ag:I

.field private ah:Ljava/lang/String;

.field private al:Ljava/lang/String;

.field private am:Ljava/lang/String;

.field private an:Ljava/lang/String;

.field private ap:Lcom/waps/g;

.field private aq:Lcom/waps/j;

.field private ar:Lcom/waps/f;

.field private as:Lcom/waps/i;

.field private at:Lcom/waps/h;

.field private ax:Z

.field private ay:I

.field private az:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Ljava/lang/String;

.field final f:Ljava/lang/String;

.field final g:Ljava/lang/String;

.field final h:Ljava/lang/String;

.field final i:Ljava/lang/String;

.field final j:Ljava/lang/String;

.field final k:Ljava/lang/String;

.field final l:Ljava/lang/String;

.field final m:Ljava/lang/String;

.field final n:Ljava/lang/String;

.field final o:Ljava/lang/String;

.field final p:Ljava/lang/String;

.field final q:Ljava/lang/String;

.field final r:Ljava/lang/String;

.field final s:Ljava/lang/String;

.field final t:Ljava/lang/String;

.field final u:Ljava/lang/String;

.field final v:Ljava/lang/String;

.field protected w:Ljava/lang/String;

.field protected x:Ljava/lang/String;

.field protected y:Ljava/lang/String;

.field protected z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    const-string v1, ""

    sput-object v0, Lcom/waps/AppConnect;->I:Lcom/waps/AppConnect;

    sput-object v0, Lcom/waps/AppConnect;->J:Lcom/waps/r;

    sput-object v0, Lcom/waps/AppConnect;->K:Lcom/waps/DisplayAd;

    sput-boolean v3, Lcom/waps/AppConnect;->ai:Z

    sput-boolean v2, Lcom/waps/AppConnect;->aj:Z

    sput-object v0, Lcom/waps/AppConnect;->ak:Ljava/lang/String;

    const-string v0, ""

    sput-object v1, Lcom/waps/AppConnect;->au:Ljava/lang/String;

    const-string v0, "receiver/install?"

    sput-object v0, Lcom/waps/AppConnect;->av:Ljava/lang/String;

    const-string v0, "install"

    sput-object v0, Lcom/waps/AppConnect;->aw:Ljava/lang/String;

    sput-boolean v3, Lcom/waps/AppConnect;->aA:Z

    const-string v0, ""

    sput-object v1, Lcom/waps/AppConnect;->B:Ljava/lang/String;

    const-string v0, ""

    sput-object v1, Lcom/waps/AppConnect;->C:Ljava/lang/String;

    const-string v0, ""

    sput-object v1, Lcom/waps/AppConnect;->aD:Ljava/lang/String;

    sput-boolean v2, Lcom/waps/AppConnect;->aE:Z

    sput-boolean v3, Lcom/waps/AppConnect;->aF:Z

    sput-boolean v2, Lcom/waps/AppConnect;->E:Z

    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/waps/AppConnect;->aL:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        0x3et
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v5, "points"

    const-string v1, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/waps/AppConnect;->F:Lcom/waps/k;

    iput-object v2, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->H:Ljava/util/concurrent/ScheduledExecutorService;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->M:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->N:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->O:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->P:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->Q:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->R:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->S:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->T:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->U:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->V:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->W:Ljava/lang/String;

    const-string v0, "http://app.wapx.cn/action/account/offerlist?"

    iput-object v0, p0, Lcom/waps/AppConnect;->X:Ljava/lang/String;

    const-string v0, "http://app.wapx.cn/action/account/ownslist?"

    iput-object v0, p0, Lcom/waps/AppConnect;->Y:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->Z:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->ab:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->ac:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->ad:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->ae:Ljava/lang/String;

    iput v3, p0, Lcom/waps/AppConnect;->af:I

    iput v3, p0, Lcom/waps/AppConnect;->ag:I

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->ah:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->al:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->am:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->an:Ljava/lang/String;

    const-string v0, "x"

    iput-object v0, p0, Lcom/waps/AppConnect;->a:Ljava/lang/String;

    const-string v0, "y"

    iput-object v0, p0, Lcom/waps/AppConnect;->b:Ljava/lang/String;

    const-string v0, "net"

    iput-object v0, p0, Lcom/waps/AppConnect;->c:Ljava/lang/String;

    const-string v0, "imsi"

    iput-object v0, p0, Lcom/waps/AppConnect;->d:Ljava/lang/String;

    const-string v0, "udid"

    iput-object v0, p0, Lcom/waps/AppConnect;->e:Ljava/lang/String;

    const-string v0, "device_name"

    iput-object v0, p0, Lcom/waps/AppConnect;->f:Ljava/lang/String;

    const-string v0, "device_type"

    iput-object v0, p0, Lcom/waps/AppConnect;->g:Ljava/lang/String;

    const-string v0, "os_version"

    iput-object v0, p0, Lcom/waps/AppConnect;->h:Ljava/lang/String;

    const-string v0, "country_code"

    iput-object v0, p0, Lcom/waps/AppConnect;->i:Ljava/lang/String;

    const-string v0, "language"

    iput-object v0, p0, Lcom/waps/AppConnect;->j:Ljava/lang/String;

    const-string v0, "app_version"

    iput-object v0, p0, Lcom/waps/AppConnect;->k:Ljava/lang/String;

    const-string v0, "sdk_version"

    iput-object v0, p0, Lcom/waps/AppConnect;->l:Ljava/lang/String;

    const-string v0, "act"

    iput-object v0, p0, Lcom/waps/AppConnect;->m:Ljava/lang/String;

    const-string v0, "userid"

    iput-object v0, p0, Lcom/waps/AppConnect;->n:Ljava/lang/String;

    const-string v0, "channel"

    iput-object v0, p0, Lcom/waps/AppConnect;->o:Ljava/lang/String;

    const-string v0, "points"

    iput-object v5, p0, Lcom/waps/AppConnect;->p:Ljava/lang/String;

    const-string v0, "points"

    iput-object v5, p0, Lcom/waps/AppConnect;->q:Ljava/lang/String;

    const-string v0, "install"

    iput-object v0, p0, Lcom/waps/AppConnect;->r:Ljava/lang/String;

    const-string v0, "uninstall"

    iput-object v0, p0, Lcom/waps/AppConnect;->s:Ljava/lang/String;

    const-string v0, "load"

    iput-object v0, p0, Lcom/waps/AppConnect;->t:Ljava/lang/String;

    const-string v0, "device_width"

    iput-object v0, p0, Lcom/waps/AppConnect;->u:Ljava/lang/String;

    const-string v0, "device_height"

    iput-object v0, p0, Lcom/waps/AppConnect;->v:Ljava/lang/String;

    iput-object v2, p0, Lcom/waps/AppConnect;->ap:Lcom/waps/g;

    iput-object v2, p0, Lcom/waps/AppConnect;->aq:Lcom/waps/j;

    iput-object v2, p0, Lcom/waps/AppConnect;->ar:Lcom/waps/f;

    iput-object v2, p0, Lcom/waps/AppConnect;->as:Lcom/waps/i;

    iput-object v2, p0, Lcom/waps/AppConnect;->at:Lcom/waps/h;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->w:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->x:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->y:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->z:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/waps/AppConnect;->ax:Z

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->az:Ljava/lang/String;

    iput v3, p0, Lcom/waps/AppConnect;->aB:I

    iput-boolean v4, p0, Lcom/waps/AppConnect;->aC:Z

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->aG:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->aH:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->aI:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->aJ:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v5, "points"

    const-string v1, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/waps/AppConnect;->F:Lcom/waps/k;

    iput-object v2, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->H:Ljava/util/concurrent/ScheduledExecutorService;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->M:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->N:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->O:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->P:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->Q:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->R:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->S:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->T:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->U:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->V:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->W:Ljava/lang/String;

    const-string v0, "http://app.wapx.cn/action/account/offerlist?"

    iput-object v0, p0, Lcom/waps/AppConnect;->X:Ljava/lang/String;

    const-string v0, "http://app.wapx.cn/action/account/ownslist?"

    iput-object v0, p0, Lcom/waps/AppConnect;->Y:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->Z:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->ab:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->ac:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->ad:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->ae:Ljava/lang/String;

    iput v3, p0, Lcom/waps/AppConnect;->af:I

    iput v3, p0, Lcom/waps/AppConnect;->ag:I

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->ah:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->al:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->am:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->an:Ljava/lang/String;

    const-string v0, "x"

    iput-object v0, p0, Lcom/waps/AppConnect;->a:Ljava/lang/String;

    const-string v0, "y"

    iput-object v0, p0, Lcom/waps/AppConnect;->b:Ljava/lang/String;

    const-string v0, "net"

    iput-object v0, p0, Lcom/waps/AppConnect;->c:Ljava/lang/String;

    const-string v0, "imsi"

    iput-object v0, p0, Lcom/waps/AppConnect;->d:Ljava/lang/String;

    const-string v0, "udid"

    iput-object v0, p0, Lcom/waps/AppConnect;->e:Ljava/lang/String;

    const-string v0, "device_name"

    iput-object v0, p0, Lcom/waps/AppConnect;->f:Ljava/lang/String;

    const-string v0, "device_type"

    iput-object v0, p0, Lcom/waps/AppConnect;->g:Ljava/lang/String;

    const-string v0, "os_version"

    iput-object v0, p0, Lcom/waps/AppConnect;->h:Ljava/lang/String;

    const-string v0, "country_code"

    iput-object v0, p0, Lcom/waps/AppConnect;->i:Ljava/lang/String;

    const-string v0, "language"

    iput-object v0, p0, Lcom/waps/AppConnect;->j:Ljava/lang/String;

    const-string v0, "app_version"

    iput-object v0, p0, Lcom/waps/AppConnect;->k:Ljava/lang/String;

    const-string v0, "sdk_version"

    iput-object v0, p0, Lcom/waps/AppConnect;->l:Ljava/lang/String;

    const-string v0, "act"

    iput-object v0, p0, Lcom/waps/AppConnect;->m:Ljava/lang/String;

    const-string v0, "userid"

    iput-object v0, p0, Lcom/waps/AppConnect;->n:Ljava/lang/String;

    const-string v0, "channel"

    iput-object v0, p0, Lcom/waps/AppConnect;->o:Ljava/lang/String;

    const-string v0, "points"

    iput-object v5, p0, Lcom/waps/AppConnect;->p:Ljava/lang/String;

    const-string v0, "points"

    iput-object v5, p0, Lcom/waps/AppConnect;->q:Ljava/lang/String;

    const-string v0, "install"

    iput-object v0, p0, Lcom/waps/AppConnect;->r:Ljava/lang/String;

    const-string v0, "uninstall"

    iput-object v0, p0, Lcom/waps/AppConnect;->s:Ljava/lang/String;

    const-string v0, "load"

    iput-object v0, p0, Lcom/waps/AppConnect;->t:Ljava/lang/String;

    const-string v0, "device_width"

    iput-object v0, p0, Lcom/waps/AppConnect;->u:Ljava/lang/String;

    const-string v0, "device_height"

    iput-object v0, p0, Lcom/waps/AppConnect;->v:Ljava/lang/String;

    iput-object v2, p0, Lcom/waps/AppConnect;->ap:Lcom/waps/g;

    iput-object v2, p0, Lcom/waps/AppConnect;->aq:Lcom/waps/j;

    iput-object v2, p0, Lcom/waps/AppConnect;->ar:Lcom/waps/f;

    iput-object v2, p0, Lcom/waps/AppConnect;->as:Lcom/waps/i;

    iput-object v2, p0, Lcom/waps/AppConnect;->at:Lcom/waps/h;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->w:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->x:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->y:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->z:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/waps/AppConnect;->ax:Z

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->az:Ljava/lang/String;

    iput v3, p0, Lcom/waps/AppConnect;->aB:I

    iput-boolean v4, p0, Lcom/waps/AppConnect;->aC:Z

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->aG:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->aH:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->aI:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->aJ:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/waps/AppConnect;->getParams(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    new-instance v0, Lcom/waps/k;

    invoke-direct {v0, p0, v2}, Lcom/waps/k;-><init>(Lcom/waps/AppConnect;Lcom/waps/d;)V

    iput-object v0, p0, Lcom/waps/AppConnect;->F:Lcom/waps/k;

    iget-object v0, p0, Lcom/waps/AppConnect;->F:Lcom/waps/k;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/waps/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v5, "points"

    const-string v1, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/waps/AppConnect;->F:Lcom/waps/k;

    iput-object v2, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->H:Ljava/util/concurrent/ScheduledExecutorService;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->M:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->N:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->O:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->P:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->Q:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->R:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->S:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->T:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->U:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->V:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->W:Ljava/lang/String;

    const-string v0, "http://app.wapx.cn/action/account/offerlist?"

    iput-object v0, p0, Lcom/waps/AppConnect;->X:Ljava/lang/String;

    const-string v0, "http://app.wapx.cn/action/account/ownslist?"

    iput-object v0, p0, Lcom/waps/AppConnect;->Y:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->Z:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->ab:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->ac:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->ad:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->ae:Ljava/lang/String;

    iput v3, p0, Lcom/waps/AppConnect;->af:I

    iput v3, p0, Lcom/waps/AppConnect;->ag:I

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->ah:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->al:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->am:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->an:Ljava/lang/String;

    const-string v0, "x"

    iput-object v0, p0, Lcom/waps/AppConnect;->a:Ljava/lang/String;

    const-string v0, "y"

    iput-object v0, p0, Lcom/waps/AppConnect;->b:Ljava/lang/String;

    const-string v0, "net"

    iput-object v0, p0, Lcom/waps/AppConnect;->c:Ljava/lang/String;

    const-string v0, "imsi"

    iput-object v0, p0, Lcom/waps/AppConnect;->d:Ljava/lang/String;

    const-string v0, "udid"

    iput-object v0, p0, Lcom/waps/AppConnect;->e:Ljava/lang/String;

    const-string v0, "device_name"

    iput-object v0, p0, Lcom/waps/AppConnect;->f:Ljava/lang/String;

    const-string v0, "device_type"

    iput-object v0, p0, Lcom/waps/AppConnect;->g:Ljava/lang/String;

    const-string v0, "os_version"

    iput-object v0, p0, Lcom/waps/AppConnect;->h:Ljava/lang/String;

    const-string v0, "country_code"

    iput-object v0, p0, Lcom/waps/AppConnect;->i:Ljava/lang/String;

    const-string v0, "language"

    iput-object v0, p0, Lcom/waps/AppConnect;->j:Ljava/lang/String;

    const-string v0, "app_version"

    iput-object v0, p0, Lcom/waps/AppConnect;->k:Ljava/lang/String;

    const-string v0, "sdk_version"

    iput-object v0, p0, Lcom/waps/AppConnect;->l:Ljava/lang/String;

    const-string v0, "act"

    iput-object v0, p0, Lcom/waps/AppConnect;->m:Ljava/lang/String;

    const-string v0, "userid"

    iput-object v0, p0, Lcom/waps/AppConnect;->n:Ljava/lang/String;

    const-string v0, "channel"

    iput-object v0, p0, Lcom/waps/AppConnect;->o:Ljava/lang/String;

    const-string v0, "points"

    iput-object v5, p0, Lcom/waps/AppConnect;->p:Ljava/lang/String;

    const-string v0, "points"

    iput-object v5, p0, Lcom/waps/AppConnect;->q:Ljava/lang/String;

    const-string v0, "install"

    iput-object v0, p0, Lcom/waps/AppConnect;->r:Ljava/lang/String;

    const-string v0, "uninstall"

    iput-object v0, p0, Lcom/waps/AppConnect;->s:Ljava/lang/String;

    const-string v0, "load"

    iput-object v0, p0, Lcom/waps/AppConnect;->t:Ljava/lang/String;

    const-string v0, "device_width"

    iput-object v0, p0, Lcom/waps/AppConnect;->u:Ljava/lang/String;

    const-string v0, "device_height"

    iput-object v0, p0, Lcom/waps/AppConnect;->v:Ljava/lang/String;

    iput-object v2, p0, Lcom/waps/AppConnect;->ap:Lcom/waps/g;

    iput-object v2, p0, Lcom/waps/AppConnect;->aq:Lcom/waps/j;

    iput-object v2, p0, Lcom/waps/AppConnect;->ar:Lcom/waps/f;

    iput-object v2, p0, Lcom/waps/AppConnect;->as:Lcom/waps/i;

    iput-object v2, p0, Lcom/waps/AppConnect;->at:Lcom/waps/h;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->w:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->x:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->y:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->z:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/waps/AppConnect;->ax:Z

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->az:Ljava/lang/String;

    iput v3, p0, Lcom/waps/AppConnect;->aB:I

    iput-boolean v4, p0, Lcom/waps/AppConnect;->aC:Z

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->aG:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->aH:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->aI:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->aJ:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/waps/AppConnect;->getParams(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v5, "points"

    const-string v1, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/waps/AppConnect;->F:Lcom/waps/k;

    iput-object v2, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->H:Ljava/util/concurrent/ScheduledExecutorService;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->M:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->N:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->O:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->P:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->Q:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->R:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->S:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->T:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->U:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->V:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->W:Ljava/lang/String;

    const-string v0, "http://app.wapx.cn/action/account/offerlist?"

    iput-object v0, p0, Lcom/waps/AppConnect;->X:Ljava/lang/String;

    const-string v0, "http://app.wapx.cn/action/account/ownslist?"

    iput-object v0, p0, Lcom/waps/AppConnect;->Y:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->Z:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->ab:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->ac:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->ad:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->ae:Ljava/lang/String;

    iput v3, p0, Lcom/waps/AppConnect;->af:I

    iput v3, p0, Lcom/waps/AppConnect;->ag:I

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->ah:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->al:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->am:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->an:Ljava/lang/String;

    const-string v0, "x"

    iput-object v0, p0, Lcom/waps/AppConnect;->a:Ljava/lang/String;

    const-string v0, "y"

    iput-object v0, p0, Lcom/waps/AppConnect;->b:Ljava/lang/String;

    const-string v0, "net"

    iput-object v0, p0, Lcom/waps/AppConnect;->c:Ljava/lang/String;

    const-string v0, "imsi"

    iput-object v0, p0, Lcom/waps/AppConnect;->d:Ljava/lang/String;

    const-string v0, "udid"

    iput-object v0, p0, Lcom/waps/AppConnect;->e:Ljava/lang/String;

    const-string v0, "device_name"

    iput-object v0, p0, Lcom/waps/AppConnect;->f:Ljava/lang/String;

    const-string v0, "device_type"

    iput-object v0, p0, Lcom/waps/AppConnect;->g:Ljava/lang/String;

    const-string v0, "os_version"

    iput-object v0, p0, Lcom/waps/AppConnect;->h:Ljava/lang/String;

    const-string v0, "country_code"

    iput-object v0, p0, Lcom/waps/AppConnect;->i:Ljava/lang/String;

    const-string v0, "language"

    iput-object v0, p0, Lcom/waps/AppConnect;->j:Ljava/lang/String;

    const-string v0, "app_version"

    iput-object v0, p0, Lcom/waps/AppConnect;->k:Ljava/lang/String;

    const-string v0, "sdk_version"

    iput-object v0, p0, Lcom/waps/AppConnect;->l:Ljava/lang/String;

    const-string v0, "act"

    iput-object v0, p0, Lcom/waps/AppConnect;->m:Ljava/lang/String;

    const-string v0, "userid"

    iput-object v0, p0, Lcom/waps/AppConnect;->n:Ljava/lang/String;

    const-string v0, "channel"

    iput-object v0, p0, Lcom/waps/AppConnect;->o:Ljava/lang/String;

    const-string v0, "points"

    iput-object v5, p0, Lcom/waps/AppConnect;->p:Ljava/lang/String;

    const-string v0, "points"

    iput-object v5, p0, Lcom/waps/AppConnect;->q:Ljava/lang/String;

    const-string v0, "install"

    iput-object v0, p0, Lcom/waps/AppConnect;->r:Ljava/lang/String;

    const-string v0, "uninstall"

    iput-object v0, p0, Lcom/waps/AppConnect;->s:Ljava/lang/String;

    const-string v0, "load"

    iput-object v0, p0, Lcom/waps/AppConnect;->t:Ljava/lang/String;

    const-string v0, "device_width"

    iput-object v0, p0, Lcom/waps/AppConnect;->u:Ljava/lang/String;

    const-string v0, "device_height"

    iput-object v0, p0, Lcom/waps/AppConnect;->v:Ljava/lang/String;

    iput-object v2, p0, Lcom/waps/AppConnect;->ap:Lcom/waps/g;

    iput-object v2, p0, Lcom/waps/AppConnect;->aq:Lcom/waps/j;

    iput-object v2, p0, Lcom/waps/AppConnect;->ar:Lcom/waps/f;

    iput-object v2, p0, Lcom/waps/AppConnect;->as:Lcom/waps/i;

    iput-object v2, p0, Lcom/waps/AppConnect;->at:Lcom/waps/h;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->w:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->x:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->y:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->z:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/waps/AppConnect;->ax:Z

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->az:Ljava/lang/String;

    iput v3, p0, Lcom/waps/AppConnect;->aB:I

    iput-boolean v4, p0, Lcom/waps/AppConnect;->aC:Z

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->aG:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->aH:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->aI:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->aJ:Ljava/lang/String;

    iput-object p1, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/waps/AppConnect;->getParams(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&userid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    new-instance v0, Lcom/waps/k;

    invoke-direct {v0, p0, v2}, Lcom/waps/k;-><init>(Lcom/waps/AppConnect;Lcom/waps/d;)V

    iput-object v0, p0, Lcom/waps/AppConnect;->F:Lcom/waps/k;

    iget-object v0, p0, Lcom/waps/AppConnect;->F:Lcom/waps/k;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/waps/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private FinishApplicationRunnable()V
    .locals 3

    iget-object v0, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/waps/q;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/waps/p;

    iget-object v1, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/waps/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/waps/p;->a()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/waps/AppConnect;->E:Z

    :cond_0
    iget-object v0, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/waps/o;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    const-string v1, "Package_Name"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/waps/q;->c:Z

    :cond_1
    return-void
.end method

.method private UpdateDialog(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u65b0\u7248\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6709\u65b0\u7248\u672c("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/waps/AppConnect;->ah:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "),\u662f\u5426\u4e0b\u8f7d?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u4e0b\u8f7d"

    new-instance v2, Lcom/waps/d;

    invoke-direct {v2, p0, p1}, Lcom/waps/d;-><init>(Lcom/waps/AppConnect;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u4e0b\u6b21\u518d\u8bf4"

    new-instance v2, Lcom/waps/e;

    invoke-direct {v2, p0}, Lcom/waps/e;-><init>(Lcom/waps/AppConnect;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/waps/AppConnect;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/waps/AppConnect;->au:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/waps/AppConnect;)V
    .locals 0

    invoke-direct {p0}, Lcom/waps/AppConnect;->loadApps()V

    return-void
.end method

.method static synthetic access$1200(Lcom/waps/AppConnect;)Lcom/waps/h;
    .locals 1

    iget-object v0, p0, Lcom/waps/AppConnect;->at:Lcom/waps/h;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/waps/AppConnect;Lcom/waps/h;)Lcom/waps/h;
    .locals 0

    iput-object p1, p0, Lcom/waps/AppConnect;->at:Lcom/waps/h;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/waps/AppConnect;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/waps/AppConnect;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/waps/AppConnect;->H:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/waps/AppConnect;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/waps/AppConnect;->av:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/waps/AppConnect;->aw:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/waps/AppConnect;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/AppConnect;->R:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/waps/AppConnect;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/AppConnect;->ab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/waps/AppConnect;[B)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/waps/AppConnect;->toMD5([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/waps/AppConnect;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/waps/AppConnect;->handleGetPointsResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200()Lcom/waps/UpdatePointsNotifier;
    .locals 1

    sget-object v0, Lcom/waps/AppConnect;->ao:Lcom/waps/UpdatePointsNotifier;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/waps/AppConnect;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/AppConnect;->V:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/waps/AppConnect;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/waps/AppConnect;->handleSpendPointsResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/waps/AppConnect;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/AppConnect;->W:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/waps/AppConnect;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/waps/AppConnect;->handleAwardPointsResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/waps/AppConnect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/waps/AppConnect;->sendNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/waps/AppConnect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/waps/AppConnect;->getPushAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900()Z
    .locals 1

    sget-boolean v0, Lcom/waps/AppConnect;->aE:Z

    return v0
.end method

.method static synthetic access$300()Lcom/waps/r;
    .locals 1

    sget-object v0, Lcom/waps/AppConnect;->J:Lcom/waps/r;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/waps/AppConnect;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/waps/AppConnect;->buildResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/waps/AppConnect;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/AppConnect;->Z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/waps/AppConnect;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/waps/AppConnect;->handleConnectResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/waps/AppConnect;->ai:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    sput-boolean p0, Lcom/waps/AppConnect;->ai:Z

    return p0
.end method

.method static synthetic access$600(Lcom/waps/AppConnect;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/AppConnect;->ah:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/waps/AppConnect;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/AppConnect;->S:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/waps/AppConnect;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/waps/AppConnect;->UpdateDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900()Z
    .locals 1

    sget-boolean v0, Lcom/waps/AppConnect;->aj:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0

    sput-boolean p0, Lcom/waps/AppConnect;->aj:Z

    return p0
.end method

.method private awardPointsHelper()V
    .locals 2

    new-instance v0, Lcom/waps/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/waps/f;-><init>(Lcom/waps/AppConnect;Lcom/waps/d;)V

    iput-object v0, p0, Lcom/waps/AppConnect;->ar:Lcom/waps/f;

    iget-object v0, p0, Lcom/waps/AppConnect;->ar:Lcom/waps/f;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/waps/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private buildResponse(Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "Title"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/waps/AppConnect;->aH:Ljava/lang/String;

    const-string v1, "Content"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/waps/AppConnect;->aI:Ljava/lang/String;

    const-string v1, "ClickUrl"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/waps/AppConnect;->aJ:Ljava/lang/String;

    const-string v1, "Image"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/waps/AppConnect;->decodeBase64([BII)V

    iget-object v0, p0, Lcom/waps/AppConnect;->aM:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/waps/AppConnect;->aN:I

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->aK:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    const-string v1, "Push_Settings"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "push_icon"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "push_sound"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    new-instance v0, Lcom/waps/p;

    iget-object v3, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/waps/p;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/waps/AppConnect;->aK:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/waps/AppConnect;->aH:Ljava/lang/String;

    iget-object v5, p0, Lcom/waps/AppConnect;->aI:Ljava/lang/String;

    iget-object v6, p0, Lcom/waps/AppConnect;->aJ:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/waps/p;->a(IZLandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v7

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getAlreadyInstalledPackages(Landroid/content/Context;)V
    .locals 5

    const/4 v2, 0x0

    const-string v0, ""

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    move v4, v2

    move-object v2, v0

    move v0, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "Package_Name"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Package_Names"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/waps/AppConnect;
    .locals 5

    const-string v4, "push_flag"

    const-string v3, ""

    const-string v0, "PushFlag"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "push_flag"

    const-string v2, ""

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "push_flag"

    const-string v0, "true"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lcom/waps/AppConnect;->J:Lcom/waps/r;

    if-nez v0, :cond_2

    new-instance v0, Lcom/waps/r;

    invoke-direct {v0}, Lcom/waps/r;-><init>()V

    sput-object v0, Lcom/waps/AppConnect;->J:Lcom/waps/r;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3gwap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/waps/AppConnect;->J:Lcom/waps/r;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waps/r;->a(Z)V

    :cond_2
    sget-object v0, Lcom/waps/AppConnect;->I:Lcom/waps/AppConnect;

    if-nez v0, :cond_3

    new-instance v0, Lcom/waps/AppConnect;

    invoke-direct {v0, p0}, Lcom/waps/AppConnect;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/waps/AppConnect;->I:Lcom/waps/AppConnect;

    :cond_3
    sget-object v0, Lcom/waps/AppConnect;->K:Lcom/waps/DisplayAd;

    if-nez v0, :cond_4

    new-instance v0, Lcom/waps/DisplayAd;

    invoke-direct {v0, p0}, Lcom/waps/DisplayAd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/waps/AppConnect;->K:Lcom/waps/DisplayAd;

    :cond_4
    sget-object v0, Lcom/waps/AppConnect;->I:Lcom/waps/AppConnect;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/waps/AppConnect;
    .locals 3

    sget-object v0, Lcom/waps/AppConnect;->J:Lcom/waps/r;

    if-nez v0, :cond_1

    new-instance v0, Lcom/waps/r;

    invoke-direct {v0}, Lcom/waps/r;-><init>()V

    sput-object v0, Lcom/waps/AppConnect;->J:Lcom/waps/r;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3gwap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/waps/AppConnect;->J:Lcom/waps/r;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waps/r;->a(Z)V

    :cond_1
    sget-object v0, Lcom/waps/AppConnect;->I:Lcom/waps/AppConnect;

    if-nez v0, :cond_2

    new-instance v0, Lcom/waps/AppConnect;

    invoke-direct {v0, p0, p1}, Lcom/waps/AppConnect;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/waps/AppConnect;->I:Lcom/waps/AppConnect;

    :cond_2
    sget-object v0, Lcom/waps/AppConnect;->K:Lcom/waps/DisplayAd;

    if-nez v0, :cond_3

    new-instance v0, Lcom/waps/DisplayAd;

    invoke-direct {v0, p0}, Lcom/waps/DisplayAd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/waps/AppConnect;->K:Lcom/waps/DisplayAd;

    :cond_3
    sget-object v0, Lcom/waps/AppConnect;->I:Lcom/waps/AppConnect;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/waps/AppConnect;
    .locals 3

    sget-object v0, Lcom/waps/AppConnect;->J:Lcom/waps/r;

    if-nez v0, :cond_1

    new-instance v0, Lcom/waps/r;

    invoke-direct {v0}, Lcom/waps/r;-><init>()V

    sput-object v0, Lcom/waps/AppConnect;->J:Lcom/waps/r;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3gwap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/waps/AppConnect;->J:Lcom/waps/r;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waps/r;->a(Z)V

    :cond_1
    sget-object v0, Lcom/waps/AppConnect;->I:Lcom/waps/AppConnect;

    if-nez v0, :cond_2

    new-instance v0, Lcom/waps/AppConnect;

    invoke-direct {v0, p0, p1}, Lcom/waps/AppConnect;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/waps/AppConnect;->I:Lcom/waps/AppConnect;

    :cond_2
    sget-object v0, Lcom/waps/AppConnect;->K:Lcom/waps/DisplayAd;

    if-nez v0, :cond_3

    new-instance v0, Lcom/waps/DisplayAd;

    invoke-direct {v0, p0}, Lcom/waps/DisplayAd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/waps/AppConnect;->K:Lcom/waps/DisplayAd;

    :cond_3
    sget-object v0, Lcom/waps/AppConnect;->I:Lcom/waps/AppConnect;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/waps/AppConnect;
    .locals 3

    const/4 v2, 0x0

    sput-object p0, Lcom/waps/AppConnect;->aD:Ljava/lang/String;

    sget-boolean v0, Lcom/waps/AppConnect;->aA:Z

    if-eqz v0, :cond_1

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    sput-object v0, Lcom/waps/AppConnect;->A:Landroid/content/ComponentName;

    :cond_0
    sput-boolean v2, Lcom/waps/AppConnect;->aA:Z

    :cond_1
    sget-object v0, Lcom/waps/AppConnect;->J:Lcom/waps/r;

    if-nez v0, :cond_3

    new-instance v0, Lcom/waps/r;

    invoke-direct {v0}, Lcom/waps/r;-><init>()V

    sput-object v0, Lcom/waps/AppConnect;->J:Lcom/waps/r;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3gwap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/waps/AppConnect;->J:Lcom/waps/r;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waps/r;->a(Z)V

    :cond_3
    sget-object v0, Lcom/waps/AppConnect;->I:Lcom/waps/AppConnect;

    if-nez v0, :cond_4

    new-instance v0, Lcom/waps/AppConnect;

    invoke-direct {v0, p1}, Lcom/waps/AppConnect;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/waps/AppConnect;->I:Lcom/waps/AppConnect;

    :cond_4
    sget-object v0, Lcom/waps/AppConnect;->K:Lcom/waps/DisplayAd;

    if-nez v0, :cond_5

    new-instance v0, Lcom/waps/DisplayAd;

    invoke-direct {v0, p1}, Lcom/waps/DisplayAd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/waps/AppConnect;->K:Lcom/waps/DisplayAd;

    :cond_5
    sget-object v0, Lcom/waps/AppConnect;->I:Lcom/waps/AppConnect;

    return-object v0
.end method

.method public static getInstanceNoConnect(Landroid/content/Context;)Lcom/waps/AppConnect;
    .locals 3

    sget-object v0, Lcom/waps/AppConnect;->J:Lcom/waps/r;

    if-nez v0, :cond_1

    new-instance v0, Lcom/waps/r;

    invoke-direct {v0}, Lcom/waps/r;-><init>()V

    sput-object v0, Lcom/waps/AppConnect;->J:Lcom/waps/r;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3gwap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/waps/AppConnect;->J:Lcom/waps/r;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waps/r;->a(Z)V

    :cond_1
    sget-object v0, Lcom/waps/AppConnect;->I:Lcom/waps/AppConnect;

    if-nez v0, :cond_2

    new-instance v0, Lcom/waps/AppConnect;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/waps/AppConnect;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/waps/AppConnect;->I:Lcom/waps/AppConnect;

    :cond_2
    sget-object v0, Lcom/waps/AppConnect;->K:Lcom/waps/DisplayAd;

    if-nez v0, :cond_3

    new-instance v0, Lcom/waps/DisplayAd;

    invoke-direct {v0, p0}, Lcom/waps/DisplayAd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/waps/AppConnect;->K:Lcom/waps/DisplayAd;

    :cond_3
    sget-object v0, Lcom/waps/AppConnect;->I:Lcom/waps/AppConnect;

    return-object v0
.end method

.method private getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;
    .locals 8

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v7, ""

    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    const-string v0, ""

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    move-object v3, v7

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    const-string v0, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    move-object v0, v6

    goto :goto_1

    :cond_3
    move-object v0, v6

    goto :goto_1
.end method

.method private getPointsHelper()V
    .locals 2

    new-instance v0, Lcom/waps/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/waps/g;-><init>(Lcom/waps/AppConnect;Lcom/waps/d;)V

    iput-object v0, p0, Lcom/waps/AppConnect;->ap:Lcom/waps/g;

    iget-object v0, p0, Lcom/waps/AppConnect;->ap:Lcom/waps/g;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/waps/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private getPushAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "http://app.wapx.cn/action/"

    invoke-direct {p0, v0, p2, p3}, Lcom/waps/AppConnect;->getPushAdDateFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getPushAdDateFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/waps/n;

    invoke-direct {v1, p0, v0, p3}, Lcom/waps/n;-><init>(Lcom/waps/AppConnect;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/waps/AppConnect;->D:Lcom/waps/n;

    iget-object v0, p0, Lcom/waps/AppConnect;->D:Lcom/waps/n;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/waps/n;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private handleAwardPointsResponse(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    const-string v0, ""

    invoke-direct {p0, p1}, Lcom/waps/AppConnect;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Success"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "Points"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CurrencyName"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    sget-object v2, Lcom/waps/AppConnect;->ao:Lcom/waps/UpdatePointsNotifier;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v0, v1}, Lcom/waps/UpdatePointsNotifier;->getUpdatePoints(Ljava/lang/String;I)V

    move v0, v3

    :goto_0
    return v0

    :cond_0
    if-eqz v1, :cond_1

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Message"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/waps/AppConnect;->ao:Lcom/waps/UpdatePointsNotifier;

    invoke-interface {v1, v0}, Lcom/waps/UpdatePointsNotifier;->getUpdatePointsFailed(Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleConnectResponse(Ljava/lang/String;)Z
    .locals 15

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/waps/AppConnect;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v1, "Version"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string v1, "Success"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Version"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Clear"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, "Notify"

    invoke-interface {v0, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    if-eqz v8, :cond_c

    const-string v8, "Notify"

    invoke-interface {v0, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-lez v8, :cond_c

    const-string v4, "Id"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "title"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "content"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "url"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v7

    move-object v13, v7

    move-object v7, v4

    move-object v4, v13

    move-object v14, v5

    move-object v5, v6

    move-object v6, v14

    :goto_0
    const-string v8, "AppList"

    invoke-interface {v0, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const-string v10, ""

    const-string v11, "Push"

    invoke-interface {v0, v11}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    if-eqz v11, :cond_9

    const-string v11, "Push"

    invoke-interface {v0, v11}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_9

    const-string v9, "Wait"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Loop"

    invoke-interface {v0, v10}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    sput-boolean v11, Lcom/waps/AppConnect;->aE:Z

    move-object v13, v10

    move-object v10, v9

    move-object v9, v13

    :goto_1
    const-string v11, "AD"

    invoke-interface {v0, v11}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->aG:Ljava/lang/String;

    iget-object v0, p0, Lcom/waps/AppConnect;->aG:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v0, ""

    iget-object v11, p0, Lcom/waps/AppConnect;->aG:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/waps/AppConnect;->aG:Ljava/lang/String;

    const-string v11, "0"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    sput-boolean v0, Lcom/waps/AppConnect;->aF:Z

    :goto_2
    iget-object v0, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    const-string v11, "ShowAdFlag"

    const/4 v12, 0x3

    invoke-virtual {v0, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v11, "show_ad_flag"

    sget-boolean v12, Lcom/waps/AppConnect;->aF:Z

    invoke-interface {v0, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz v1, :cond_b

    const-string v0, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/waps/AppConnect;->ah:Ljava/lang/String;

    :cond_0
    if-eqz v3, :cond_1

    const-string v0, ""

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/waps/AppConnect;->aj:Z

    :cond_1
    if-eqz v7, :cond_2

    const-string v0, ""

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object v7, p0, Lcom/waps/AppConnect;->w:Ljava/lang/String;

    :cond_2
    if-eqz v6, :cond_3

    const-string v0, ""

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object v6, p0, Lcom/waps/AppConnect;->x:Ljava/lang/String;

    :cond_3
    if-eqz v5, :cond_4

    const-string v0, ""

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iput-object v5, p0, Lcom/waps/AppConnect;->y:Ljava/lang/String;

    :cond_4
    if-eqz v4, :cond_5

    const-string v0, ""

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iput-object v4, p0, Lcom/waps/AppConnect;->z:Ljava/lang/String;

    :cond_5
    if-eqz v8, :cond_6

    const-string v0, ""

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    const-string v1, "Finalize_Flag"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "appList"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_6
    if-eqz v10, :cond_7

    const-string v0, ""

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sput-object v10, Lcom/waps/AppConnect;->B:Ljava/lang/String;

    :cond_7
    if-eqz v9, :cond_8

    const-string v0, ""

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sput-object v9, Lcom/waps/AppConnect;->C:Ljava/lang/String;

    :cond_8
    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_9
    const/4 v11, 0x0

    sput-boolean v11, Lcom/waps/AppConnect;->aE:Z

    move-object v13, v10

    move-object v10, v9

    move-object v9, v13

    goto/16 :goto_1

    :cond_a
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waps/AppConnect;->aF:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_3

    :cond_c
    move-object v13, v7

    move-object v7, v4

    move-object v4, v13

    move-object v14, v5

    move-object v5, v6

    move-object v6, v14

    goto/16 :goto_0
.end method

.method private handleGetPointsResponse(Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x0

    const-string v4, "Points"

    invoke-direct {p0, p1}, Lcom/waps/AppConnect;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Success"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    const-string v2, "Points"

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    const-string v1, "Points"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CurrencyName"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/waps/AppConnect;->ao:Lcom/waps/UpdatePointsNotifier;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v0, v1}, Lcom/waps/UpdatePointsNotifier;->getUpdatePoints(Ljava/lang/String;I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method private handleSpendPointsResponse(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    const-string v0, ""

    invoke-direct {p0, p1}, Lcom/waps/AppConnect;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Success"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "Points"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CurrencyName"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    sget-object v2, Lcom/waps/AppConnect;->ao:Lcom/waps/UpdatePointsNotifier;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v0, v1}, Lcom/waps/UpdatePointsNotifier;->getUpdatePoints(Ljava/lang/String;I)V

    move v0, v3

    :goto_0
    return v0

    :cond_0
    if-eqz v1, :cond_1

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Message"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/waps/AppConnect;->ao:Lcom/waps/UpdatePointsNotifier;

    invoke-interface {v1, v0}, Lcom/waps/UpdatePointsNotifier;->getUpdatePointsFailed(Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadApps()V
    .locals 12

    const/4 v6, 0x0

    const/4 v10, 0x0

    const-string v4, ""

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, ""

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Android/Package.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v3, ""

    if-eqz v2, :cond_6

    move-object v3, v4

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v11, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v11

    :goto_1
    :try_start_3
    iget-object v4, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    move v5, v6

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageInfo;

    iget-object v7, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    iget-object v8, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    and-int/lit8 v7, v7, 0x1

    if-gtz v7, :cond_3

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v8, "com."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/waps/AppConnect;->au:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/waps/AppConnect;->au:Ljava/lang/String;

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/waps/AppConnect;->au:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v3, :cond_5

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object v0, v4

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v10

    move-object v2, v10

    move-object v3, v10

    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v10

    move-object v2, v10

    move-object v3, v10

    :goto_6
    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :goto_7
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catchall_1
    move-exception v1

    move-object v2, v10

    move-object v3, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v10

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v2, v10

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v3, v2

    move-object v2, v4

    goto :goto_6

    :catchall_5
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v1

    move-object v2, v10

    move-object v3, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_5

    :catch_5
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v10

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v3, v2

    move-object v2, v10

    goto :goto_5

    :catch_7
    move-exception v0

    move-object v3, v2

    move-object v2, v4

    goto :goto_5

    :cond_5
    move-object v0, v10

    goto :goto_3

    :cond_6
    move-object v3, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v4

    goto/16 :goto_1

    :cond_7
    move-object v0, v4

    move-object v1, v10

    move-object v2, v10

    move-object v3, v10

    goto/16 :goto_1
.end method

.method private notifyReceiverHelper()V
    .locals 2

    new-instance v0, Lcom/waps/i;

    iget-object v1, p0, Lcom/waps/AppConnect;->ad:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/waps/i;-><init>(Lcom/waps/AppConnect;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/waps/AppConnect;->as:Lcom/waps/i;

    iget-object v0, p0, Lcom/waps/AppConnect;->as:Lcom/waps/i;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/waps/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private packageReceiverHelper()V
    .locals 2

    new-instance v0, Lcom/waps/i;

    iget-object v1, p0, Lcom/waps/AppConnect;->ac:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/waps/i;-><init>(Lcom/waps/AppConnect;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/waps/AppConnect;->as:Lcom/waps/i;

    iget-object v0, p0, Lcom/waps/AppConnect;->as:Lcom/waps/i;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/waps/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private sendNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Lcom/waps/p;

    iget-object v1, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/waps/p;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/waps/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private spendPointsHelper()V
    .locals 2

    new-instance v0, Lcom/waps/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/waps/j;-><init>(Lcom/waps/AppConnect;Lcom/waps/d;)V

    iput-object v0, p0, Lcom/waps/AppConnect;->aq:Lcom/waps/j;

    iget-object v0, p0, Lcom/waps/AppConnect;->aq:Lcom/waps/j;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/waps/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private toHexString([BLjava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toMD5([B)Ljava/lang/String;
    .locals 3

    const-string v2, ""

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/waps/AppConnect;->toHexString([BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public awardPoints(ILcom/waps/UpdatePointsNotifier;)V
    .locals 2

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->W:Ljava/lang/String;

    sget-object v0, Lcom/waps/AppConnect;->I:Lcom/waps/AppConnect;

    if-eqz v0, :cond_0

    sput-object p2, Lcom/waps/AppConnect;->ao:Lcom/waps/UpdatePointsNotifier;

    sget-object v0, Lcom/waps/AppConnect;->I:Lcom/waps/AppConnect;

    invoke-direct {v0}, Lcom/waps/AppConnect;->awardPointsHelper()V

    goto :goto_0
.end method

.method decodeBase64([BII)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/waps/AppConnect;->aM:[B

    iput v1, p0, Lcom/waps/AppConnect;->aN:I

    iput-boolean v1, p0, Lcom/waps/AppConnect;->aP:Z

    iput v1, p0, Lcom/waps/AppConnect;->aO:I

    if-gez p3, :cond_0

    iput-boolean v5, p0, Lcom/waps/AppConnect;->aP:Z

    :cond_0
    move v0, v1

    move v1, p2

    :goto_0
    if-ge v0, p3, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    const/16 v3, 0x3d

    if-ne v1, v3, :cond_3

    iput-boolean v5, p0, Lcom/waps/AppConnect;->aP:Z

    :cond_1
    iget-boolean v0, p0, Lcom/waps/AppConnect;->aP:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/waps/AppConnect;->aO:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/waps/AppConnect;->aQ:I

    shl-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/waps/AppConnect;->aQ:I

    iget v0, p0, Lcom/waps/AppConnect;->aO:I

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    if-ltz v1, :cond_4

    sget-object v3, Lcom/waps/AppConnect;->aL:[B

    array-length v3, v3

    if-ge v1, v3, :cond_4

    sget-object v3, Lcom/waps/AppConnect;->aL:[B

    aget-byte v1, v3, v1

    if-ltz v1, :cond_4

    iget v3, p0, Lcom/waps/AppConnect;->aO:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/waps/AppConnect;->aO:I

    rem-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/waps/AppConnect;->aO:I

    iget v3, p0, Lcom/waps/AppConnect;->aQ:I

    shl-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    iput v1, p0, Lcom/waps/AppConnect;->aQ:I

    iget v1, p0, Lcom/waps/AppConnect;->aO:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/waps/AppConnect;->aM:[B

    iget v3, p0, Lcom/waps/AppConnect;->aN:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/waps/AppConnect;->aN:I

    iget v4, p0, Lcom/waps/AppConnect;->aQ:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iget-object v1, p0, Lcom/waps/AppConnect;->aM:[B

    iget v3, p0, Lcom/waps/AppConnect;->aN:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/waps/AppConnect;->aN:I

    iget v4, p0, Lcom/waps/AppConnect;->aQ:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iget-object v1, p0, Lcom/waps/AppConnect;->aM:[B

    iget v3, p0, Lcom/waps/AppConnect;->aN:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/waps/AppConnect;->aN:I

    iget v4, p0, Lcom/waps/AppConnect;->aQ:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/waps/AppConnect;->aQ:I

    shl-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/waps/AppConnect;->aQ:I

    iget-object v0, p0, Lcom/waps/AppConnect;->aM:[B

    iget v1, p0, Lcom/waps/AppConnect;->aN:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/waps/AppConnect;->aN:I

    iget v2, p0, Lcom/waps/AppConnect;->aQ:I

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/waps/AppConnect;->aM:[B

    iget v1, p0, Lcom/waps/AppConnect;->aN:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/waps/AppConnect;->aN:I

    iget v2, p0, Lcom/waps/AppConnect;->aQ:I

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/waps/AppConnect;->aM:[B

    iget v1, p0, Lcom/waps/AppConnect;->aN:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/waps/AppConnect;->aN:I

    iget v2, p0, Lcom/waps/AppConnect;->aQ:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public finalize()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/waps/AppConnect;->I:Lcom/waps/AppConnect;

    iget-object v0, p0, Lcom/waps/AppConnect;->H:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/waps/l;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/waps/l;-><init>(Lcom/waps/AppConnect;Lcom/waps/d;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    iget-object v0, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/waps/AppConnect;->ax:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    const-string v1, "PushFlag"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waps/AppConnect;->ax:Z

    iget-object v0, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    const-string v1, "Start_Tag"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getDisplayAd(Lcom/waps/DisplayAdNotifier;)V
    .locals 3

    iget-object v0, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    sget-object v1, Lcom/waps/AppConnect;->K:Lcom/waps/DisplayAd;

    const-string v2, "http://ads.wapx.cn/action/"

    invoke-virtual {v1, v2, v0, p1}, Lcom/waps/DisplayAd;->getDisplayAdDataFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/waps/DisplayAdNotifier;)V

    return-void
.end method

.method public getParams(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v2, "&"

    iput-object p1, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/waps/AppConnect;->initMetaData()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/AppConnect;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "udid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "imsi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/AppConnect;->al:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "net="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/AppConnect;->am:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "app_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/AppConnect;->S:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sdk_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/AppConnect;->T:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "device_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/AppConnect;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/AppConnect;->an:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "device_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/AppConnect;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "os_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/AppConnect;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "country_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/AppConnect;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/AppConnect;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "act="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    iget-object v0, p0, Lcom/waps/AppConnect;->U:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/waps/AppConnect;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/AppConnect;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    :cond_0
    iget v0, p0, Lcom/waps/AppConnect;->af:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/waps/AppConnect;->ag:I

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "device_width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/waps/AppConnect;->af:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "device_height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/waps/AppConnect;->ag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    const-string v1, " "

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPoints(Lcom/waps/UpdatePointsNotifier;)V
    .locals 1

    sget-object v0, Lcom/waps/AppConnect;->I:Lcom/waps/AppConnect;

    if-eqz v0, :cond_0

    sput-object p1, Lcom/waps/AppConnect;->ao:Lcom/waps/UpdatePointsNotifier;

    sget-object v0, Lcom/waps/AppConnect;->I:Lcom/waps/AppConnect;

    invoke-direct {v0}, Lcom/waps/AppConnect;->getPointsHelper()V

    :cond_0
    return-void
.end method

.method public getPushAd()V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/waps/AppConnect;->aE:Z

    const-string v0, ""

    const-string v1, "push/api_ad?"

    iget-object v2, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/waps/AppConnect;->getPushAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected getWapsId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/waps/AppConnect;->aD:Ljava/lang/String;

    return-object v0
.end method

.method public initMetaData()V
    .locals 8

    const/4 v6, 0x0

    const-string v0, "APP_ID"

    const-string v0, "WAPS_SDK"

    const-string v0, ""

    iget-object v0, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_6

    const-string v2, ""

    invoke-virtual {p0}, Lcom/waps/AppConnect;->getWapsId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v2, ""

    invoke-virtual {p0}, Lcom/waps/AppConnect;->getWapsId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/waps/AppConnect;->getWapsId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/waps/AppConnect;->R:Ljava/lang/String;

    const-string v2, "WAPS_SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WapsId is setted by code,the value is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/waps/AppConnect;->R:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "WAPS_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "APP_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/waps/AppConnect;->R:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v2, "WAPS_SDK"

    const-string v3, "WapsId is setted by code is not equals the value be setted by manifest! Please chick it!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/waps/AppConnect;->Z:Ljava/lang/String;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "CLIENT_PACKAGE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iput-object v2, p0, Lcom/waps/AppConnect;->Z:Ljava/lang/String;

    :cond_3
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "WAPS_PID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iput-object v2, p0, Lcom/waps/AppConnect;->U:Ljava/lang/String;

    :cond_4
    iget-object v2, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/waps/AppConnect;->S:Ljava/lang/String;

    const-string v0, "android"

    iput-object v0, p0, Lcom/waps/AppConnect;->N:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/waps/AppConnect;->M:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/waps/AppConnect;->O:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->P:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->Q:Ljava/lang/String;

    iget-object v0, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->al:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    iget-object v2, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mobile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->am:Ljava/lang/String;

    :goto_1
    const-string v0, "WAPS_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The net is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/waps/AppConnect;->am:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    const-string v0, "1.5.1"

    iput-object v0, p0, Lcom/waps/AppConnect;->T:Ljava/lang/String;

    iget-object v0, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    const-string v2, "appPrefrences"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "DEVICE_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    iput-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    :cond_5
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kingxiaoguang@gmail.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/AppConnect;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/waps/AppConnect;->toMD5([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->an:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/waps/AppConnect;->af:I

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/waps/AppConnect;->ag:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    const-string v0, "PrimaryColor"

    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/waps/AppConnect;->ay:I

    const-string v0, "InstallReferral"

    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iput-object v0, p0, Lcom/waps/AppConnect;->ab:Ljava/lang/String;

    :cond_6
    :goto_5
    return-void

    :cond_7
    const-string v3, "WAPS_SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The WapsId in manifest is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_8
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "WAPS_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "APP_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_a
    if-eqz v2, :cond_b

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/waps/AppConnect;->R:Ljava/lang/String;

    const-string v2, "WAPS_SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WapsId is setted by manifest, the value is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/waps/AppConnect;->R:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const-string v0, "WAPS_SDK"

    const-string v1, "WapsId is not setted\uff01 Please check it!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :cond_c
    :try_start_5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->am:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_d
    iget-object v0, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    iget-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    const-string v0, "0"

    iput-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_f
    :try_start_7
    iget-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    iget-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "EMULATOR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "emulatorDeviceId"

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    iput-object v1, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    goto/16 :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_3

    :cond_10
    const-string v1, "1234567890abcdefghijklmnopqrstuvw"

    move v3, v6

    :goto_6
    const/16 v4, 0x20

    if-ge v3, v4, :cond_11

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    rem-int/lit8 v4, v4, 0x1e

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "emulatorDeviceId"

    iget-object v3, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_3

    :cond_12
    const/4 v0, 0x0

    :try_start_8
    iput-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_3

    :catch_3
    move-exception v0

    goto/16 :goto_4
.end method

.method public notify_receiver(Ljava/lang/String;I)V
    .locals 2

    const-string v1, "nyid"

    packed-switch p2, :pswitch_data_0

    :goto_0
    iput-object p1, p0, Lcom/waps/AppConnect;->ad:Ljava/lang/String;

    sget-object v0, Lcom/waps/AppConnect;->I:Lcom/waps/AppConnect;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/waps/AppConnect;->I:Lcom/waps/AppConnect;

    invoke-direct {v0}, Lcom/waps/AppConnect;->notifyReceiverHelper()V

    :cond_0
    return-void

    :pswitch_0
    const-string v0, "notify/show?"

    sput-object v0, Lcom/waps/AppConnect;->av:Ljava/lang/String;

    const-string v0, "nyid"

    sput-object v1, Lcom/waps/AppConnect;->aw:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string v0, "notify/click?"

    sput-object v0, Lcom/waps/AppConnect;->av:Ljava/lang/String;

    const-string v0, "nyid"

    sput-object v1, Lcom/waps/AppConnect;->aw:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public package_receiver(Ljava/lang/String;I)V
    .locals 4

    const-string v3, "receiver/install?"

    const-string v2, "load"

    const-string v1, "install"

    packed-switch p2, :pswitch_data_0

    const-string v0, "receiver/install?"

    sput-object v3, Lcom/waps/AppConnect;->av:Ljava/lang/String;

    const-string v0, "install"

    sput-object v1, Lcom/waps/AppConnect;->aw:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/waps/AppConnect;->ac:Ljava/lang/String;

    sget-object v0, Lcom/waps/AppConnect;->I:Lcom/waps/AppConnect;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/waps/AppConnect;->I:Lcom/waps/AppConnect;

    invoke-direct {v0}, Lcom/waps/AppConnect;->packageReceiverHelper()V

    :cond_0
    return-void

    :pswitch_0
    const-string v0, "receiver/install?"

    sput-object v3, Lcom/waps/AppConnect;->av:Ljava/lang/String;

    const-string v0, "install"

    sput-object v1, Lcom/waps/AppConnect;->aw:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string v0, "receiver/load_offer?"

    sput-object v0, Lcom/waps/AppConnect;->av:Ljava/lang/String;

    const-string v0, "load"

    sput-object v2, Lcom/waps/AppConnect;->aw:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string v0, "receiver/load_ad?"

    sput-object v0, Lcom/waps/AppConnect;->av:Ljava/lang/String;

    const-string v0, "load"

    sput-object v2, Lcom/waps/AppConnect;->aw:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const-string v0, "receiver/uninstall?"

    sput-object v0, Lcom/waps/AppConnect;->av:Ljava/lang/String;

    const-string v0, "uninstall"

    sput-object v0, Lcom/waps/AppConnect;->av:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setPushAudio(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/waps/AppConnect;->aC:Z

    iget-object v0, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    const-string v1, "Push_Settings"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "push_sound"

    iget-boolean v2, p0, Lcom/waps/AppConnect;->aC:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setPushIcon(I)V
    .locals 3

    iput p1, p0, Lcom/waps/AppConnect;->aB:I

    iget-object v0, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    const-string v1, "Push_Settings"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "push_icon"

    iget v2, p0, Lcom/waps/AppConnect;->aB:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public showFeedback()V
    .locals 2

    invoke-virtual {p0}, Lcom/waps/AppConnect;->showFeedback_forTab()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showFeedback_forTab()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->G:Landroid/content/Context;

    const-class v2, Lcom/waps/OffersWebView;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "UrlPath"

    const-string v2, "http://app.wapx.cn/action/feedback/form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ACTIVITY_FLAG"

    const-string v2, "feedback"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "URL_PARAMS"

    iget-object v2, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "offers_webview_tag"

    const-string v2, "OffersWebView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public showMore(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/waps/AppConnect;->showMore(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public showMore(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waps/OffersWebView;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Offers_URL"

    iget-object v2, p0, Lcom/waps/AppConnect;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "USER_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "URL_PARAMS"

    iget-object v2, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CLIENT_PACKAGE"

    iget-object v2, p0, Lcom/waps/AppConnect;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "offers_webview_tag"

    const-string v2, "OffersWebView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showMore_forTab(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/waps/AppConnect;->showMore_forTab(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public showMore_forTab(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waps/OffersWebView;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Offers_URL"

    iget-object v2, p0, Lcom/waps/AppConnect;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "USER_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "URL_PARAMS"

    iget-object v2, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CLIENT_PACKAGE"

    iget-object v2, p0, Lcom/waps/AppConnect;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "offers_webview_tag"

    const-string v2, "OffersWebView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public showOffers(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/waps/AppConnect;->showOffers(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public showOffers(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waps/OffersWebView;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Offers_URL"

    iget-object v2, p0, Lcom/waps/AppConnect;->X:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "USER_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "URL_PARAMS"

    iget-object v2, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CLIENT_PACKAGE"

    iget-object v2, p0, Lcom/waps/AppConnect;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "offers_webview_tag"

    const-string v2, "OffersWebView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showOffers_forTab(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/waps/AppConnect;->showOffers_forTab(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public showOffers_forTab(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waps/OffersWebView;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Offers_URL"

    iget-object v2, p0, Lcom/waps/AppConnect;->X:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "USER_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "URL_PARAMS"

    iget-object v2, p0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CLIENT_PACKAGE"

    iget-object v2, p0, Lcom/waps/AppConnect;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "offers_webview_tag"

    const-string v2, "OffersWebView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public spendPoints(ILcom/waps/UpdatePointsNotifier;)V
    .locals 2

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->V:Ljava/lang/String;

    sget-object v0, Lcom/waps/AppConnect;->I:Lcom/waps/AppConnect;

    if-eqz v0, :cond_0

    sput-object p2, Lcom/waps/AppConnect;->ao:Lcom/waps/UpdatePointsNotifier;

    sget-object v0, Lcom/waps/AppConnect;->I:Lcom/waps/AppConnect;

    invoke-direct {v0}, Lcom/waps/AppConnect;->spendPointsHelper()V

    goto :goto_0
.end method
