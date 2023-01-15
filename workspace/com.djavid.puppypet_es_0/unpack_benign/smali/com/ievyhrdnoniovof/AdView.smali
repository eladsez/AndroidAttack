.class public Lcom/ievyhrdnoniovof/AdView;
.super Landroid/webkit/WebView;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ievyhrdnoniovof/AdView$9;,
        Lcom/ievyhrdnoniovof/AdView$ScrollEater;,
        Lcom/ievyhrdnoniovof/AdView$NewLocationReciever;,
        Lcom/ievyhrdnoniovof/AdView$AdChromeClient;,
        Lcom/ievyhrdnoniovof/AdView$LoadAsync;,
        Lcom/ievyhrdnoniovof/AdView$LoadInputStream;,
        Lcom/ievyhrdnoniovof/AdView$TimeOut;,
        Lcom/ievyhrdnoniovof/AdView$AdViewListener;,
        Lcom/ievyhrdnoniovof/AdView$ACTION;,
        Lcom/ievyhrdnoniovof/AdView$ViewState;
    }
.end annotation


# static fields
.field private static final synthetic A:Ljava/lang/String; = "AD_PATH"

.field private static synthetic C:[I = null

.field public static final D:Ljava/lang/String; = "action"

.field private static synthetic E:Ljava/lang/String; = null

.field private static final synthetic F:I = 0x3eb

.field private static final synthetic G:I = 0x3ec

.field public static final H:Ljava/lang/String; = "player_properties"

.field private static final synthetic I:Ljava/lang/String; = "expand_properties"

.field private static final synthetic J:I = 0x3ef

.field private static final synthetic K:I = 0x3e8

.field private static final synthetic M:Ljava/lang/String; = "action"

.field public static final P:I = 0x66

.field protected static final Q:I = 0x64

.field private static final synthetic S:I = 0x3ed

.field private static final synthetic T:Ljava/lang/String; = "_ormma_current"

.field private static final synthetic U:Ljava/lang/String; = "message"

.field protected static final V:I = 0x65

.field private static final synthetic X:I = 0x3f0

.field private static final synthetic Y:I = 0x3ea

.field private static final synthetic Z:I = 0x3ee

.field private static final synthetic a:Ljava/lang/String; = "resize_height"

.field private static synthetic c:Ljava/lang/String; = null

.field public static final cA:Ljava/lang/String; = "expand_url"

.field public static final d:Ljava/lang/String; = "expand_dimensions"

.field private static final synthetic fA:I = 0x3e9

.field private static final synthetic h:I = 0x3f1

.field private static final synthetic j:Ljava/lang/String; = "resize_width"

.field private static final synthetic l:Ljava/lang/String; = "LBAdView"

.field private static synthetic u:Lcom/ievyhrdnoniovof/AdPlayer;

.field private static synthetic w:Landroid/content/Context;


# instance fields
.field private synthetic B:Ljava/lang/String;

.field private synthetic L:Landroid/app/ProgressDialog;

.field private synthetic N:I

.field private synthetic O:Lcom/ievyhrdnoniovof/AdUtilityController;

.field final R:Landroid/webkit/WebView;

.field private synthetic W:I

.field private synthetic b:Lcom/ievyhrdnoniovof/AdView$ViewState;

.field private synthetic e:Z

.field private synthetic f:Lcom/ievyhrdnoniovof/AdView$AdViewListener;

.field private synthetic g:Landroid/os/Handler;

.field private synthetic i:I

.field private synthetic k:Z

.field private synthetic m:I

.field n:Landroid/webkit/WebViewClient;

.field private synthetic o:Landroid/view/GestureDetector;

.field private synthetic p:Z

.field private synthetic q:F

.field private synthetic r:Lcom/ievyhrdnoniovof/AdController;

.field private final synthetic s:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic t:I

.field v:Landroid/webkit/WebChromeClient;

.field private synthetic x:I

.field private synthetic y:Lcom/ievyhrdnoniovof/AdListener;

.field private synthetic z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ievyhrdnoniovof/AdView;->C:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x101011f
        0x1010120
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/ievyhrdnoniovof/AdView$ViewState;->H:Lcom/ievyhrdnoniovof/AdView$ViewState;

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->b:Lcom/ievyhrdnoniovof/AdView$ViewState;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->s:Ljava/util/HashSet;

    new-instance v0, Lcom/ievyhrdnoniovof/AdView$2;

    invoke-direct {v0, p0}, Lcom/ievyhrdnoniovof/AdView$2;-><init>(Lcom/ievyhrdnoniovof/AdView;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->g:Landroid/os/Handler;

    new-instance v0, Lcom/ievyhrdnoniovof/AdView$5;

    invoke-direct {v0, p0}, Lcom/ievyhrdnoniovof/AdView$5;-><init>(Lcom/ievyhrdnoniovof/AdView;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->n:Landroid/webkit/WebViewClient;

    iput-object p0, p0, Lcom/ievyhrdnoniovof/AdView;->R:Landroid/webkit/WebView;

    new-instance v0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;

    sget-object v1, Lcom/ievyhrdnoniovof/AdView;->w:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;-><init>(Lcom/ievyhrdnoniovof/AdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->v:Landroid/webkit/WebChromeClient;

    sput-object p1, Lcom/ievyhrdnoniovof/AdView;->w:Landroid/content/Context;

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdView;->l()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/ievyhrdnoniovof/AdView$ViewState;->H:Lcom/ievyhrdnoniovof/AdView$ViewState;

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->b:Lcom/ievyhrdnoniovof/AdView$ViewState;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->s:Ljava/util/HashSet;

    new-instance v0, Lcom/ievyhrdnoniovof/AdView$2;

    invoke-direct {v0, p0}, Lcom/ievyhrdnoniovof/AdView$2;-><init>(Lcom/ievyhrdnoniovof/AdView;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->g:Landroid/os/Handler;

    new-instance v0, Lcom/ievyhrdnoniovof/AdView$5;

    invoke-direct {v0, p0}, Lcom/ievyhrdnoniovof/AdView$5;-><init>(Lcom/ievyhrdnoniovof/AdView;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->n:Landroid/webkit/WebViewClient;

    iput-object p0, p0, Lcom/ievyhrdnoniovof/AdView;->R:Landroid/webkit/WebView;

    new-instance v0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;

    sget-object v1, Lcom/ievyhrdnoniovof/AdView;->w:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;-><init>(Lcom/ievyhrdnoniovof/AdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->v:Landroid/webkit/WebChromeClient;

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdView;->l()V

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/ievyhrdnoniovof/AdView;->C:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    if-lez v1, :cond_0

    if-lez v2, :cond_0

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdView;->O:Lcom/ievyhrdnoniovof/AdUtilityController;

    invoke-virtual {v3, v1, v2}, Lcom/ievyhrdnoniovof/AdUtilityController;->setMaxSize(II)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ievyhrdnoniovof/AdController;Lcom/ievyhrdnoniovof/AdListener;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lcom/ievyhrdnoniovof/AdController;
    .param p3, "arg2"    # Lcom/ievyhrdnoniovof/AdListener;

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/ievyhrdnoniovof/AdView$ViewState;->H:Lcom/ievyhrdnoniovof/AdView$ViewState;

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->b:Lcom/ievyhrdnoniovof/AdView$ViewState;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->s:Ljava/util/HashSet;

    new-instance v0, Lcom/ievyhrdnoniovof/AdView$2;

    invoke-direct {v0, p0}, Lcom/ievyhrdnoniovof/AdView$2;-><init>(Lcom/ievyhrdnoniovof/AdView;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->g:Landroid/os/Handler;

    new-instance v0, Lcom/ievyhrdnoniovof/AdView$5;

    invoke-direct {v0, p0}, Lcom/ievyhrdnoniovof/AdView$5;-><init>(Lcom/ievyhrdnoniovof/AdView;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->n:Landroid/webkit/WebViewClient;

    iput-object p0, p0, Lcom/ievyhrdnoniovof/AdView;->R:Landroid/webkit/WebView;

    new-instance v0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;

    sget-object v1, Lcom/ievyhrdnoniovof/AdView;->w:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;-><init>(Lcom/ievyhrdnoniovof/AdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->v:Landroid/webkit/WebChromeClient;

    sput-object p1, Lcom/ievyhrdnoniovof/AdView;->w:Landroid/content/Context;

    iput-object p2, p0, Lcom/ievyhrdnoniovof/AdView;->r:Lcom/ievyhrdnoniovof/AdController;

    iput-object p3, p0, Lcom/ievyhrdnoniovof/AdView;->y:Lcom/ievyhrdnoniovof/AdListener;

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdView;->l()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ievyhrdnoniovof/AdView$AdViewListener;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lcom/ievyhrdnoniovof/AdView$AdViewListener;

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/ievyhrdnoniovof/AdView$ViewState;->H:Lcom/ievyhrdnoniovof/AdView$ViewState;

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->b:Lcom/ievyhrdnoniovof/AdView$ViewState;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->s:Ljava/util/HashSet;

    new-instance v0, Lcom/ievyhrdnoniovof/AdView$2;

    invoke-direct {v0, p0}, Lcom/ievyhrdnoniovof/AdView$2;-><init>(Lcom/ievyhrdnoniovof/AdView;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->g:Landroid/os/Handler;

    new-instance v0, Lcom/ievyhrdnoniovof/AdView$5;

    invoke-direct {v0, p0}, Lcom/ievyhrdnoniovof/AdView$5;-><init>(Lcom/ievyhrdnoniovof/AdView;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->n:Landroid/webkit/WebViewClient;

    iput-object p0, p0, Lcom/ievyhrdnoniovof/AdView;->R:Landroid/webkit/WebView;

    new-instance v0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;

    sget-object v1, Lcom/ievyhrdnoniovof/AdView;->w:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;-><init>(Lcom/ievyhrdnoniovof/AdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->v:Landroid/webkit/WebChromeClient;

    sput-object p1, Lcom/ievyhrdnoniovof/AdView;->w:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/ievyhrdnoniovof/AdView;->setListener(Lcom/ievyhrdnoniovof/AdView$AdViewListener;)V

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdView;->l()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/ievyhrdnoniovof/AdView$ViewState;->H:Lcom/ievyhrdnoniovof/AdView$ViewState;

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->b:Lcom/ievyhrdnoniovof/AdView$ViewState;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->s:Ljava/util/HashSet;

    new-instance v0, Lcom/ievyhrdnoniovof/AdView$2;

    invoke-direct {v0, p0}, Lcom/ievyhrdnoniovof/AdView$2;-><init>(Lcom/ievyhrdnoniovof/AdView;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->g:Landroid/os/Handler;

    new-instance v0, Lcom/ievyhrdnoniovof/AdView$5;

    invoke-direct {v0, p0}, Lcom/ievyhrdnoniovof/AdView$5;-><init>(Lcom/ievyhrdnoniovof/AdView;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->n:Landroid/webkit/WebViewClient;

    iput-object p0, p0, Lcom/ievyhrdnoniovof/AdView;->R:Landroid/webkit/WebView;

    new-instance v0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;

    sget-object v1, Lcom/ievyhrdnoniovof/AdView;->w:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;-><init>(Lcom/ievyhrdnoniovof/AdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->v:Landroid/webkit/WebChromeClient;

    sput-object p1, Lcom/ievyhrdnoniovof/AdView;->w:Landroid/content/Context;

    iput-object p2, p0, Lcom/ievyhrdnoniovof/AdView;->z:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdView;->l()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/ievyhrdnoniovof/AdView$AdViewListener;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Lcom/ievyhrdnoniovof/AdView$AdViewListener;

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/ievyhrdnoniovof/AdView$ViewState;->H:Lcom/ievyhrdnoniovof/AdView$ViewState;

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->b:Lcom/ievyhrdnoniovof/AdView$ViewState;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->s:Ljava/util/HashSet;

    new-instance v0, Lcom/ievyhrdnoniovof/AdView$2;

    invoke-direct {v0, p0}, Lcom/ievyhrdnoniovof/AdView$2;-><init>(Lcom/ievyhrdnoniovof/AdView;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->g:Landroid/os/Handler;

    new-instance v0, Lcom/ievyhrdnoniovof/AdView$5;

    invoke-direct {v0, p0}, Lcom/ievyhrdnoniovof/AdView$5;-><init>(Lcom/ievyhrdnoniovof/AdView;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->n:Landroid/webkit/WebViewClient;

    iput-object p0, p0, Lcom/ievyhrdnoniovof/AdView;->R:Landroid/webkit/WebView;

    new-instance v0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;

    sget-object v1, Lcom/ievyhrdnoniovof/AdView;->w:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;-><init>(Lcom/ievyhrdnoniovof/AdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->v:Landroid/webkit/WebChromeClient;

    sput-object p1, Lcom/ievyhrdnoniovof/AdView;->w:Landroid/content/Context;

    iput-object p2, p0, Lcom/ievyhrdnoniovof/AdView;->z:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/ievyhrdnoniovof/AdView;->setListener(Lcom/ievyhrdnoniovof/AdView$AdViewListener;)V

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdView;->l()V

    return-void
.end method

.method static synthetic A(Lcom/ievyhrdnoniovof/AdView;I)I
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdView;
    .param p1, "arg1"    # I

    .prologue
    iput p1, p0, Lcom/ievyhrdnoniovof/AdView;->x:I

    return p1
.end method

.method static synthetic A(Lcom/ievyhrdnoniovof/AdView;)Lcom/ievyhrdnoniovof/AdUtilityController;
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdView;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->O:Lcom/ievyhrdnoniovof/AdUtilityController;

    return-object v0
.end method

.method static synthetic A(Lcom/ievyhrdnoniovof/AdView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdView;
    .param p1, "arg1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdView;->B:Ljava/lang/String;

    return-object p1
.end method

.method private synthetic C()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView;->b:Lcom/ievyhrdnoniovof/AdView$ViewState;

    sget-object v2, Lcom/ievyhrdnoniovof/AdView$ViewState;->E:Lcom/ievyhrdnoniovof/AdView$ViewState;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->j()V

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdView;
    .local v0, "this":Lcom/ievyhrdnoniovof/AdView;
    :goto_0
    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdView;->invalidate()V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView;->O:Lcom/ievyhrdnoniovof/AdUtilityController;

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdUtilityController;->deleteOldAds()V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView;->O:Lcom/ievyhrdnoniovof/AdUtilityController;

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdUtilityController;->stopAllListeners()V

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdView;->L()V

    return-void

    .end local v0    # "this":Lcom/ievyhrdnoniovof/AdView;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdView;
    :cond_0
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView;->b:Lcom/ievyhrdnoniovof/AdView$ViewState;

    sget-object v2, Lcom/ievyhrdnoniovof/AdView$ViewState;->d:Lcom/ievyhrdnoniovof/AdView$ViewState;

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdView;->G()V

    :cond_1
    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdView;
    .restart local v0    # "this":Lcom/ievyhrdnoniovof/AdView;
    goto :goto_0
.end method

.method static synthetic C(Lcom/ievyhrdnoniovof/AdView;)V
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdView;

    .prologue
    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdView;->G()V

    return-void
.end method

.method static synthetic D(Lcom/ievyhrdnoniovof/AdView;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdView;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->L:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic D()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ievyhrdnoniovof/AdView;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic F(Lcom/ievyhrdnoniovof/AdView;)Lcom/ievyhrdnoniovof/AdView$ViewState;
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdView;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->b:Lcom/ievyhrdnoniovof/AdView$ViewState;

    return-object v0
.end method

.method private synthetic declared-synchronized F()V
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/ievyhrdnoniovof/AdView;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "LBAdView"

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView;->O:Lcom/ievyhrdnoniovof/AdUtilityController;

    const-string v2, "\u0014\nI\u0008V\u0004Q\u0016\u0014\nI\u0008V\u0004\u0015\u000fH"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u0006 \u0004?\u00088\u001a}\u0006 \u0004?\u0008|\u0003!"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ievyhrdnoniovof/AdUtilityController;->copyTextFromJarIntoAssetDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ievyhrdnoniovof/AdView;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "\u0008h\u0006I\u000cK\u0011k\u0004O\r\u001bX\u001b"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ievyhrdnoniovof/AdView;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic G(Lcom/ievyhrdnoniovof/AdView;)Lcom/ievyhrdnoniovof/AdController;
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdView;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->r:Lcom/ievyhrdnoniovof/AdController;

    return-object v0
.end method

.method private synthetic G()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->f:Lcom/ievyhrdnoniovof/AdView$AdViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->f:Lcom/ievyhrdnoniovof/AdView$AdViewListener;

    invoke-interface {v0}, Lcom/ievyhrdnoniovof/AdView$AdViewListener;->onResizeClose()Z

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0012R\u000b_\nLKT\u0017V\u0008Z\u0013R\u0000LK]\u000cI\u0000x\rZ\u000b\\\u0000~\u0013^\u000bOM@EH\u0011Z\u0011^_\u001bB_\u0000]\u0004N\tOB\u0017EH\u000cA\u0000\u0001E@EL\u000c_\u0011S_\u001b"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ievyhrdnoniovof/AdView;->W:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Er"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r^\u000c\\\rO_\u001b"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ievyhrdnoniovof/AdView;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FL\u0000"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LBAdView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1\u0005=\u001a7;7\u001a;\u00137\rhI;\u00078\u000c1\u001d;\u0006<Sr"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ievyhrdnoniovof/AdView;->injectJavaScript(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdView;->L()V

    return-void
.end method

.method static synthetic I(Lcom/ievyhrdnoniovof/AdView;)Lcom/ievyhrdnoniovof/AdView$AdViewListener;
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdView;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->f:Lcom/ievyhrdnoniovof/AdView$AdViewListener;

    return-object v0
.end method

.method static synthetic I()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ievyhrdnoniovof/AdView;->E:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic L(Lcom/ievyhrdnoniovof/AdView;)F
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdView;

    .prologue
    iget v0, p0, Lcom/ievyhrdnoniovof/AdView;->q:F

    return v0
.end method

.method private synthetic L()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ievyhrdnoniovof/AdView;->k:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/ievyhrdnoniovof/AdView;->t:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v1, p0, Lcom/ievyhrdnoniovof/AdView;->m:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ievyhrdnoniovof/AdView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->requestLayout()V

    return-void
.end method

.method static synthetic l(Lcom/ievyhrdnoniovof/AdView;I)I
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdView;
    .param p1, "arg1"    # I

    .prologue
    iput p1, p0, Lcom/ievyhrdnoniovof/AdView;->W:I

    return p1
.end method

.method static synthetic l(Lcom/ievyhrdnoniovof/AdView;)Landroid/os/Handler;
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdView;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private synthetic l(Lcom/ievyhrdnoniovof/AdController$Dimensions;)Landroid/widget/FrameLayout;
    .locals 10
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdController$Dimensions;

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->M:I

    iget v5, p1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->m:I

    invoke-direct {v6, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v3, p1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->k:I

    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, p1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->E:I

    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    move v3, v4

    move v5, v4

    :goto_0
    if-ge v3, v7, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p0, :cond_0

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdView;
    .local v0, "this":Lcom/ievyhrdnoniovof/AdView;
    :goto_1
    iput v5, v0, Lcom/ievyhrdnoniovof/AdView;->i:I

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v7, 0x64

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getHeight()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/ievyhrdnoniovof/AdView$3;

    invoke-direct {v3, p0}, Lcom/ievyhrdnoniovof/AdView$3;-><init>(Lcom/ievyhrdnoniovof/AdView;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x65

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setId(I)V

    iget v5, p1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->k:I

    iget v7, p1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->E:I

    invoke-virtual {v2, v5, v7, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-virtual {v2, p0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v2

    .end local v0    # "this":Lcom/ievyhrdnoniovof/AdView;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdView;
    :cond_0
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    :cond_1
    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdView;
    .restart local v0    # "this":Lcom/ievyhrdnoniovof/AdView;
    goto :goto_1
.end method

.method static synthetic l(Lcom/ievyhrdnoniovof/AdView;Lcom/ievyhrdnoniovof/AdView$ViewState;)Lcom/ievyhrdnoniovof/AdView$ViewState;
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdView;
    .param p1, "arg1"    # Lcom/ievyhrdnoniovof/AdView$ViewState;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdView;->b:Lcom/ievyhrdnoniovof/AdView$ViewState;

    return-object p1
.end method

.method private synthetic l()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "LBAdView"

    const-string v1, "|\nR\u000b\\EO\n\u001b\u000cU\u000cO\u000cZ\tR\u001f^EV3R\u0000L"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/ievyhrdnoniovof/AdView;->setScrollContainer(Z)V

    invoke-virtual {p0, v3}, Lcom/ievyhrdnoniovof/AdView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/ievyhrdnoniovof/AdView;->setHorizontalScrollBarEnabled(Z)V

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/ievyhrdnoniovof/AdView$ScrollEater;

    invoke-direct {v1, p0}, Lcom/ievyhrdnoniovof/AdView$ScrollEater;-><init>(Lcom/ievyhrdnoniovof/AdView;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->o:Landroid/view/GestureDetector;

    invoke-virtual {p0, v3}, Lcom/ievyhrdnoniovof/AdView;->setBackgroundColor(I)V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u001e;\u00076\u0006%"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/ievyhrdnoniovof/AdView;->q:F

    iput-boolean v3, p0, Lcom/ievyhrdnoniovof/AdView;->e:Z

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->n:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, v0}, Lcom/ievyhrdnoniovof/AdView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->v:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, v0}, Lcom/ievyhrdnoniovof/AdView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v0, Lcom/ievyhrdnoniovof/AdUtilityController;

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ievyhrdnoniovof/AdUtilityController;-><init>(Lcom/ievyhrdnoniovof/AdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->O:Lcom/ievyhrdnoniovof/AdUtilityController;

    new-instance v0, Lcom/ievyhrdnoniovof/AdAssetController;

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ievyhrdnoniovof/AdAssetController;-><init>(Lcom/ievyhrdnoniovof/AdView;Landroid/content/Context;)V

    new-instance v1, Lcom/ievyhrdnoniovof/AdDisplayController;

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/ievyhrdnoniovof/AdDisplayController;-><init>(Lcom/ievyhrdnoniovof/AdView;Landroid/content/Context;)V

    new-instance v2, Lcom/ievyhrdnoniovof/AdLocationController;

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/ievyhrdnoniovof/AdLocationController;-><init>(Lcom/ievyhrdnoniovof/AdView;Landroid/content/Context;)V

    new-instance v3, Lcom/ievyhrdnoniovof/AdNetworkController;

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/ievyhrdnoniovof/AdNetworkController;-><init>(Lcom/ievyhrdnoniovof/AdView;Landroid/content/Context;)V

    new-instance v4, Lcom/ievyhrdnoniovof/AdSensorController;

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/ievyhrdnoniovof/AdSensorController;-><init>(Lcom/ievyhrdnoniovof/AdView;Landroid/content/Context;)V

    iget-object v5, p0, Lcom/ievyhrdnoniovof/AdView;->O:Lcom/ievyhrdnoniovof/AdUtilityController;

    const-string v6, "*i(v$n\u0011R\tR\u0011B&T\u000bO\u0017T\tW\u0000I\'I\u000c_\u0002^"

    invoke-static {v6}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/ievyhrdnoniovof/AdView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "\u001d;\u001f$\u0013(!\u001a7\u001d!*=\u0007&\u001b=\u0005>\u000c + \u00006\u000e7"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/ievyhrdnoniovof/AdView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "*i(v$\u007f\u000cH\u0015W\u0004B&T\u000bO\u0017T\tW\u0000I\'I\u000c_\u0002^"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/ievyhrdnoniovof/AdView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u001d;\u001f$\u0013%=\n3\u001d;\u0006<*=\u0007&\u001b=\u0005>\u000c + \u00006\u000e7"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/ievyhrdnoniovof/AdView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "*i(v$u\u0000O\u0012T\u0017P&T\u000bO\u0017T\tW\u0000I\'I\u000c_\u0002^"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/ievyhrdnoniovof/AdView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u001d;\u001f$\u0013:7\u0007!\u0006 *=\u0007&\u001b=\u0005>\u000c + \u00006\u000e7"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/ievyhrdnoniovof/AdView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/ievyhrdnoniovof/AdJSInterface;

    sget-object v0, Lcom/ievyhrdnoniovof/AdView;->w:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdView;->r:Lcom/ievyhrdnoniovof/AdController;

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdView;->y:Lcom/ievyhrdnoniovof/AdListener;

    invoke-direct {v1, v0, v2, v3}, Lcom/ievyhrdnoniovof/AdJSInterface;-><init>(Landroid/content/Context;Lcom/ievyhrdnoniovof/AdController;Lcom/ievyhrdnoniovof/AdListener;)V

    const-string v0, "w\'t0o"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/ievyhrdnoniovof/AdView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "LBAdView"

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdView;->F()V

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdView;->m()I

    move-result v1

    iput v1, p0, Lcom/ievyhrdnoniovof/AdView;->N:I

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const-string v1, "??;\u000c%I\u001b\u0007;\u001d;\u0008>\u0000(\u000cr\n=\u0004\"\u00057\u001d7"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic l(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const-string v0, "expand_dimensions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ievyhrdnoniovof/AdController$Dimensions;

    const-string v1, "expand_url"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "expand_properties"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/ievyhrdnoniovof/AdController$Properties;

    invoke-static {v2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/ievyhrdnoniovof/AdView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/ievyhrdnoniovof/AdView;->l(Lcom/ievyhrdnoniovof/AdController$Dimensions;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-boolean v3, v1, Lcom/ievyhrdnoniovof/AdController$Properties;->k:Z

    if-eqz v3, :cond_1

    iget v3, v1, Lcom/ievyhrdnoniovof/AdController$Properties;->l:I

    iget v1, v1, Lcom/ievyhrdnoniovof/AdController$Properties;->m:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    const/high16 v4, 0x10000000

    mul-int/2addr v1, v4

    or-int/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%\u0000<\r=\u001e|\u0006 \u0004?\u0008$\u00007\u001e|\u000f;\u001b7*:\u0008<\u000e7,$\u000c<\u001dz\u0012r\u001a&\u0008&\u000chIu\u000c*\u00193\u00076\u000c6N~I!\u0000(\u000chI)I%\u00006\u001d:Sr"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/ievyhrdnoniovof/AdController$Dimensions;->M:I

    int-to-float v2, v2

    iget v3, p0, Lcom/ievyhrdnoniovof/AdView;->q:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "I\u001b"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u00017\u00005\u0001&Sr"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/ievyhrdnoniovof/AdController$Dimensions;->m:I

    int-to-float v0, v0

    iget v2, p0, Lcom/ievyhrdnoniovof/AdView;->q:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "I/@i"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LBAdView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_\n~\u001dK\u0004U\u0001\u0001ER\u000bQ\u0000X\u0011R\nU_\u001b"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ievyhrdnoniovof/AdView;->injectJavaScript(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->f:Lcom/ievyhrdnoniovof/AdView$AdViewListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->f:Lcom/ievyhrdnoniovof/AdView$AdViewListener;

    invoke-interface {v0}, Lcom/ievyhrdnoniovof/AdView$AdViewListener;->onExpand()Z

    :cond_2
    sget-object v0, Lcom/ievyhrdnoniovof/AdView$ViewState;->E:Lcom/ievyhrdnoniovof/AdView$ViewState;

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->b:Lcom/ievyhrdnoniovof/AdView$ViewState;

    return-void
.end method

.method static synthetic l(Lcom/ievyhrdnoniovof/AdView;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdView;
    .param p1, "arg1"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/ievyhrdnoniovof/AdView;->l(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic l(Lcom/ievyhrdnoniovof/AdView;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdView;
    .param p1, "arg1"    # Ljava/io/InputStream;
    .param p2, "arg2"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/ievyhrdnoniovof/AdView;->l(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic l(Lcom/ievyhrdnoniovof/AdView;Ljava/lang/String;)V
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdView;
    .param p1, "arg1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/ievyhrdnoniovof/AdView;->l(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic l(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4
    .param p1, "arg0"    # Ljava/io/InputStream;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const-string v0, "LBAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "W\nZ\u0001r\u000bK\u0010O6O\u0017^\u0004VI\u001b\u0001Z\u0011ZE\u0006"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdView;->C()V

    new-instance v0, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;-><init>(Lcom/ievyhrdnoniovof/AdView;Ljava/io/InputStream;Ljava/lang/String;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private synthetic l(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic l(Landroid/net/Uri;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->s:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic l(Lcom/ievyhrdnoniovof/AdView;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdView;
    .param p1, "arg1"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/ievyhrdnoniovof/AdView;->l(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method private synthetic m()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic m(Lcom/ievyhrdnoniovof/AdView;)Ljava/lang/String;
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdView;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->B:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method A()Lcom/ievyhrdnoniovof/AdPlayer;
    .locals 2

    .prologue
    sget-object v0, Lcom/ievyhrdnoniovof/AdView;->u:Lcom/ievyhrdnoniovof/AdPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ievyhrdnoniovof/AdView;->u:Lcom/ievyhrdnoniovof/AdPlayer;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdPlayer;->releasePlayer()V

    :cond_0
    new-instance v0, Lcom/ievyhrdnoniovof/AdPlayer;

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ievyhrdnoniovof/AdPlayer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ievyhrdnoniovof/AdView;->u:Lcom/ievyhrdnoniovof/AdPlayer;

    sget-object v0, Lcom/ievyhrdnoniovof/AdView;->u:Lcom/ievyhrdnoniovof/AdPlayer;

    return-object v0
.end method

.method public addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/ievyhrdnoniovof/AdView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public clearView()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdView;->C()V

    invoke-super {p0}, Landroid/webkit/WebView;->clearView()V

    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    sget-object v0, Lcom/ievyhrdnoniovof/AdView;->w:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/ievyhrdnoniovof/AdView$6;

    invoke-direct {v1, p0}, Lcom/ievyhrdnoniovof/AdView$6;-><init>(Lcom/ievyhrdnoniovof/AdView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deregisterProtocol(Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->s:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public dump()V
    .locals 0

    return-void
.end method

.method public expand(Lcom/ievyhrdnoniovof/AdController$Dimensions;Ljava/lang/String;Lcom/ievyhrdnoniovof/AdController$Properties;)V
    .locals 5
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdController$Dimensions;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Lcom/ievyhrdnoniovof/AdController$Properties;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->g:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "expand_properties"

    const-string v3, "expand_url"

    const-string v4, "expand_dimensions"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u0006T\u000bU\u0000X\u0011R\u0013R\u0011B"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v2, ")I%\u00006\u001d:Sr"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/ievyhrdnoniovof/AdView;->q:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "I\u001b"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u00017\u00005\u0001&Sr"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/ievyhrdnoniovof/AdView;->q:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->b:Lcom/ievyhrdnoniovof/AdView$ViewState;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdView$ViewState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 3

    .prologue
    :try_start_0
    const-string v0, "\u0008<\r \u0006;\r|\u001e7\u000b9\u0000&G\u0005\u000c0?;\u000c%"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v0, "T\u000bk\u0004N\u0016^"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->g:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public injectJavaScript(Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    sget-object v0, Lcom/ievyhrdnoniovof/AdView;->w:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/ievyhrdnoniovof/AdView$1;

    invoke-direct {v1, p0, p1}, Lcom/ievyhrdnoniovof/AdView$1;-><init>(Lcom/ievyhrdnoniovof/AdView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public isExpanded()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->b:Lcom/ievyhrdnoniovof/AdView$ViewState;

    sget-object v1, Lcom/ievyhrdnoniovof/AdView$ViewState;->E:Lcom/ievyhrdnoniovof/AdView$ViewState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPageFinished()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdView;->e:Z

    return v0
.end method

.method protected declared-synchronized j()V
    .locals 5

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->resetContents()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v2, "\u0012R\u000b_\nLKT\u0017V\u0008Z\u0013R\u0000LK]\u000cI\u0000x\rZ\u000b\\\u0000~\u0013^\u000bOM@EH\u0011Z\u0011^_\u001bB_\u0000]\u0004N\tOB\u0017EH\u000cA\u0000\u0001E@EL\u000c_\u0011S_\u001b"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ievyhrdnoniovof/AdView;->W:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Er"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r^\u000c\\\rO_\u001b"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ievyhrdnoniovof/AdView;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FL\u0000"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LBAdView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const-string v4, "\n>\u0006!\u000c\u0017\u0011\"\u0008<\r7\rhI;\u00078\u000c1\u001d;\u0006<Sr"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/ievyhrdnoniovof/AdView;->injectJavaScript(Ljava/lang/String;)V

    sget-object v0, Lcom/ievyhrdnoniovof/AdView$ViewState;->H:Lcom/ievyhrdnoniovof/AdView$ViewState;

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->b:Lcom/ievyhrdnoniovof/AdView$ViewState;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->g:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ievyhrdnoniovof/AdView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected l(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->requestLayout()V

    return-void
.end method

.method public loadFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .param p1, "arg0"    # Ljava/io/File;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, p2}, Lcom/ievyhrdnoniovof/AdView;->l(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LBAdView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const-string v4, "^\u0017I\n\u001b\u0012R\u0011SEW\nZ\u0001}\u000cW\u0000\u001bH\u001b"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LBAdView"

    invoke-static {v1, v0}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public loadHTMLWrap(Ljava/lang/String;)V
    .locals 7
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->O:Lcom/ievyhrdnoniovof/AdUtilityController;

    const-string v2, "_ormma_current"

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v5, Lcom/ievyhrdnoniovof/AdView;->E:Ljava/lang/String;

    sget-object v6, Lcom/ievyhrdnoniovof/AdView;->c:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/ievyhrdnoniovof/AdUtilityController;->writeHTMLToDiskWrap(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->B:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v2, "4\u0000>\u000chF}"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ormma_current"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/ievyhrdnoniovof/AdView;->w:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/ievyhrdnoniovof/AdView$4;

    invoke-direct {v2, p0, v1}, Lcom/ievyhrdnoniovof/AdView$4;-><init>(Lcom/ievyhrdnoniovof/AdView;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/ievyhrdnoniovof/AdView;->loadUrl(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/ievyhrdnoniovof/AdView;->loadUrl(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Z
    .param p3, "arg2"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdView;->e:Z

    :try_start_0
    new-instance v0, Lcom/ievyhrdnoniovof/AdView$LoadAsync;

    invoke-direct {v0, p0, p1, p3}, Lcom/ievyhrdnoniovof/AdView$LoadAsync;-><init>(Lcom/ievyhrdnoniovof/AdView;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ievyhrdnoniovof/AdView$LoadAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdView;->k:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/ievyhrdnoniovof/AdView;->t:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/ievyhrdnoniovof/AdView;->m:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ievyhrdnoniovof/AdView;->k:Z

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->O:Lcom/ievyhrdnoniovof/AdUtilityController;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdUtilityController;->stopAllListeners()V

    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 3

    .prologue
    const-string v0, "LBAdView"

    const-string v1, "=\u0007\u0015\u0005=\u000b3\u0005\u001e\u0008+\u0006\'\u001dr\n3\u0005>\u000c6"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdView;->p:Z

    iget-boolean v1, p0, Lcom/ievyhrdnoniovof/AdView;->p:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/ievyhrdnoniovof/AdView;->N:I

    if-ltz v1, :cond_0

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdView;->m()I

    move-result v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/ievyhrdnoniovof/AdView;->N:I

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdView;->m()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    const-string v1, "L\u000cU\u0001T\u0012\u0015\nI\u0008V\u0004M\u000c^\u0012\u0015\u0003R\u0017^&S\u0004U\u0002^ M\u0000U\u0011\u0013\u001e\u001b\u000e^\u001cY\nZ\u0017_6O\u0004O\u0000\u0001EO\u0017N\u0000FL\u0000"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ievyhrdnoniovof/AdView;->injectJavaScript(Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p0, Lcom/ievyhrdnoniovof/AdView;->p:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/ievyhrdnoniovof/AdView;->N:I

    if-ltz v1, :cond_1

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdView;->m()I

    move-result v1

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/ievyhrdnoniovof/AdView;->N:I

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdView;->m()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    const-string v1, "\u001e;\u00076\u0006%G=\u001b?\u00043\u001f;\u000c%G4\u0000 \u000c\u0011\u00013\u00075\u000c\u0017\u001f7\u0007&A)I9\u000c+\u000b=\u0008 \r\u0001\u001d3\u001d7Sr\u000f3\u0005!\u000c/@i"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ievyhrdnoniovof/AdView;->injectJavaScript(Ljava/lang/String;)V

    :cond_1
    iget v1, p0, Lcom/ievyhrdnoniovof/AdView;->N:I

    if-gez v1, :cond_2

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdView;->m()I

    move-result v1

    iput v1, p0, Lcom/ievyhrdnoniovof/AdView;->N:I

    :cond_2
    iput-boolean v0, p0, Lcom/ievyhrdnoniovof/AdView;->p:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->o:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public open(Ljava/lang/String;ZZZ)V
    .locals 5
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Z
    .param p3, "arg2"    # Z
    .param p4, "arg3"    # Z

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ievyhrdnoniovof/AdBrowser;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "LBAdView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const-string v4, "T\u0015^\u000b\u0001"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extra_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "open_show_back"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "open_show_forward"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "open_show_refresh"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public openMap(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Z

    .prologue
    const-string v0, "LBAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "*K\u0000U\u000cU\u0002\u001b(Z\u0015\u001b0I\t\u001b"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ievyhrdnoniovof/AdUtils;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "\u0008<\r \u0006;\r|\u0000<\u001d7\u0007&G3\n&\u0000=\u0007|?\u001b,\u0005"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->z:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "~\u0017I\nI_\u001b\u000bTE|\nT\u0002W\u0000\u001b(Z\u0015HEz5rEp\u0000BEK\u0017T\u0013R\u0001^\u0001\u001b\u0003T\u0017\u001b\u0000V\u0007^\u0001_\u0000_EV\u0004K"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public playAudio(Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Z
    .param p3, "arg2"    # Z
    .param p4, "arg3"    # Z
    .param p5, "arg4"    # Z
    .param p6, "arg5"    # Ljava/lang/String;
    .param p7, "arg6"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;

    invoke-direct {v0}, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;-><init>()V

    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move v4, p5

    move v5, p4

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->setProperties(ZZZZZLjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "player_properties"

    const-string v3, "expand_url"

    const-string v4, "action"

    sget-object v5, Lcom/ievyhrdnoniovof/AdView$ACTION;->M:Lcom/ievyhrdnoniovof/AdView$ACTION;

    invoke-virtual {v5}, Lcom/ievyhrdnoniovof/AdView$ACTION;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/ievyhrdnoniovof/AdActionHandler;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->g:Landroid/os/Handler;

    const/16 v2, 0x3f0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public playAudioImpl(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "player_properties"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;

    const-string v1, "expand_url"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->A()Lcom/ievyhrdnoniovof/AdPlayer;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/ievyhrdnoniovof/AdPlayer;->setPlayData(Lcom/ievyhrdnoniovof/AdController$PlayerProperties;Ljava/lang/String;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Lcom/ievyhrdnoniovof/AdPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2}, Lcom/ievyhrdnoniovof/AdPlayer;->playAudio()V

    return-void
.end method

.method public playVideo(Ljava/lang/String;ZZZZLcom/ievyhrdnoniovof/AdController$Dimensions;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Z
    .param p3, "arg2"    # Z
    .param p4, "arg3"    # Z
    .param p5, "arg4"    # Z
    .param p6, "arg5"    # Lcom/ievyhrdnoniovof/AdController$Dimensions;
    .param p7, "arg6"    # Ljava/lang/String;
    .param p8, "arg7"    # Ljava/lang/String;

    .prologue
    const-string v0, "LBAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "\"\u00053\u0010\u0004\u00006\u000c=Er?;\r7\u0006r<\u0000%rDr"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->g:Landroid/os/Handler;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    new-instance v0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;

    invoke-direct {v0}, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;-><init>()V

    const/4 v4, 0x0

    move v1, p2

    move v2, p3

    move v3, p4

    move v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->setProperties(ZZZZZLjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "player_properties"

    const-string v3, "action"

    const-string v4, "expand_url"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/ievyhrdnoniovof/AdView$ACTION;->m:Lcom/ievyhrdnoniovof/AdView$ACTION;

    invoke-virtual {v4}, Lcom/ievyhrdnoniovof/AdView$ACTION;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p6, :cond_0

    const-string v2, "expand_dimensions"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/ievyhrdnoniovof/AdActionHandler;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    if-eqz p6, :cond_1

    invoke-virtual {v8, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->g:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public playVideoImpl(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const-string v0, "player_properties"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;

    const-string v1, "expand_dimensions"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/ievyhrdnoniovof/AdController$Dimensions;

    const-string v2, "expand_url"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->A()Lcom/ievyhrdnoniovof/AdPlayer;

    move-result-object v3

    const-string v4, "LBAdView"

    invoke-virtual {v3, v0, v2}, Lcom/ievyhrdnoniovof/AdPlayer;->setPlayData(Lcom/ievyhrdnoniovof/AdController$PlayerProperties;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "?;\r7\u0006r<\u0000%rDr"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->M:I

    iget v4, v1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->m:I

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v2, v1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->k:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, v1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->E:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3, v0}, Lcom/ievyhrdnoniovof/AdPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x65

    new-instance v4, Lcom/ievyhrdnoniovof/AdView$7;

    invoke-direct {v4, p0}, Lcom/ievyhrdnoniovof/AdView$7;-><init>(Lcom/ievyhrdnoniovof/AdView;)V

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setId(I)V

    iget v0, v1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->k:I

    iget v1, v1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->E:I

    invoke-virtual {v2, v0, v1, v6, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/ievyhrdnoniovof/AdView;->setVisibility(I)V

    new-instance v0, Lcom/ievyhrdnoniovof/AdView$8;

    invoke-direct {v0, p0}, Lcom/ievyhrdnoniovof/AdView$8;-><init>(Lcom/ievyhrdnoniovof/AdView;)V

    invoke-virtual {v3, v0}, Lcom/ievyhrdnoniovof/AdPlayer;->setListener(Lcom/ievyhrdnoniovof/AdPlayerListener;)V

    invoke-virtual {v3}, Lcom/ievyhrdnoniovof/AdPlayer;->playVideo()V

    return-void
.end method

.method public raiseError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->g:Landroid/os/Handler;

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    const-string v3, "message"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public registerProtocol(Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->s:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeListener()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->f:Lcom/ievyhrdnoniovof/AdView$AdViewListener;

    return-void
.end method

.method public resetContents()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getRootView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView;->getRootView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdView;->L()V

    :try_start_0
    iget v0, p0, Lcom/ievyhrdnoniovof/AdView;->i:I

    invoke-virtual {v3, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resize(II)V
    .locals 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->g:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "resize_height"

    const-string v3, "resize_width"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 3
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "AD_PATH"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->B:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v2, "4\u0000>\u000chF}"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ormma_current"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 3
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    const-string v1, "AD_PATH"

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdView;->B:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setListener(Lcom/ievyhrdnoniovof/AdView$AdViewListener;)V
    .locals 0
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdView$AdViewListener;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdView;->f:Lcom/ievyhrdnoniovof/AdView$AdViewListener;

    return-void
.end method

.method public setMapAPIKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdView;->z:Ljava/lang/String;

    return-void
.end method

.method public setMaxSize(II)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->O:Lcom/ievyhrdnoniovof/AdUtilityController;

    invoke-virtual {v0, p1, p2}, Lcom/ievyhrdnoniovof/AdUtilityController;->setMaxSize(II)V

    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView;->g:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
