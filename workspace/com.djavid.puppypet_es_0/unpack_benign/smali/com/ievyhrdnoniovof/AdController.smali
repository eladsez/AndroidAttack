.class public Lcom/ievyhrdnoniovof/AdController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ievyhrdnoniovof/AdController$FetchImage;,
        Lcom/ievyhrdnoniovof/AdController$ReflectedParcelable;,
        Lcom/ievyhrdnoniovof/AdController$Properties;,
        Lcom/ievyhrdnoniovof/AdController$Dimensions;,
        Lcom/ievyhrdnoniovof/AdController$PlayerProperties;,
        Lcom/ievyhrdnoniovof/AdController$AdShakeListener;,
        Lcom/ievyhrdnoniovof/AdController$AdClientPixel;,
        Lcom/ievyhrdnoniovof/AdController$OfferPolling;,
        Lcom/ievyhrdnoniovof/AdController$Polling;,
        Lcom/ievyhrdnoniovof/AdController$ContextList;
    }
.end annotation


# static fields
.field private static final synthetic AA:Ljava/lang/String; = "int"

.field public static final D:Ljava/lang/String; = "fullscreen"

.field public static final G:Ljava/lang/String; = "LBAdController"

.field private static final synthetic GA:J = 0x3L

.field private static final synthetic IA:Ljava/lang/String; = "class java.lang.String"

.field private static final synthetic J:I = 0x1f4

.field public static final L:Ljava/lang/String; = "exit"

.field private static final synthetic M:Ljava/lang/String; = "class com.ievyhrdnoniovof.AdTransitionStringEnum"

.field private static final synthetic O:Ljava/lang/String; = "boolean"

.field private static final synthetic X:I = 0x32

.field private static final synthetic Z:Ljava/lang/String; = "class com.ievyhrdnoniovof.AdNavigationStringEnum"

.field public static final aA:Ljava/lang/String; = "normal"

.field private static final synthetic pA:I = 0xa

.field private static final synthetic tA:Ljava/lang/String; = "audioads.mp3"

.field private static final synthetic wA:Ljava/lang/String; = "float"


# instance fields
.field private synthetic A:Z

.field private synthetic B:Landroid/view/View;

.field private synthetic BA:Landroid/os/Handler;

.field private synthetic C:Landroid/app/ProgressDialog;

.field private synthetic CA:I

.field private synthetic DA:Lcom/ievyhrdnoniovof/AdAudioTask;

.field private synthetic E:Landroid/webkit/WebView;

.field private synthetic EA:Lcom/ievyhrdnoniovof/AdController$OfferPolling;

.field private synthetic F:Lcom/ievyhrdnoniovof/AdListener;

.field private synthetic FA:Landroid/view/ViewGroup$MarginLayoutParams;

.field private synthetic H:Z

.field private synthetic HA:Z

.field private synthetic I:Landroid/os/Handler;

.field private synthetic JA:Landroid/widget/Button;

.field private synthetic K:Landroid/widget/TextView;

.field private synthetic KA:I

.field private synthetic LA:Landroid/os/Handler;

.field private synthetic MA:Landroid/widget/Button;

.field private synthetic N:Ljava/lang/Runnable;

.field private synthetic OA:Z

.field private synthetic P:Ljava/lang/String;

.field private synthetic PA:Landroid/view/View;

.field private synthetic Q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic R:Z

.field private synthetic S:Ljava/lang/Runnable;

.field private synthetic T:Landroid/app/PendingIntent;

.field private synthetic U:Landroid/view/ViewGroup;

.field private synthetic UA:F

.field private synthetic V:Lcom/ievyhrdnoniovof/AdController$Polling;

.field protected W:Landroid/content/Context;

.field private synthetic WA:I

.field private synthetic Y:Z

.field private synthetic a:Lcom/ievyhrdnoniovof/AdController;

.field private synthetic b:Landroid/widget/TextView;

.field private synthetic bA:Lcom/ievyhrdnoniovof/AdAudioListener;

.field private synthetic c:Landroid/app/AlertDialog;

.field private synthetic cA:Landroid/widget/RelativeLayout$LayoutParams;

.field protected d:Lcom/ievyhrdnoniovof/AdView;

.field private synthetic dA:Landroid/widget/Button;

.field private synthetic e:Z

.field private synthetic eA:Landroid/media/AudioManager;

.field private synthetic f:Landroid/widget/Button;

.field private synthetic fA:Landroid/media/MediaPlayer;

.field private synthetic g:Landroid/hardware/SensorManager;

.field private synthetic gA:Lorg/json/JSONObject;

.field private synthetic h:Z

.field private synthetic hA:Lcom/ievyhrdnoniovof/AdTask;

.field private synthetic i:Landroid/widget/Button;

.field private synthetic iA:Landroid/app/AlarmManager;

.field private synthetic j:Ljava/lang/String;

.field private synthetic jA:Ljava/lang/String;

.field private synthetic k:Z

.field private synthetic kA:I

.field private synthetic l:Ljava/io/FileInputStream;

.field private synthetic lA:Landroid/widget/Button;

.field private synthetic m:Z

.field private synthetic mA:Z

.field private synthetic n:Landroid/widget/RelativeLayout;

.field private synthetic nA:Z

.field private synthetic o:Z

.field private synthetic oA:Z

.field private synthetic p:F

.field private synthetic q:Lcom/ievyhrdnoniovof/AdWebView;

.field private synthetic qA:Z

.field private synthetic r:I

.field private synthetic rA:Z

.field private synthetic s:Z

.field private synthetic t:Lcom/ievyhrdnoniovof/AdController$AdShakeListener;

.field private synthetic u:I

.field private synthetic v:Z

.field private synthetic vA:F

.field private synthetic w:Ljava/lang/String;

.field private synthetic x:Landroid/view/View;

.field private synthetic xA:Z

.field private synthetic y:I

.field private synthetic z:Z

.field private synthetic zA:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/ievyhrdnoniovof/AdController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Landroid/webkit/WebView;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->e:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->A:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->v:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->mA:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->z:Z

    iput v1, p0, Lcom/ievyhrdnoniovof/AdController;->y:I

    iput-boolean v2, p0, Lcom/ievyhrdnoniovof/AdController;->m:Z

    iput v1, p0, Lcom/ievyhrdnoniovof/AdController;->r:I

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->o:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->HA:Z

    iput v1, p0, Lcom/ievyhrdnoniovof/AdController;->WA:I

    iput v1, p0, Lcom/ievyhrdnoniovof/AdController;->kA:I

    iput v1, p0, Lcom/ievyhrdnoniovof/AdController;->zA:I

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->s:Z

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->hA:Lcom/ievyhrdnoniovof/AdTask;

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->a:Lcom/ievyhrdnoniovof/AdController;

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->qA:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->oA:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->k:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->h:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->rA:Z

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->DA:Lcom/ievyhrdnoniovof/AdAudioTask;

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->xA:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->H:Z

    iput-boolean v2, p0, Lcom/ievyhrdnoniovof/AdController;->nA:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->Y:Z

    new-instance v0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;

    invoke-direct {v0, p0, v2}, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;-><init>(Lcom/ievyhrdnoniovof/AdController;Z)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->t:Lcom/ievyhrdnoniovof/AdController$AdShakeListener;

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->R:Z

    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    iput-object p2, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    iput-object p3, p0, Lcom/ievyhrdnoniovof/AdController;->E:Landroid/webkit/WebView;

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->I()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Landroid/widget/RelativeLayout;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->e:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->A:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->v:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->mA:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->z:Z

    iput v1, p0, Lcom/ievyhrdnoniovof/AdController;->y:I

    iput-boolean v3, p0, Lcom/ievyhrdnoniovof/AdController;->m:Z

    iput v1, p0, Lcom/ievyhrdnoniovof/AdController;->r:I

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->o:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->HA:Z

    iput v1, p0, Lcom/ievyhrdnoniovof/AdController;->WA:I

    iput v1, p0, Lcom/ievyhrdnoniovof/AdController;->kA:I

    iput v1, p0, Lcom/ievyhrdnoniovof/AdController;->zA:I

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->s:Z

    iput-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->hA:Lcom/ievyhrdnoniovof/AdTask;

    iput-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    iput-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->a:Lcom/ievyhrdnoniovof/AdController;

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->qA:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->oA:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->k:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->h:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->rA:Z

    iput-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->DA:Lcom/ievyhrdnoniovof/AdAudioTask;

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->xA:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->H:Z

    iput-boolean v3, p0, Lcom/ievyhrdnoniovof/AdController;->nA:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->Y:Z

    new-instance v0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;

    invoke-direct {v0, p0, v3}, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;-><init>(Lcom/ievyhrdnoniovof/AdController;Z)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->t:Lcom/ievyhrdnoniovof/AdController$AdShakeListener;

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->R:Z

    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    iput-object p2, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    if-nez p3, :cond_0

    new-instance p3, Landroid/widget/RelativeLayout;

    .end local p3    # "arg2":Landroid/widget/RelativeLayout;
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    invoke-direct {p3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .restart local p3    # "arg2":Landroid/widget/RelativeLayout;
    :cond_0
    iput-object p3, p0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->E:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->I()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/ievyhrdnoniovof/AdAudioListener;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Lcom/ievyhrdnoniovof/AdAudioListener;

    .prologue
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/ievyhrdnoniovof/AdController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;)V

    iput-object p3, p0, Lcom/ievyhrdnoniovof/AdController;->bA:Lcom/ievyhrdnoniovof/AdAudioListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/ievyhrdnoniovof/AdListener;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Lcom/ievyhrdnoniovof/AdListener;

    .prologue
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/ievyhrdnoniovof/AdController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;)V

    iput-object p3, p0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    return-void
.end method

.method public constructor <init>(Lcom/ievyhrdnoniovof/AdView;Landroid/content/Context;)V
    .locals 3
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdView;
    .param p2, "arg1"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->e:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->A:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->v:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->mA:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->z:Z

    iput v1, p0, Lcom/ievyhrdnoniovof/AdController;->y:I

    iput-boolean v2, p0, Lcom/ievyhrdnoniovof/AdController;->m:Z

    iput v1, p0, Lcom/ievyhrdnoniovof/AdController;->r:I

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->o:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->HA:Z

    iput v1, p0, Lcom/ievyhrdnoniovof/AdController;->WA:I

    iput v1, p0, Lcom/ievyhrdnoniovof/AdController;->kA:I

    iput v1, p0, Lcom/ievyhrdnoniovof/AdController;->zA:I

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->s:Z

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->hA:Lcom/ievyhrdnoniovof/AdTask;

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->a:Lcom/ievyhrdnoniovof/AdController;

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->qA:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->oA:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->k:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->h:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->rA:Z

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->DA:Lcom/ievyhrdnoniovof/AdAudioTask;

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->xA:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->H:Z

    iput-boolean v2, p0, Lcom/ievyhrdnoniovof/AdController;->nA:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->Y:Z

    new-instance v0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;

    invoke-direct {v0, p0, v2}, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;-><init>(Lcom/ievyhrdnoniovof/AdController;Z)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->t:Lcom/ievyhrdnoniovof/AdController$AdShakeListener;

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->R:Z

    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdController;->d:Lcom/ievyhrdnoniovof/AdView;

    iput-object p2, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    return-void
.end method

.method static synthetic A(Lcom/ievyhrdnoniovof/AdController;F)F
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;
    .param p1, "arg1"    # F

    .prologue
    iput p1, p0, Lcom/ievyhrdnoniovof/AdController;->vA:F

    return p1
.end method

.method private varargs synthetic A(Landroid/os/AsyncTask;[Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/AsyncTask;
    .param p2, "arg1"    # [Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic A(Lcom/ievyhrdnoniovof/AdController;)V
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->M()V

    return-void
.end method

.method private synthetic A()Z
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v2, "9 \u000c4\u000c \u000c<\n7"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u00107\u001c2\u00167\n<\u001c0\u00020\u000b6\u001c\'\n>\u0006,"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v3, v1, v4

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    const-wide/32 v3, 0x493e0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic A(Lcom/ievyhrdnoniovof/AdController;Z)Z
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;
    .param p1, "arg1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/ievyhrdnoniovof/AdController;->oA:Z

    return p1
.end method

.method private synthetic B()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-string v0, "LBAdController"

    const-string v1, " \u0001&\u00127\u0016\u0002\u001f\"\u0001.S \u0012/\u001f&\u0017"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v1, "9 \u000c4\u000c \u000c<\n7"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-class v3, Lcom/ievyhrdnoniovof/ReEngagement;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "\u0000&\u00107\u001a,\u001d*\u0017"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v2, v10, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->T:Landroid/app/PendingIntent;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :try_start_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v5, "3\u00053\u001b?"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->iA:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v5, "\u0001&\u0016-\u0014\"\u0014&\u001e&\u001d7\u00007\u00121\u0007"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v5, 0xd

    invoke-virtual {v2, v5, v0}, Ljava/util/Calendar;->add(II)V

    const-string v5, "LBAdController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    const-string v8, "\u0013\u00053\u001b?I;\u0007;\u001d;\u0008>\u0000(\u000c6I\u007fI\u0001\n:\u000c6\u001c>\u000c6I3\u001dr"

    invoke-static {v8}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_c\u00106\u00011\u0016-\u0007c\u0007*\u001e&S~S"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "LBAdController"

    const-string v6, "D\u007fD\u007fD\u007fD\u007fD\u007fD\u007fD\u007fD\u007fD\u007fD\u007fD\u007fD\u007fD\u007fD\u007fD\u007fD\u007fD\u007fD\u007fD\u007fD\u007f"

    invoke-static {v6}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ievyhrdnoniovof/AdController;->iA:Landroid/app/AlarmManager;

    iget-object v6, p0, Lcom/ievyhrdnoniovof/AdController;->T:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v5, p0, Lcom/ievyhrdnoniovof/AdController;->iA:Landroid/app/AlarmManager;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    iget-object v9, p0, Lcom/ievyhrdnoniovof/AdController;->T:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const-string v7, "\u00107\u001c2\u000f2\u0011>\u001c\'\n>\u0006,"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const-string v5, "\u0001-\r>\u0013\"\u00176\u0006 \u001f,\r"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const-string v4, "\u00107\u001c2\u000f2\u0011>\u001c:\r\'\u0006!\u00152\u000f,"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    int-to-long v3, v0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdUtils;->apply(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", \u001b=\u001br\n3\u001c!\u000c6I%\u0001;\u00057I!\u000c&\u001d;\u00075I\u0013\u00053\u001b?Iz\u00004I1\u0008!\u000c{Sr"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic B(Lcom/ievyhrdnoniovof/AdController;)V
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->E()V

    return-void
.end method

.method static synthetic C(Lcom/ievyhrdnoniovof/AdController;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->C:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private synthetic C()V
    .locals 9

    .prologue
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    const-string v1, "LBAdController"

    const-string v2, ";7\u001a\'\u0005&\u001ar\u0008 \u000cr\u0007\'\u0005>I\u007fI<\u0006r\u0008\'\r;\u0006r\u001e;\u0005>I0\u000cr\u0019>\u0008+\u000c6"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .local v0, "this":Lcom/ievyhrdnoniovof/AdController;
    :cond_0
    :goto_0
    return-void

    .end local v0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    :cond_1
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->fA:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->H:Z

    :try_start_0
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v2, "audioads.mp3"

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->l:Ljava/io/FileInputStream;

    const-string v1, "LBAdController"

    const-string v2, "%\u001c6\u001d\'S\"\u0006\'\u001a,S\"\u0017"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local v0    # "this":Lcom/ievyhrdnoniovof/AdController;
    :goto_1
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, v0, Lcom/ievyhrdnoniovof/AdController;->fA:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->fA:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/ievyhrdnoniovof/AdController$17;

    invoke-direct {v2, p0}, Lcom/ievyhrdnoniovof/AdController$17;-><init>(Lcom/ievyhrdnoniovof/AdController;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    :try_start_1
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->fA:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->l:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->fA:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->eA:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/ievyhrdnoniovof/AdController;->u:I

    iget v1, p0, Lcom/ievyhrdnoniovof/AdController;->u:I

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->eA:Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    :try_start_2
    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v4, "\u0012\'\u0005,\u001f6\u001e&\u001f&\u0005&\u001f"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result v3

    int-to-double v3, v3

    const-wide/16 v5, 0x0

    cmpl-double v5, v3, v5

    if-lez v5, :cond_2

    int-to-double v5, v2

    mul-double/2addr v3, v5

    double-to-int v1, v3

    :cond_2
    :goto_2
    move v3, v1

    :goto_3
    if-le v3, v2, :cond_3

    move v1, v2

    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->bA:Lcom/ievyhrdnoniovof/AdAudioListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->bA:Lcom/ievyhrdnoniovof/AdAudioListener;

    invoke-interface {v2}, Lcom/ievyhrdnoniovof/AdAudioListener;->onAdLoaded()V

    :cond_4
    const-string v2, "LBAdController"

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdController;->eA:Landroid/media/AudioManager;

    const/4 v4, 0x3

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v1, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->fA:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->m()V

    const-string v1, "\u0019>\u0008+\u0000<\u000er\u0008\'\r;\u0006r\u00086"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->t:Lcom/ievyhrdnoniovof/AdController$AdShakeListener;

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->enableShakeDetection()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->t:Lcom/ievyhrdnoniovof/AdController$AdShakeListener;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v3, "\u00126\u0017*\u001c \u001f*\u0010(\u00071\u001a$\u0014&\u0001"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->setShakeTime(I)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->t:Lcom/ievyhrdnoniovof/AdController$AdShakeListener;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v3, "3\u001c6\u0000=\n>\u00001\u00026\u000c&\u000c1\u001d;\u0006<\u001e;\u00076\u0006%"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->setValidTimes(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->t:Lcom/ievyhrdnoniovof/AdController$AdShakeListener;

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->setupAudioAdHandler()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v2, "LBAdController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const-string v5, "\u0006\u000b \u00163\u0007*\u001c-S4\u001b&\u001dc\u00071\n*\u001d$S7\u001cc\u0003/\u0012:S\u0002\u0006\'\u001a,SnS"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "LBAdController"

    invoke-static {v2, v1}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .end local v0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    :catch_1
    move-exception v1

    const-string v2, "LBAdController"

    const-string v3, "\u0008\'\r;\u0006r\u00086I<\u0006&I4\u0006\'\u00076I;\u0007r\u0000<\u001d7\u001b<\u0008>I!\u001d=\u001b3\u000e7"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ievyhrdnoniovof/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "LBAdController"

    invoke-static {v2, v1}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local v0    # "this":Lcom/ievyhrdnoniovof/AdController;
    goto/16 :goto_1

    :catch_2
    move-exception v3

    int-to-double v3, v1

    int-to-double v5, v1

    const-wide v7, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-int v1, v3

    move v3, v1

    goto/16 :goto_3

    :catch_3
    move-exception v1

    :try_start_6
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->t:Lcom/ievyhrdnoniovof/AdController$AdShakeListener;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v3, " \u001f*\u0010(\u00071\u001a$\u0014&\u0001"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->setShakeTime(I)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->t:Lcom/ievyhrdnoniovof/AdController$AdShakeListener;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v3, "\n>\u00001\u00026\u000c&\u000c1\u001d;\u0006<\u001e;\u00076\u0006%"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->setValidTimes(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    :catch_4
    move-exception v3

    goto/16 :goto_2
.end method

.method static synthetic D(Lcom/ievyhrdnoniovof/AdController;)Lcom/ievyhrdnoniovof/AdController$Polling;
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->V:Lcom/ievyhrdnoniovof/AdController$Polling;

    return-object v0
.end method

.method private synthetic D()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v0, "LBAdController"

    const-string v1, "*\u001d \u0001&\u001e&\u001d7S \u001c6\u001d7\u00161S \u0012/\u001f&\u0017"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v1, "9 \u000c4\u000c \u000c<\n7"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " \u0007,\n\'\u0006!\u0002\'\n<\r,\u0000<\u0016=\u00176\u0011,"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0001-\r \u0006,\u0000(\u0006 \u001d\'\r*\u001d<\u001c=\u0017;\r"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method static synthetic D(Lcom/ievyhrdnoniovof/AdController;Z)Z
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;
    .param p1, "arg1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/ievyhrdnoniovof/AdController;->e:Z

    return p1
.end method

.method static synthetic E(Lcom/ievyhrdnoniovof/AdController;)Lcom/ievyhrdnoniovof/AdWebView;
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    return-object v0
.end method

.method private synthetic E()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController;->Y:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdView;->goBack()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdWebView;->goBack()V

    goto :goto_0
.end method

.method static synthetic F(Lcom/ievyhrdnoniovof/AdController;)Lcom/ievyhrdnoniovof/AdAudioListener;
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->bA:Lcom/ievyhrdnoniovof/AdAudioListener;

    return-object v0
.end method

.method private synthetic F()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController;->Y:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdView;->goForward()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdWebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdWebView;->goForward()V

    goto :goto_0
.end method

.method static synthetic G(Lcom/ievyhrdnoniovof/AdController;)I
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iget v0, p0, Lcom/ievyhrdnoniovof/AdController;->u:I

    return v0
.end method

.method private synthetic G()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->bA:Lcom/ievyhrdnoniovof/AdAudioListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->bA:Lcom/ievyhrdnoniovof/AdAudioListener;

    invoke-interface {v0}, Lcom/ievyhrdnoniovof/AdAudioListener;->onAdClosed()V

    :cond_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->hA:Lcom/ievyhrdnoniovof/AdTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->hA:Lcom/ievyhrdnoniovof/AdTask;

    invoke-virtual {v0, v1}, Lcom/ievyhrdnoniovof/AdTask;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->DA:Lcom/ievyhrdnoniovof/AdAudioTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->DA:Lcom/ievyhrdnoniovof/AdAudioTask;

    invoke-virtual {v0, v1}, Lcom/ievyhrdnoniovof/AdAudioTask;->cancel(Z)Z

    :cond_2
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->t:Lcom/ievyhrdnoniovof/AdController$AdShakeListener;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->destroySensor()V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->fA:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->fA:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->fA:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_3
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->fA:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->fA:Landroid/media/MediaPlayer;

    :cond_4
    return-void
.end method

.method static synthetic H(Lcom/ievyhrdnoniovof/AdController;)V
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->F()V

    return-void
.end method

.method static synthetic I(Lcom/ievyhrdnoniovof/AdController;)I
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iget v0, p0, Lcom/ievyhrdnoniovof/AdController;->r:I

    return v0
.end method

.method private synthetic I()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x3c

    const-wide/16 v5, -0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v2, "\u0013\u0001&\u0015&\u0001&\u001d \u0016"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v0, "\u0001-\r*\u001d\'\u0006,\n=\u0001"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    const-string v2, " \u0007,\u0000<\r\'\u0006+\u0017 \u001c&\u00137\u0002\'\u0006,\u0017:\u000e6"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v5, v2, v5

    if-eqz v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v2, v5, v2

    const-wide/16 v5, 0x3e8

    div-long/2addr v2, v5

    div-long/2addr v2, v7

    div-long/2addr v2, v7

    const-wide/16 v5, 0x18

    div-long/2addr v2, v5

    :cond_0
    if-eqz v0, :cond_1

    const-wide/16 v5, 0x3

    cmp-long v0, v2, v5

    if-ltz v0, :cond_2

    :cond_1
    const-string v0, ":\u00166\u0011&\u001c=\u00171\u0006:\r \u001c9\u0000&\u0015;\u0017:\u0001"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/ievyhrdnoniovof/AdController$ContextList;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/ievyhrdnoniovof/AdController$ContextList;-><init>(Lcom/ievyhrdnoniovof/AdController;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/ievyhrdnoniovof/AdController;->l(Landroid/os/AsyncTask;)V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private varargs synthetic I(Landroid/os/AsyncTask;[Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/AsyncTask;
    .param p2, "arg1"    # [Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic I(Lcom/ievyhrdnoniovof/AdController;Z)Z
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;
    .param p1, "arg1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/ievyhrdnoniovof/AdController;->nA:Z

    return p1
.end method

.method static synthetic J(Lcom/ievyhrdnoniovof/AdController;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->g:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method private synthetic J()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->LA:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->LA:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->S:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->LA:Landroid/os/Handler;

    iput-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->S:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v1, "\u0013\u0001&\u0015&\u0001&\u001d \u0016"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0001-\r \u00016\u0013<\u0016 \u001d=\u0000(\u0011\"\r"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    :cond_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->a:Lcom/ievyhrdnoniovof/AdController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->a:Lcom/ievyhrdnoniovof/AdController;

    invoke-direct {v0}, Lcom/ievyhrdnoniovof/AdController;->J()V

    :cond_1
    return-void
.end method

.method static synthetic K(Lcom/ievyhrdnoniovof/AdController;)I
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iget v0, p0, Lcom/ievyhrdnoniovof/AdController;->kA:I

    return v0
.end method

.method private synthetic K()V
    .locals 22

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    if-eqz v1, :cond_8

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v2, "\u001a:\u0006%"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "C"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v2, "9 \u000c4\u000c \u000c<\n7"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v2, "-\u001c7\u001a%\u001a \u00127\u001a,\u001d"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    const-string v1, "6\u000c4\u0008\'\u0005&"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v3, "1\u0016&\u001d$\u0012$\u0016.\u0016-\u0007\"\u00107\u001a5\u001a7\n"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_11

    move-result-object v1

    :goto_1
    const-class v2, Lcom/ievyhrdnoniovof/ReEngagementActivity;

    const-string v3, "6\u000c4\u0008\'\u0005&"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "\"\u001d\'\u0001,\u001a\']*\u001d7\u0016-\u0007m\u0012 \u0007*\u001c-]\u000e2\n="

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "\u0008<\r \u0006;\r|\u0000<\u001d7\u0007&G1\u0008&\u000c5\u0006 \u0010|%\u0013<\u001c*\u001a,\u0000"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f

    :try_start_3
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_10

    move-result-object v1

    :try_start_4
    const-string v2, "LBAdController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const-string v8, "0/\u00120\u0000c=\"\u001e&SnS"

    invoke-static {v8}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "!\u000c1\u001d;\u0006<\u00006"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    const/4 v3, -0x1

    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :goto_4
    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const-string v5, "\u0013\u000f&\u000c I\u001b\n=\u0007rDr"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, ".R$layout"

    const-string v13, ".R$id"

    const-string v10, "reengagement"

    const-string v11, "appcustom"

    const-string v1, "\"\u00033\u001a.\u00145\u001a&\u0004"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "appcustomview"

    const-string v1, "\u0008\"\u00191\u001c!\u001d=\u0004&\u0000&\u00057"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v1, "\"\u00033\u00106\u00007\u001c.\u0017&\u0000 \u0001*\u00037\u001a,\u001d"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v1, "\u0008\"\u00191\u001c!\u001d=\u0004!\u00043\u0005>\u001d7\u0011&"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v1, "\"\u00033\u00106\u00007\u001c.\u00107\u0012"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v1, "\u001a&\u0008<\r3\u001b6"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v4, "1\u0016&\u001d$\u0012$\u0016.\u0016-\u00077\n3\u0016"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_e

    move-result-object v1

    :goto_5
    const/4 v6, -0x1

    const/4 v5, -0x1

    const/4 v4, -0x1

    const/4 v2, -0x1

    :try_start_7
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v10, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v9, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v9, v14}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-result v2

    move v10, v4

    move v11, v5

    move v12, v6

    :goto_6
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v5, "\u001b7\u000c<\u000e3\u000e7\u00047\u0007&\u001d7\u0011&"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v6, "\u0001&\u0016-\u0014\"\u0014&\u001e&\u001d7\u0007*\u0007/\u0016"

    invoke-static {v6}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v9, " \u000c7\u00075\u00085\u000c?\u000c<\u001d6\u000c!\n \u0000\"\u001d;\u0006<"

    invoke-static {v9}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_d

    move-result-object v6

    const-string v9, " \u00060\u0007,\u001e7\u0016;\u0007"

    invoke-static {v9}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, -0x1

    if-eq v12, v9, :cond_5

    const/4 v9, -0x1

    if-eq v11, v9, :cond_5

    const/4 v9, -0x1

    if-eq v2, v9, :cond_5

    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v13

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v14

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v16

    const/4 v1, -0x1

    if-eq v2, v1, :cond_4

    const/4 v1, -0x1

    if-eq v13, v1, :cond_4

    const/4 v1, -0x1

    if-eq v14, v1, :cond_4

    const/4 v1, -0x1

    if-eq v15, v1, :cond_4

    const/4 v1, -0x1

    move/from16 v0, v16

    if-eq v0, v1, :cond_4

    new-instance v9, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :try_start_a
    const-string v1, "\u001a7\u001d\u0010\u00081\u00025\u001b=\u001c<\r\u0011\u0006>\u0006 "

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v12, "1\u0016&\u001d$\u0012$\u0016.\u0016-\u0007 \u00060\u0007,\u001e!\u0012 \u0018$\u0001,\u0006-\u0017"

    invoke-static {v12}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v11, v1, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    move-object v1, v9

    :goto_7
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v11, "\u001b7\u000c<\u000e3\u000e7\u00047\u0007&\n\'\u001a&\u0006?\u001d7\u0011&"

    invoke-static {v11}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    :try_start_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v2, "\u0001&\u0016-\u0014\"\u0014&\u001e&\u001d7\u00106\u00007\u001c.\u0007&\u000b7\u0010,\u001f,\u0001"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v9, v13, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    move-object v1, v9

    :goto_8
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v11, " \u000c7\u00075\u00085\u000c?\u000c<\u001d1\u001c!\u001d=\u00046\u000c!\n \u0000\"\u001d;\u0006<"

    invoke-static {v11}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    :try_start_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v2, "1\u0016&\u001d$\u0012$\u0016.\u0016-\u0007 \u00060\u0007,\u001e\'\u00160\u00101\u001a3\u0007*\u001c-\u0010,\u001f,\u0001"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v9, v14, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    move-object v1, v9

    :goto_9
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v11, " \u000c7\u00075\u00085\u000c?\u000c<\u001d1\u001c!\u001d=\u0004!\u00043\u0005>\u001d7\u0011&"

    invoke-static {v11}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    :try_start_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v2, "1\u0016&\u001d$\u0012$\u0016.\u0016-\u0007 \u00060\u0007,\u001e0\u001e\"\u001f/\u0007&\u000b7\u0010,\u001f,\u0001"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v9, v15, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    move-object v1, v9

    :goto_a
    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v11, " \u000c7\u00075\u00085\u000c?\u000c<\u001d1\u001c!\u001d=\u00041\u001d3"

    invoke-static {v11}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    :try_start_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v2, "1\u0016&\u001d$\u0012$\u0016.\u0016-\u0007 \u00060\u0007,\u001e \u0007\"\u0007&\u000b7\u0010,\u001f,\u0001"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    move/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_b

    move v1, v10

    :goto_b
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v1, 0x4

    :try_start_13
    invoke-virtual {v9, v10, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_2
    const/4 v1, -0x1

    if-eq v3, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/ievyhrdnoniovof/AdController;->l(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const/4 v1, -0x1

    if-eq v3, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const/4 v9, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/ievyhrdnoniovof/AdController;->l(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z

    goto/16 :goto_0

    :catch_2
    move-exception v2

    :goto_c
    move-object v2, v1

    goto/16 :goto_2

    :cond_3
    const-string v3, "\n\'\u001a&\u0006?"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    :try_start_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v4, "\u0001&\u0016-\u0014\"\u0014&\u001e&\u001d7\u00106\u00007\u001c.\u0010/\u00120\u0000"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    move-result-object v1

    move-object v3, v1

    :goto_d
    if-eqz v1, :cond_9

    :try_start_15
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4

    move-result-object v1

    goto/16 :goto_3

    :catch_3
    move-exception v3

    move-object v3, v1

    goto :goto_d

    :catch_4
    move-exception v1

    move-object v1, v2

    goto/16 :goto_3

    :catch_5
    move-exception v1

    const-string v2, "LBAdController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const-string v6, "\u0006\u00011\u001c1S4\u001a7\u001bc\u0014&\u00077\u001a-\u0014c\u001a \u001c-SnS"

    invoke-static {v6}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ievyhrdnoniovof/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_6
    move-exception v9

    move v10, v4

    move v11, v5

    move v12, v6

    goto/16 :goto_6

    :catch_7
    move-exception v1

    move-object v1, v9

    goto/16 :goto_7

    :catch_8
    move-exception v1

    move-object v1, v9

    goto/16 :goto_8

    :catch_9
    move-exception v1

    move-object v1, v9

    goto/16 :goto_9

    :catch_a
    move-exception v1

    move-object v1, v9

    goto/16 :goto_a

    :catch_b
    move-exception v1

    move v1, v10

    goto/16 :goto_b

    :cond_4
    const/4 v1, -0x1

    if-eq v3, v1, :cond_0

    :try_start_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const/4 v9, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/ievyhrdnoniovof/AdController;->l(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1

    goto/16 :goto_0

    :cond_5
    const-string v2, "\u000b3\u0007<\u000c "

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, -0x1

    if-eq v12, v1, :cond_7

    const/4 v1, -0x1

    if-eq v10, v1, :cond_7

    const-string v1, "appimg"

    const-string v2, "appimgtext"

    :try_start_17
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v9, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    const/4 v9, -0x1

    if-eq v10, v9, :cond_6

    const/4 v9, -0x1

    if-eq v1, v9, :cond_6

    const/4 v1, -0x1

    if-eq v2, v1, :cond_6

    new-instance v9, Lcom/ievyhrdnoniovof/AdController$FetchImage;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    move-object/from16 v10, p0

    move v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    invoke-direct/range {v9 .. v17}, Lcom/ievyhrdnoniovof/AdController$FetchImage;-><init>(Lcom/ievyhrdnoniovof/AdController;Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v11, "\u0001&\u0016-\u0014\"\u0014&\u001e&\u001d7\u001a.\u0014"

    invoke-static {v11}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v1}, Lcom/ievyhrdnoniovof/AdController;->l(Landroid/os/AsyncTask;[Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_c

    goto/16 :goto_0

    :catch_c
    move-exception v1

    const-string v2, "LBAdController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    const-string v11, "\n\u00000\u0006&S4\u001a7\u001bc\u001a.\u0014c\u0001&\u0016-\u0014\"\u0014&\u001e&\u001d7SnS"

    invoke-static {v11}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "LBAdController"

    invoke-static {v2, v1}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v1, -0x1

    if-eq v3, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const/4 v9, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/ievyhrdnoniovof/AdController;->l(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z

    goto/16 :goto_0

    :cond_6
    const/4 v1, -0x1

    if-eq v3, v1, :cond_0

    :try_start_18
    const-string v1, "LBAdController"

    const-string v2, "\u0017\u0005!\u000cr\n3\u001a7I%\u0000&\u0001r\u0000?\u000er\u001b7\u000c<\u000e3\u000e7\u00047\u0007&"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const/4 v9, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/ievyhrdnoniovof/AdController;->l(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_c

    goto/16 :goto_0

    :cond_7
    const/4 v1, -0x1

    if-eq v3, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const/4 v9, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/ievyhrdnoniovof/AdController;->l(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z

    goto/16 :goto_0

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/ievyhrdnoniovof/AdController;->h()V

    goto/16 :goto_0

    :catch_d
    move-exception v1

    goto/16 :goto_0

    :catch_e
    move-exception v2

    goto/16 :goto_5

    :catch_f
    move-exception v1

    move-object v1, v2

    goto/16 :goto_3

    :catch_10
    move-exception v1

    move-object v1, v2

    goto/16 :goto_c

    :catch_11
    move-exception v2

    goto/16 :goto_1

    :cond_9
    move-object v1, v2

    goto/16 :goto_3
.end method

.method static synthetic L(Lcom/ievyhrdnoniovof/AdController;F)F
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;
    .param p1, "arg1"    # F

    .prologue
    iput p1, p0, Lcom/ievyhrdnoniovof/AdController;->UA:F

    return p1
.end method

.method static synthetic L(Lcom/ievyhrdnoniovof/AdController;)Landroid/os/Handler;
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->I:Landroid/os/Handler;

    return-object v0
.end method

.method private synthetic L()V
    .locals 8

    .prologue
    const/high16 v4, 0x41200000    # 10.0f

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v1, " \u001f*\u0010(\u0015,\u001c7\u00161\u0005*\u0000*\u0011/\u0016"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "c"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :cond_1
    iput-boolean v3, p0, Lcom/ievyhrdnoniovof/AdController;->rA:Z

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->I:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->I:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->EA:Lcom/ievyhrdnoniovof/AdController$OfferPolling;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->f:Landroid/widget/Button;

    const-string v1, "!&\u00151\u00160\u001b"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "q,d,d,d"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "PsCsCsC"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/ievyhrdnoniovof/AdController;->v:Z

    if-eqz v2, :cond_8

    :try_start_1
    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v5, "1\u0005;\n9\u000f=\u0006&\u000c \u00017\u00005\u0001&"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    const/4 v5, 0x0

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    :try_start_2
    iget-object v5, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v6, " \u001f*\u0010(\u0015,\u001c7\u00161\u0010,\u001f,\u0001"

    invoke-static {v6}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v6, "1\u0005;\n9\u001d;\u001d>\u000c&\u000c*\u001d1\u0006>\u0006 "

    invoke-static {v6}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v1, :cond_4

    :cond_3
    const-string v5, "P\u0006E\u0006E\u0006E"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    if-nez v0, :cond_6

    :cond_5
    const-string v5, "qYbYbYb"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    :cond_6
    :goto_1
    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    cmpl-float v6, v5, v4

    if-lez v6, :cond_7

    :goto_2
    iget-object v5, p0, Lcom/ievyhrdnoniovof/AdController;->f:Landroid/widget/Button;

    invoke-virtual {v5, v3, v3, v3, v3}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v5, p0, Lcom/ievyhrdnoniovof/AdController;->f:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v4, p0, Lcom/ievyhrdnoniovof/AdController;->f:Landroid/widget/Button;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->f:Landroid/widget/Button;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->f:Landroid/widget/Button;

    new-instance v1, Lcom/ievyhrdnoniovof/AdController$12;

    invoke-direct {v1, p0}, Lcom/ievyhrdnoniovof/AdController$12;-><init>(Lcom/ievyhrdnoniovof/AdController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController;->v:Z

    if-eqz v0, :cond_0

    :try_start_3
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v1, " \u001f*\u0010(\u0015,\u001c7\u00161\u000b"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v4, "\n>\u00001\u00024\u0006=\u001d7\u001b+"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v5, "\u0010/\u001a \u0018%\u001c,\u0007&\u0001+\u0016*\u0014+\u0007"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v6, 0x37

    invoke-direct {v5, v6, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v7, "\n>\u00001\u00024\u0006=\u001d7\u001b%\u00006\u001d:"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x78

    sub-int v2, v4, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v5, v0, v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->f:Landroid/widget/Button;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0006\u00011\u001c1Sk\u0012\'\u0017c>\"\u001d6\u0012/S\u0013\u001c/\u001fc\u00117\u001dc\u0011&\u0015,\u0001&S \u001f*\u0010(ZyS"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

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

    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :catch_2
    move-exception v2

    move v2, v3

    goto/16 :goto_1

    :catch_3
    move-exception v5

    goto/16 :goto_1

    :cond_7
    move v4, v5

    goto/16 :goto_2

    :cond_8
    move v2, v3

    goto/16 :goto_1
.end method

.method private varargs synthetic L(Landroid/os/AsyncTask;[Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/AsyncTask;
    .param p2, "arg1"    # [Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic L(Lcom/ievyhrdnoniovof/AdController;Z)Z
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;
    .param p1, "arg1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/ievyhrdnoniovof/AdController;->R:Z

    return p1
.end method

.method private synthetic M()V
    .locals 21

    .prologue
    const-string v3, "LBAdController"

    const-string v4, "\r;\u001a\"\u00053\u0010\u0013\rr\n3\u0005>\u000c6"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    if-nez v3, :cond_1

    const-string v3, "LBAdController"

    const-string v4, "!&\u00006\u001f7\u0000c\u00121\u0016c\u001d6\u001f/SnS-\u001cc\u0012\'S4\u001a/\u001fc\u0011&S/\u001c\"\u0017&\u0017"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ievyhrdnoniovof/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .local v2, "this":Lcom/ievyhrdnoniovof/AdController;
    :cond_0
    :goto_0
    return-void

    .end local v2    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    :cond_1
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v5, "\u00086\u0001&\u0004>"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object/from16 v2, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local v2    # "this":Lcom/ievyhrdnoniovof/AdController;
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v5, "\u0012\'\u00061\u001f"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/ievyhrdnoniovof/AdController;->j:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v2, p0

    :goto_2
    iget-object v4, v2, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/ievyhrdnoniovof/AdController;->nA:Z

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/ievyhrdnoniovof/AdController;->qA:Z

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/ievyhrdnoniovof/AdController;->v:Z

    if-eqz v4, :cond_5

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->j:Ljava/lang/String;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->j:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->j:Ljava/lang/String;

    const-string v3, "LBAdController"

    const-string v4, "\u0005\u000c0?;\u000c%I;\u001ar\u0007=\u001dr\u0007\'\u0005>I\u007fI5\u0006;\u00075I&\u0006r\u0005=\u00086I\u0013\rr<\u0000%r\u00017\u001b7"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ievyhrdnoniovof/AdController;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/ievyhrdnoniovof/AdWebView;->setLoadingURL(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ievyhrdnoniovof/AdController;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/ievyhrdnoniovof/AdWebView;->loadUrl(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/ievyhrdnoniovof/AdController;->OA:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v2, p0

    :goto_3
    iget-boolean v3, v2, Lcom/ievyhrdnoniovof/AdController;->nA:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/ievyhrdnoniovof/AdController;->qA:Z

    if-eqz v3, :cond_6

    :cond_3
    const-string v3, "LBAdController"

    const-string v4, "\u000b3\n9\u000e \u0006\'\u00076I>\u00063\rr\u0006 I!\u001d=\u001b;\u00075I&\u0006r\n3\n:\u000crDr\u0003\'\u001a&I \u000c&\u001c \u0007r\u000f \u0006?I6\u0000!\u0019>\u0008+(6"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v2    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    :catch_0
    move-exception v4

    move-object/from16 v2, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local v2    # "this":Lcom/ievyhrdnoniovof/AdController;
    goto/16 :goto_1

    :catch_1
    move-exception v4

    move-object/from16 v2, p0

    goto/16 :goto_2

    :catch_2
    move-exception v3

    move-object/from16 v2, p0

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "LBAdController"

    const-string v5, "$&\u0011\u0015\u001a&\u0004c\u001a0S-\u001c7S-\u0006/\u001fc^c\u0014,\u001a-\u0014c\u0007,S/\u001c\"\u0017c\u0017\"\u0007\"S+\u00161\u0016"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    const-string v5, "&\u000c*\u001d}\u0001&\u0004>"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u00067\u0015nK"

    invoke-static {v6}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v5, v6}, Lcom/ievyhrdnoniovof/AdWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object/from16 v2, p0

    goto :goto_3

    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v4, "6\u0000&\u0010/\u001a \u00184\u001a-\u0017,\u0004"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v4, "\u001c!\u000c1\u0005;\n9\u001e;\u00076\u0006%"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "B"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "LBAdController"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/ievyhrdnoniovof/AdController;->OA:Z

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/ievyhrdnoniovof/AdController;->v:Z

    const-string v4, "\u0015\u0006;\u00075I&\u0006r\u001c!\u000cr\n>\u00001\u0002r\u001e;\u00076\u0006%I\u007fI1\u0008<\n7\u0005r\u0006\'\u001dr\u00064I:\u000c \u000c|G|"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/ievyhrdnoniovof/AdController;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v3

    const-string v4, "LBAdController"

    invoke-static {v4, v3}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    const-string v4, "LBAdController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const-string v7, "6;\u0010&\u00037\u001a,\u001dc\u0004+\u0016-S6\u0000*\u001d$S\u0000\u001f*\u0010($*\u001d\'\u001c4SnS"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/ievyhrdnoniovof/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/ievyhrdnoniovof/AdController;->A:Z

    if-nez v3, :cond_0

    const-string v3, "LBAdController"

    const-string v4, "\u0015\u0006;\u00075I&\u0006r\u0005=\u00086I&\u00017I\u0013\rr\u0007=\u001e|G|"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/ievyhrdnoniovof/AdController;->A:Z

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/ievyhrdnoniovof/AdController;->v:Z

    const/4 v3, 0x1

    :try_start_4
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/ievyhrdnoniovof/AdController;->OA:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v4, "0\u001b,\u0004"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "c"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/ievyhrdnoniovof/AdController;->e:Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    if-nez v3, :cond_1b

    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_6

    move-object/from16 v2, p0

    :goto_4
    :try_start_6
    iget-object v3, v2, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->B:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->PA:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->K:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->dA:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->lA:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->JA:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->MA:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->i:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->x:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->f:Landroid/widget/Button;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->removeAllViews()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_f
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_8
    :goto_5
    :try_start_7
    new-instance v3, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->x:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->x:Landroid/view/View;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumHeight(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->x:Landroid/view/View;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumWidth(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->x:Landroid/view/View;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v4, "\u001e\"\u0000(\u0012/\u0003+\u0012"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide v5, 0x406fe00000000000L    # 255.0

    mul-double/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ievyhrdnoniovof/AdController;->x:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    double-to-int v3, v3

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->x:Landroid/view/View;

    new-instance v4, Lcom/ievyhrdnoniovof/AdController$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/ievyhrdnoniovof/AdController$5;-><init>(Lcom/ievyhrdnoniovof/AdController;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_e
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6

    :goto_6
    :try_start_8
    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v4, "%\u0000<\r=\u001e+"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "\u000e\u001a\'\u0017/\u0016"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a

    move-result-object v4

    :try_start_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v7, "\u001e;\u00076\u0006%\r=\n9\u0000<\u000e+"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_6

    move-result-object v4

    move-object/from16 v2, p0

    :goto_7
    :try_start_a
    iget-object v5, v2, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v7, "7\u001a7\u001f&\u0005*\u0000*\u0011/\u0016"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    if-eqz v5, :cond_9

    :try_start_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v7, "\u001e;\u00076\u0006%\u001d \u0008<\u001a\"\u0008 \u000c<\n+"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "B"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/ievyhrdnoniovof/AdWebView;->setBackgroundColor(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_6

    :cond_9
    :goto_8
    :try_start_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ievyhrdnoniovof/AdController;->d:Lcom/ievyhrdnoniovof/AdView;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    if-eqz v5, :cond_a

    :try_start_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v7, "\u001e;\u00076\u0006%\u001d \u0008<\u001a\"\u0008 \u000c<\n+"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "B"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ievyhrdnoniovof/AdController;->d:Lcom/ievyhrdnoniovof/AdView;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/ievyhrdnoniovof/AdView;->setBackgroundColor(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_6

    :cond_a
    :goto_9
    :try_start_e
    move-object/from16 v0, p0

    iget v5, v0, Lcom/ievyhrdnoniovof/AdController;->y:I

    if-lez v5, :cond_b

    const-string v5, "$;\r6\u00057"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "LBAdController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    const-string v9, "2\'\u0017*\u0007*\u001c-\u0012/S\u0007\u001c \u0018*\u001d$S*\u0000c\u0000&\u0007oS\"\u0017)\u00060\u0007*\u001d$S!\u0012-\u001d&\u0001c\u0011:S"

    invoke-static {v9}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/ievyhrdnoniovof/AdController;->y:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u0019*"

    invoke-static {v8}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "\',\u0003"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ievyhrdnoniovof/AdController;->y:I

    add-int/2addr v3, v4

    :cond_b
    :goto_a
    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v7, "\u0004*\u001d\'\u001c4\u0004*\u00177\u001b"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v8, "\u001e;\u00076\u0006%\u00017\u00005\u0001&"

    invoke-static {v8}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v4, v5, v7}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v7, "\u0004*\u001d\'\u001c4\u000b"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v4, "\u001d;\u001d>\u000c*"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v4, "7\u001a7\u001f&\n"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v4, "\u001d;\u001d>\u000c%\u00006\u001d:"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v4, "\u0007*\u0007/\u0016+\u0016*\u0014+\u0007"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v4, 0x0

    invoke-virtual {v3, v8, v9, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v12, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    new-instance v3, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->B:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v4, "\u001d;\u001d>\u000c1\u0006>\u0006 "

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    if-nez v3, :cond_1f

    :cond_c
    const-string v3, "P\u0006E\u0006E\u0006E"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->B:Landroid/view/View;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->b:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->b:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v13, "&\u0000&\u00057\u001d7\u0011&"

    invoke-static {v13}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v4, "7\u001a7\u001f&\u0007&\u000b7\u0010,\u001f,\u0001"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    if-nez v3, :cond_1e

    :cond_d
    const-string v3, "q,d,d,d"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->b:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v13, "\u0007*\u0007/\u00167\u0016;\u0007+\u0016*\u0014+\u0007"

    invoke-static {v13}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    new-instance v13, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v15, "\u001d;\u001d>\u000c&\u000c*\u001d%\u00006\u001d:"

    invoke-static {v15}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-direct {v13, v14, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    add-int/lit8 v14, v8, 0x14

    sub-int v3, v11, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v9

    add-int/lit8 v3, v3, 0x4

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v3, v15, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v14, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v13, "\u0015,\u001c7\u00161\u000b"

    invoke-static {v13}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v15, "4\u0006=\u001d7\u001b+"

    invoke-static {v15}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v16, "%\u001c,\u0007&\u0001+\u0016*\u0014+\u0007"

    invoke-static/range {v16 .. v16}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    move-object/from16 v17, v0

    const-string v18, "4\u0006=\u001d7\u001b%\u00006\u001d:"

    invoke-static/range {v18 .. v18}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v3, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v17

    invoke-virtual {v3, v13, v15, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    new-instance v3, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->PA:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v18, "\u0015,\u001c7\u00161\u0010,\u001f,\u0001"

    invoke-static/range {v18 .. v18}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_e

    if-nez v3, :cond_f

    :cond_e
    const-string v3, "q,d,d,d"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController;->PA:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->K:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->K:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "%\u001c,\u0007&\u00017\u0016;\u0007"

    invoke-static/range {v19 .. v19}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->K:Landroid/widget/TextView;

    const/high16 v18, 0x41200000    # 10.0f

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v18, "\u000f=\u0006&\u000c \u001d7\u0011&\u00017\u00005\u0001&"

    invoke-static/range {v18 .. v18}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v19, "\u0015,\u001c7\u00161\u0007&\u000b7\u0010,\u001f,\u0001"

    invoke-static/range {v19 .. v19}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_10

    if-nez v3, :cond_11

    :cond_10
    const-string v3, "q,d,d,d"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController;->K:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    const-string v20, "\u0015,\u001c7\u00161\u0007&\u000b7\u0004*\u00177\u001b"

    invoke-static/range {v20 .. v20}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-direct {v3, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    add-int/lit8 v13, v13, 0x14

    sub-int v16, v16, v18

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    const/16 v16, 0x0

    move/from16 v0, v16

    move/from16 v1, v16

    invoke-virtual {v3, v13, v15, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v13, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    add-int/lit8 v3, v11, -0x5

    const/4 v15, 0x0

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int/lit8 v15, v3, 0x2

    int-to-float v15, v15

    new-instance v16, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ievyhrdnoniovof/AdController;->JA:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController;->JA:Landroid/widget/Button;

    move-object/from16 v16, v0

    const-string v18, "\n"

    invoke-static/range {v18 .. v18}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController;->JA:Landroid/widget/Button;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/Button;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ievyhrdnoniovof/AdController;->JA:Landroid/widget/Button;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v15, v4}, Landroid/widget/Button;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->JA:Landroid/widget/Button;

    const/4 v15, 0x0

    invoke-virtual {v4, v15, v15, v15, v15}, Landroid/widget/Button;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->JA:Landroid/widget/Button;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->JA:Landroid/widget/Button;

    new-instance v5, Lcom/ievyhrdnoniovof/AdController$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/ievyhrdnoniovof/AdController$6;-><init>(Lcom/ievyhrdnoniovof/AdController;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v5, 0x37

    invoke-direct {v4, v5, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->FA:Landroid/view/ViewGroup$MarginLayoutParams;

    add-int v4, v10, v8

    add-int/lit8 v4, v4, -0x37

    add-int/lit8 v4, v4, -0x5

    sub-int v3, v11, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v9

    add-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ievyhrdnoniovof/AdController;->FA:Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v3, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->FA:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->cA:Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->E:Landroid/webkit/WebView;

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->E:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->U:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->U:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->E:Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->E:Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v4, "\u001e\"\u0000(\u0005*\u0000*\u0011/\u0016"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->x:Landroid/view/View;

    invoke-virtual {v3, v4, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->E:Landroid/webkit/WebView;

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->E:Landroid/webkit/WebView;

    new-instance v4, Lcom/ievyhrdnoniovof/AdController$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/ievyhrdnoniovof/AdController$7;-><init>(Lcom/ievyhrdnoniovof/AdController;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    :cond_13
    const/4 v3, 0x0

    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v5, "\u001e;\u00076\u0006%\u0006\"\u000c<\u000c4\u000f7\n&"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;Z)Landroid/view/animation/Animation;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_6

    move-result-object v3

    move-object/from16 v2, p0

    :goto_d
    :try_start_10
    iget-boolean v4, v2, Lcom/ievyhrdnoniovof/AdController;->Y:Z

    if-eqz v4, :cond_19

    const-string v4, "LBAdController"

    const-string v5, "4,\u001a-\u0014c\u0007,S\"\u0017\'S.%*\u00164S7\u001cc\u001f\"\n,\u00067S-\u001c4]m]"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ievyhrdnoniovof/AdController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v4, v5, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->d:Lcom/ievyhrdnoniovof/AdView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/ievyhrdnoniovof/AdView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v4, v3}, Lcom/ievyhrdnoniovof/AdView;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->d:Lcom/ievyhrdnoniovof/AdView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/ievyhrdnoniovof/AdView;->setVisibility(I)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v3}, Lcom/ievyhrdnoniovof/AdView;->requestFocus()Z

    const-string v3, "\u0008<\r \u0006;\r|\u001e7\u000b9\u0000&G\u0005\u000c0?;\u000c%"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v3, "\u001c-#\"\u00060\u0016"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, p0

    :goto_e
    iget-object v3, v2, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v4, "7\u001a7\u001f&\u0005*\u0000*\u0011/\u0016"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->B:Landroid/view/View;

    invoke-virtual {v3, v4, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v4, "&\u0000&\u00057\u001d7\u0011&"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v4, "\u0000+\u001c4\u0010/\u001c0\u0016"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->JA:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ievyhrdnoniovof/AdController;->cA:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v4, "4\u0006=\u001d7\u001b$\u0000!\u00000\u00057"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->PA:Landroid/view/View;

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v4, "%\u001c,\u0007&\u00017\u0016;\u0007"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->K:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v13}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_17
    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ievyhrdnoniovof/AdController;->CA:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/ievyhrdnoniovof/AdController;->KA:I

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    :try_start_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5, v4}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_6

    goto/16 :goto_0

    :catch_4
    move-exception v3

    :try_start_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5, v4}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_6

    goto/16 :goto_0

    :catch_5
    move-exception v3

    :try_start_13
    const-string v4, "LBAdController"

    invoke-static {v4, v3}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    const-string v4, "LBAdController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const-string v7, "\u001b\u001a!\u001c7I3\u001d&\u00081\u0001;\u00075I>\u0008+\u0006\'\u001dr\u001d=I3\n&\u0000$\u0000&\u0010rDr"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/ievyhrdnoniovof/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a

    goto/16 :goto_0

    :catch_6
    move-exception v3

    const-string v4, "LBAdController"

    invoke-direct/range {p0 .. p0}, Lcom/ievyhrdnoniovof/AdController;->b()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const-string v7, "\t \u000c=\u0006\u000b \u00163\u0007*\u001c-SnS"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_7
    move-exception v3

    :try_start_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_f
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_6

    move-object/from16 v2, p0

    goto/16 :goto_4

    :catch_8
    move-exception v5

    move-object/from16 v2, p0

    goto/16 :goto_7

    :catch_9
    move-exception v5

    :try_start_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/ievyhrdnoniovof/AdWebView;->setBackgroundColor(I)V
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_6
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a

    goto/16 :goto_8

    :catch_a
    move-exception v3

    const-string v4, "LBAdController"

    invoke-direct/range {p0 .. p0}, Lcom/ievyhrdnoniovof/AdController;->b()V

    invoke-static {v4, v3}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    const-string v4, "LBAdController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const-string v7, ",*\n7\u0019&\u0000=\u0007rDr"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_b
    move-exception v5

    :try_start_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ievyhrdnoniovof/AdController;->d:Lcom/ievyhrdnoniovof/AdView;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/ievyhrdnoniovof/AdView;->setBackgroundColor(I)V

    goto/16 :goto_9

    :cond_18
    const-string v5, "+=\u001d&\u0006?"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ievyhrdnoniovof/AdController;->y:I

    sub-int/2addr v3, v4

    if-gez v3, :cond_b

    const/4 v3, 0x0

    goto/16 :goto_a

    :catch_c
    move-exception v4

    move-object/from16 v2, p0

    goto/16 :goto_d

    :cond_19
    const-string v4, "LBAdController"

    const-string v5, "\u0015\u0006;\u00075I&\u0006r\u00086\rr\u001e7\u000b$\u00007\u001er\u001d=I>\u0008+\u0006\'\u001dr\u0007=\u001e|G|"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-virtual {v4, v5, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/ievyhrdnoniovof/AdWebView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-virtual {v4, v3}, Lcom/ievyhrdnoniovof/AdWebView;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/ievyhrdnoniovof/AdWebView;->setVisibility(I)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-virtual {v3}, Lcom/ievyhrdnoniovof/AdWebView;->requestFocus()Z

    const-string v3, "\"\u001d\'\u0001,\u001a\']4\u0016!\u0018*\u0007m$&\u0011\u0015\u001a&\u0004"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v3, "=\u0007\u0002\u0008\'\u001a7"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ievyhrdnoniovof/AdController;->d:Lcom/ievyhrdnoniovof/AdView;

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, p0

    goto/16 :goto_e

    :cond_1b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/ievyhrdnoniovof/AdController;->OA:Z

    invoke-direct/range {p0 .. p0}, Lcom/ievyhrdnoniovof/AdController;->b()V

    goto/16 :goto_0

    :cond_1c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/ievyhrdnoniovof/AdController;->OA:Z

    invoke-direct/range {p0 .. p0}, Lcom/ievyhrdnoniovof/AdController;->b()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_6
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_a

    if-eqz v3, :cond_1d

    :try_start_17
    const-string v3, "LBAdController"

    const-string v4, ",\u001d\u0002\u0017\u0005\u0012*\u001f&\u0017c\u00071\u001a$\u0014&\u0001&\u0017"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    invoke-interface {v4}, Lcom/ievyhrdnoniovof/AdListener;->onAdFailed()V

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/ievyhrdnoniovof/AdController;->o:Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_d
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_6

    move-object/from16 v2, p0

    :goto_f
    :try_start_18
    iget-object v3, v2, Lcom/ievyhrdnoniovof/AdController;->bA:Lcom/ievyhrdnoniovof/AdAudioListener;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ievyhrdnoniovof/AdController;->bA:Lcom/ievyhrdnoniovof/AdAudioListener;

    invoke-interface {v4}, Lcom/ievyhrdnoniovof/AdAudioListener;->onAdFailed()V

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/ievyhrdnoniovof/AdController;->H:Z

    goto/16 :goto_0

    :catch_d
    move-exception v3

    const-string v4, "LBAdController"

    const-string v5, ", \u001b=\u001br\u001e:\u0000>\u000cr\n3\u0005>\u0000<\u000er\u0006<(6/3\u0000>\u000c6"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "LBAdController"

    invoke-static {v4, v3}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_6
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_a

    :cond_1d
    move-object/from16 v2, p0

    goto :goto_f

    :catch_e
    move-exception v3

    goto/16 :goto_6

    :catch_f
    move-exception v3

    goto/16 :goto_5

    :cond_1e
    move-object v4, v3

    goto/16 :goto_c

    :cond_1f
    move-object v5, v3

    goto/16 :goto_b
.end method

.method static synthetic M(Lcom/ievyhrdnoniovof/AdController;)Z
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController;->HA:Z

    return v0
.end method

.method static synthetic P(Lcom/ievyhrdnoniovof/AdController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->N:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic U(Lcom/ievyhrdnoniovof/AdController;)V
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->j()V

    return-void
.end method

.method static synthetic X(Lcom/ievyhrdnoniovof/AdController;)F
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iget v0, p0, Lcom/ievyhrdnoniovof/AdController;->vA:F

    return v0
.end method

.method static synthetic a(Lcom/ievyhrdnoniovof/AdController;)F
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iget v0, p0, Lcom/ievyhrdnoniovof/AdController;->UA:F

    return v0
.end method

.method private synthetic a()V
    .locals 29

    .prologue
    const-string v6, "LBAdController"

    const-string v7, "\u0005;\u00079*>\u00001\u00027\rr\n3\u0005>\u000c6"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/ievyhrdnoniovof/AdController;->G()V

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/ievyhrdnoniovof/AdController;->v:Z

    if-nez v6, :cond_e

    const-string v6, "LBAdController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    const-string v9, "?,\u0012\'\u001a-\u0014c\u0004*\u001d\'\u001c4]m]"

    invoke-static {v9}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/ievyhrdnoniovof/AdController;->OA:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/ievyhrdnoniovof/AdController;->A:Z

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/ievyhrdnoniovof/AdController;->v:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/ievyhrdnoniovof/AdController;->OA:Z

    if-nez v6, :cond_e

    const-string v6, "LBAdController"

    const-string v7, " \u000c?\u0006$\u000cr\u001d:\u000cr\u001f;\u000c%\u001ar\u00004I \u000c#\u001c;\u001b7\rr\u000f;\u001b!\u001d|G|"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v5, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .local v5, "this":Lcom/ievyhrdnoniovof/AdController;
    :goto_0
    :try_start_1
    iget-object v6, v5, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->B:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->b:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->PA:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->K:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->dA:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->lA:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->JA:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->MA:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->i:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ievyhrdnoniovof/AdController;->f:Landroid/widget/Button;

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->removeAllViews()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    .end local v5    # "this":Lcom/ievyhrdnoniovof/AdController;
    :cond_0
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v7, " \u001f*\u0010(\u0004*\u001d\'\u001c4\u000b"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v7, "\n>\u00001\u0002%\u0000<\r=\u001e+"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v8, " \u001f*\u0010(\u0004*\u001d\'\u001c4\u0004*\u00177\u001b"

    invoke-static {v8}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v9, "1\u0005;\n9\u001e;\u00076\u0006%\u00017\u00005\u0001&"

    invoke-static {v9}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v7, v6, v8}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v6, 0x0

    invoke-virtual {v7, v13, v14, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v8, "\u0010/\u001a \u00187\u001a7\u001f&\u0004*\u00177\u001b"

    invoke-static {v8}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v8, "\n>\u00001\u0002&\u0000&\u00057\u00017\u00005\u0001&"

    invoke-static {v8}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v8, "\u0010/\u001a \u00187\u001a7\u001f&\u000b"

    invoke-static {v8}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v8, "1\u0005;\n9\u001d;\u001d>\u000c+"

    invoke-static {v8}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    move/from16 v0, v16

    invoke-direct {v7, v15, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v8, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->B:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    move-object/from16 v5, p0

    .restart local v5    # "this":Lcom/ievyhrdnoniovof/AdController;
    :goto_2
    :try_start_4
    new-instance v7, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v7, v5, Lcom/ievyhrdnoniovof/AdController;->B:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v8, "\u0010/\u001a \u00187\u001a7\u001f&\u0010,\u001f,\u0001"

    invoke-static {v8}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    if-nez v7, :cond_18

    :cond_1
    const-string v7, "q,d,d,d"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v12, v7

    :goto_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->B:Landroid/view/View;

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->b:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->invalidate()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    move-object/from16 v5, p0

    :goto_4
    :try_start_6
    new-instance v7, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v5, Lcom/ievyhrdnoniovof/AdController;->b:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->b:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v9, " \u001f*\u0010(\u0007*\u0007/\u00167\u0016;\u0007"

    invoke-static {v9}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v8, "1\u0005;\n9\u001d;\u001d>\u000c&\u000c*\u001d1\u0006>\u0006 "

    invoke-static {v8}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    if-nez v7, :cond_17

    :cond_2
    const-string v7, "PsCsCsC"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v11, v7

    :goto_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->b:Landroid/widget/TextView;

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v9, "1\u0005;\n9\u001d;\u001d>\u000c&\u000c*\u001d%\u00006\u001d:"

    invoke-static {v9}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v9, v16, -0x2

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    add-int/lit8 v8, v17, 0x14

    add-int/lit8 v9, v18, 0x8

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v20, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v8, " \u001f*\u0010(\u0015,\u001c7\u00161\u000b"

    invoke-static {v8}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v8, "\n>\u00001\u00024\u0006=\u001d7\u001b+"

    invoke-static {v8}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v8, "\u0010/\u001a \u0018%\u001c,\u0007&\u0001+\u0016*\u0014+\u0007"

    invoke-static {v8}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v10, "\n>\u00001\u00024\u0006=\u001d7\u001b%\u00006\u001d:"

    invoke-static {v10}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    move/from16 v0, v22

    invoke-direct {v7, v8, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v8, 0x0

    move/from16 v0, v21

    invoke-virtual {v7, v0, v9, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v23, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v23

    invoke-direct {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    new-instance v7, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->PA:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v8, " \u001f*\u0010(\u0015,\u001c7\u00161\u0010,\u001f,\u0001"

    invoke-static {v8}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    if-nez v7, :cond_16

    :cond_3
    const-string v7, "q,d,d,d"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v10, v7

    :goto_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->PA:Landroid/view/View;

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v7, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->K:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->K:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v24, "\u0010/\u001a \u0018%\u001c,\u0007&\u00017\u0016;\u0007"

    invoke-static/range {v24 .. v24}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->K:Landroid/widget/TextView;

    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v8, "\n>\u00001\u00024\u0006=\u001d7\u001b&\u000c*\u001d1\u0006>\u0006 "

    invoke-static {v8}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    if-nez v7, :cond_5

    :cond_4
    const-string v7, "PsCsCsC"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->K:Landroid/widget/TextView;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v24, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v8, "\n>\u00001\u00024\u0006=\u001d7\u001b&\u000c*\u001d%\u00006\u001d:"

    invoke-static {v8}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v25, "\u0010/\u001a \u0018%\u001c,\u0007&\u00017\u0016;\u0007+\u0016*\u0014+\u0007"

    invoke-static/range {v25 .. v25}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v24

    invoke-direct {v0, v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v8, "\u001a:\u0006%\u00073\u001f;\u000e3\u001d;\u0006<"

    invoke-static {v8}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_f

    add-int/lit8 v7, v21, 0x46

    move v8, v7

    move v7, v9

    :goto_7
    add-int/lit8 v7, v7, 0x5

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v25

    invoke-virtual {v0, v8, v7, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v25, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    add-int/lit8 v7, v16, -0x5

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v24

    div-int/lit8 v7, v24, 0x2

    int-to-float v7, v7

    const/high16 v8, 0x41200000    # 10.0f

    cmpl-float v8, v7, v8

    if-lez v8, :cond_15

    const/high16 v7, 0x41200000    # 10.0f

    move v8, v7

    :goto_8
    add-int/lit8 v7, v22, -0x5

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v26

    div-int/lit8 v7, v26, 0x2

    int-to-float v7, v7

    const/high16 v27, 0x41200000    # 10.0f

    cmpl-float v27, v7, v27

    if-lez v27, :cond_6

    const/high16 v7, 0x41200000    # 10.0f

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController;->MA:Landroid/widget/Button;

    move-object/from16 v27, v0

    if-eqz v27, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController;->MA:Landroid/widget/Button;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Button;->invalidate()V

    :cond_7
    new-instance v27, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ievyhrdnoniovof/AdController;->MA:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController;->MA:Landroid/widget/Button;

    move-object/from16 v27, v0

    const-string v28, "\u0001\u0012 \u0018"

    invoke-static/range {v28 .. v28}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController;->MA:Landroid/widget/Button;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController;->MA:Landroid/widget/Button;

    move-object/from16 v27, v0

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/Button;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController;->MA:Landroid/widget/Button;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v28

    move/from16 v3, v28

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController;->MA:Landroid/widget/Button;

    move-object/from16 v27, v0

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/Button;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController;->MA:Landroid/widget/Button;

    move-object/from16 v27, v0

    new-instance v28, Lcom/ievyhrdnoniovof/AdController$8;

    invoke-direct/range {v28 .. v29}, Lcom/ievyhrdnoniovof/AdController$8;-><init>(Lcom/ievyhrdnoniovof/AdController;)V

    invoke-virtual/range {v27 .. v28}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController;->JA:Landroid/widget/Button;

    move-object/from16 v27, v0

    if-eqz v27, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController;->JA:Landroid/widget/Button;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Button;->invalidate()V

    :cond_8
    new-instance v27, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ievyhrdnoniovof/AdController;->JA:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController;->JA:Landroid/widget/Button;

    move-object/from16 v27, v0

    const-string v28, "\n"

    invoke-static/range {v28 .. v28}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController;->JA:Landroid/widget/Button;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->JA:Landroid/widget/Button;

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->JA:Landroid/widget/Button;

    const/16 v27, 0x0

    move/from16 v0, v27

    move/from16 v1, v27

    move/from16 v2, v27

    move/from16 v3, v27

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/Button;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->JA:Landroid/widget/Button;

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->JA:Landroid/widget/Button;

    new-instance v12, Lcom/ievyhrdnoniovof/AdController$9;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/ievyhrdnoniovof/AdController$9;-><init>(Lcom/ievyhrdnoniovof/AdController;)V

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    invoke-direct {v8, v12}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->lA:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->lA:Landroid/widget/Button;

    const-string v12, "M"

    invoke-static {v12}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->lA:Landroid/widget/Button;

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->lA:Landroid/widget/Button;

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->lA:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v8, v12, v12, v12, v12}, Landroid/widget/Button;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->lA:Landroid/widget/Button;

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->lA:Landroid/widget/Button;

    new-instance v12, Lcom/ievyhrdnoniovof/AdController$10;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/ievyhrdnoniovof/AdController$10;-><init>(Lcom/ievyhrdnoniovof/AdController;)V

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->dA:Landroid/widget/Button;

    if-eqz v8, :cond_9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->dA:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->invalidate()V

    :cond_9
    new-instance v8, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    invoke-direct {v8, v12}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->dA:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->dA:Landroid/widget/Button;

    const-string v12, "n"

    invoke-static {v12}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->dA:Landroid/widget/Button;

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->dA:Landroid/widget/Button;

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->dA:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v8, v8, v8}, Landroid/widget/Button;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->dA:Landroid/widget/Button;

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->dA:Landroid/widget/Button;

    new-instance v8, Lcom/ievyhrdnoniovof/AdController$11;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/ievyhrdnoniovof/AdController$11;-><init>(Lcom/ievyhrdnoniovof/AdController;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v8, 0x1e

    move/from16 v0, v26

    invoke-direct {v7, v8, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v10, "\u0010/\u001a \u0018%\u001c,\u0007&\u0001+\u0016*\u0014+\u0007"

    invoke-static {v10}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    sub-int v8, v8, v26

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x3

    add-int/lit8 v10, v21, 0x5

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v8, v11, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    add-int/lit8 v11, v21, 0x5

    add-int/lit8 v11, v11, 0x1e

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v8, v12, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v11, "1\u0005;\n9\u001d;\u001d>\u000c$\u0000!\u00000\u00057"

    invoke-static {v11}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const/4 v11, 0x1

    if-ne v7, v11, :cond_10

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ievyhrdnoniovof/AdController;->B:Landroid/view/View;

    move-object/from16 v0, v19

    invoke-virtual {v7, v11, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v11, " \u001f*\u0010(\u0007*\u0007/\u00167\u0016;\u0007"

    invoke-static {v11}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, ""

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ievyhrdnoniovof/AdController;->b:Landroid/widget/TextView;

    move-object/from16 v0, v20

    invoke-virtual {v7, v11, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v11, "!\u0001=\u001e1\u0005=\u001a7"

    invoke-static {v11}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const/4 v11, 0x1

    if-ne v7, v11, :cond_11

    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v11, 0x37

    move/from16 v0, v24

    invoke-direct {v7, v11, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->FA:Landroid/view/ViewGroup$MarginLayoutParams;

    add-int v7, v15, v17

    add-int/lit8 v7, v7, -0x37

    add-int/lit8 v7, v7, -0x5

    sub-int v11, v16, v24

    div-int/lit8 v11, v11, 0x2

    add-int v11, v11, v18

    add-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ievyhrdnoniovof/AdController;->FA:Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v15, 0x0

    invoke-virtual {v12, v7, v11, v15, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ievyhrdnoniovof/AdController;->FA:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->cA:Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ievyhrdnoniovof/AdController;->JA:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ievyhrdnoniovof/AdController;->cA:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v7, v11, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v5, p0

    :goto_9
    iget-object v7, v5, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v11, "\n>\u00001\u00024\u0006=\u001d7\u001b$\u0000!\u00000\u00057"

    invoke-static {v11}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const/4 v11, 0x1

    if-ne v7, v11, :cond_12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ievyhrdnoniovof/AdController;->PA:Landroid/view/View;

    move-object/from16 v0, v23

    invoke-virtual {v7, v11, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v11, "\u0010/\u001a \u0018%\u001c,\u0007&\u00017\u0016;\u0007"

    invoke-static {v11}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, ""

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ievyhrdnoniovof/AdController;->K:Landroid/widget/TextView;

    move-object/from16 v0, v25

    invoke-virtual {v7, v11, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v11, "\u001a:\u0006%\u00073\u001f;\u000e3\u001d;\u0006<"

    invoke-static {v11}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const/4 v11, 0x1

    if-ne v7, v11, :cond_c

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ievyhrdnoniovof/AdController;->dA:Landroid/widget/Button;

    invoke-virtual {v7, v11, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ievyhrdnoniovof/AdController;->lA:Landroid/widget/Button;

    invoke-virtual {v7, v10, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v8, "\u0000+\u001c4\u0010/\u001c0\u0016"

    invoke-static {v8}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_13

    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v8, 0x37

    move/from16 v0, v26

    invoke-direct {v7, v8, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v10, "\n>\u00001\u00024\u0006=\u001d7\u001b%\u00006\u001d:"

    invoke-static {v10}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    add-int v8, v8, v21

    add-int/lit8 v8, v8, -0x37

    add-int/lit8 v8, v8, -0x5

    sub-int v10, v22, v26

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ievyhrdnoniovof/AdController;->MA:Landroid/widget/Button;

    invoke-virtual {v7, v9, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v5, p0

    :goto_a
    iget-boolean v7, v5, Lcom/ievyhrdnoniovof/AdController;->Y:Z

    const-string v8, "LBAdController"

    if-eqz v7, :cond_14

    const-string v7, "4,\u001a-\u0014c\u0007,S\"\u0017\'S.%*\u00164S \u001f*\u0010(S4\u001a-\u0017,\u0004"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v7, v8, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v5, p0

    :goto_b
    iget-object v6, v5, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    if-eqz v6, :cond_d

    :try_start_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v7, "6\u0000&\u0010/\u001a \u00184\u001a-\u0017,\u0004"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "c"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "LBAdController"

    const-string v7, "\u001c-2\'0/\u001a \u0018&\u0017c\u00071\u001a$\u0014&\u0001&\u0017"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    invoke-interface {v6}, Lcom/ievyhrdnoniovof/AdListener;->onAdClicked()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_d
    :goto_c
    :try_start_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v7, "6\u0000&\u0010/\u001a \u00184\u001a-\u0017,\u0004"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "c"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4

    move-result v6

    if-eqz v6, :cond_e

    :try_start_9
    new-instance v6, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/ievyhrdnoniovof/AdController;->CA:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/ievyhrdnoniovof/AdController;->KA:I

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v7, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8, v7}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_4

    .end local v5    # "this":Lcom/ievyhrdnoniovof/AdController;
    :cond_e
    :goto_d
    return-void

    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    :catch_0
    move-exception v6

    :try_start_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_4

    move-object/from16 v5, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local v5    # "this":Lcom/ievyhrdnoniovof/AdController;
    goto/16 :goto_0

    .end local v5    # "this":Lcom/ievyhrdnoniovof/AdController;
    :catch_1
    move-exception v7

    move-object/from16 v5, p0

    .restart local v5    # "this":Lcom/ievyhrdnoniovof/AdController;
    goto/16 :goto_2

    :catch_2
    move-exception v7

    move-object/from16 v5, p0

    goto/16 :goto_4

    :cond_f
    add-int/lit8 v7, v21, 0x14

    move v8, v7

    move v7, v9

    goto/16 :goto_7

    :cond_10
    :try_start_b
    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v11, " \u001f*\u0010(\u0004*\u001d\'\u001c4\u0004*\u00177\u001b"

    invoke-static {v11}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v12, "1\u0005;\n9\u001e;\u00076\u0006%\u00017\u00005\u0001&"

    invoke-static {v12}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    add-int v11, v11, v16

    invoke-direct {v7, v6, v11}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v11, " \u001f*\u0010(\u0007*\u0007/\u0016+\u0016*\u0014+\u0007"

    invoke-static {v11}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    sub-int v6, v14, v6

    const/4 v11, 0x0

    invoke-virtual {v7, v13, v6, v11, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :cond_11
    move-object/from16 v5, p0

    goto/16 :goto_9

    :cond_12
    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v8, " \u001f*\u0010(\u0004*\u001d\'\u001c4\u0004*\u00177\u001b"

    invoke-static {v8}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v9, "1\u0005;\n9\u001e;\u00076\u0006%\u00017\u00005\u0001&"

    invoke-static {v9}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    add-int v8, v8, v22

    invoke-direct {v7, v6, v8}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v6, 0x0

    invoke-virtual {v7, v13, v14, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :cond_13
    move-object/from16 v5, p0

    goto/16 :goto_a

    :cond_14
    const-string v7, "\u0015\u0006;\u00075I&\u0006r\u00086\rr\u001e7\u000b$\u00007\u001er\n>\u00001\u0002r\u001e;\u00076\u0006%"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-virtual {v7, v8, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v5, p0

    goto/16 :goto_b

    :catch_3
    move-exception v6

    const-string v7, "LBAdController"

    const-string v8, "\u000c \u001b=\u001br\u001e:\u000c<I=\u0007\u0013\r\u0011\u0005;\n9\u000c6I&\u001b;\u000e5\u000c \u000c6"

    invoke-static {v8}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ievyhrdnoniovof/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "LBAdController"

    invoke-static {v7, v6}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_c

    .end local v5    # "this":Lcom/ievyhrdnoniovof/AdController;
    :catch_4
    move-exception v6

    const-string v7, "LBAdController"

    invoke-static {v7, v6}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    const-string v7, "LBAdController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    const-string v10, "\u0018:\u001d\'r,*\n7\u0019&\u0000=\u0007rDr"

    invoke-static {v10}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/ievyhrdnoniovof/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .restart local v5    # "this":Lcom/ievyhrdnoniovof/AdController;
    :catch_5
    move-exception v6

    :try_start_c
    const-string v7, "LBAdController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    const-string v10, "61\u0001,\u0001c\u0012\'\u0017*\u001d$S \u001f*\u0010(S4\u001a-\u0017,\u0004c\u001f\"\n,\u00067SnS"

    invoke-static {v10}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/ievyhrdnoniovof/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_d

    .end local v5    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    :catch_6
    move-exception v6

    goto/16 :goto_1

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local v5    # "this":Lcom/ievyhrdnoniovof/AdController;
    :cond_15
    move v8, v7

    goto/16 :goto_8

    :cond_16
    move-object v10, v7

    goto/16 :goto_6

    :cond_17
    move-object v11, v7

    goto/16 :goto_5

    :cond_18
    move-object v12, v7

    goto/16 :goto_3
.end method

.method private synthetic b()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdWebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .local v0, "this":Lcom/ievyhrdnoniovof/AdController;
    :goto_0
    :try_start_1
    iget-object v1, v0, Lcom/ievyhrdnoniovof/AdController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdView;->stopLoading()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, p0

    :goto_1
    iget-object v1, v0, Lcom/ievyhrdnoniovof/AdController;->hA:Lcom/ievyhrdnoniovof/AdTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->hA:Lcom/ievyhrdnoniovof/AdTask;

    invoke-virtual {v1, v3}, Lcom/ievyhrdnoniovof/AdTask;->cancel(Z)Z

    :cond_0
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->DA:Lcom/ievyhrdnoniovof/AdAudioTask;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->DA:Lcom/ievyhrdnoniovof/AdAudioTask;

    invoke-virtual {v1, v3}, Lcom/ievyhrdnoniovof/AdAudioTask;->cancel(Z)Z

    :cond_1
    const-string v1, "LBAdController"

    const-string v2, " \u001f,\u0000&&-\u001f,\u0010(\u00161S \u0012/\u001f&\u0017"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/ievyhrdnoniovof/AdController;->e:Z

    iput-boolean v5, p0, Lcom/ievyhrdnoniovof/AdController;->A:Z

    iput-boolean v5, p0, Lcom/ievyhrdnoniovof/AdController;->v:Z

    iput-boolean v5, p0, Lcom/ievyhrdnoniovof/AdController;->rA:Z

    iput-boolean v3, p0, Lcom/ievyhrdnoniovof/AdController;->HA:Z

    iput-boolean v5, p0, Lcom/ievyhrdnoniovof/AdController;->z:Z

    iput-boolean v3, p0, Lcom/ievyhrdnoniovof/AdController;->m:Z

    iput-boolean v5, p0, Lcom/ievyhrdnoniovof/AdController;->o:Z

    iput-boolean v5, p0, Lcom/ievyhrdnoniovof/AdController;->s:Z

    iput-boolean v5, p0, Lcom/ievyhrdnoniovof/AdController;->xA:Z

    iput-boolean v5, p0, Lcom/ievyhrdnoniovof/AdController;->H:Z

    iput-boolean v3, p0, Lcom/ievyhrdnoniovof/AdController;->nA:Z

    iput-boolean v5, p0, Lcom/ievyhrdnoniovof/AdController;->Y:Z

    iput-boolean v5, p0, Lcom/ievyhrdnoniovof/AdController;->R:Z

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->I:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->I:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->EA:Lcom/ievyhrdnoniovof/AdController$OfferPolling;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    :try_start_2
    const-string v1, "\u0008<\r \u0006;\r|\u001e7\u000b9\u0000&G\u0005\u000c0?;\u000c%"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v1, "\u001c-#\"\u00060\u0016"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\u0008<\r \u0006;\r|\u001e7\u000b9\u0000&G\u0005\u000c0?;\u000c%"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v1, "\u001c-#\"\u00060\u0016"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdController;->d:Lcom/ievyhrdnoniovof/AdView;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, p0

    :goto_2
    :try_start_3
    iget-object v1, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/ievyhrdnoniovof/AdController$13;

    invoke-direct {v2, p0}, Lcom/ievyhrdnoniovof/AdController$13;-><init>(Lcom/ievyhrdnoniovof/AdController;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->E:Landroid/webkit/WebView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->E:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v2, "\u0013\u0001&\u0015&\u0001&\u001d \u0016"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "(\u00166\u0011%\u001d:\u0017+\u0007=\u0006&\u001c6\u0011%\u001b*\u0019,\u0016"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->J()V

    :goto_4
    return-void

    .end local v0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    :catch_0
    move-exception v1

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local v0    # "this":Lcom/ievyhrdnoniovof/AdController;
    goto/16 :goto_0

    :catch_1
    move-exception v1

    move-object v0, p0

    goto/16 :goto_1

    :catch_2
    move-exception v1

    move-object v0, p0

    goto :goto_2

    :catch_3
    move-exception v1

    const-string v2, "LBAdController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*>\u0006!\u000c\u0007\u0007>\u00061\u00027\u001br\u000c \u001b=\u001brDr"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ievyhrdnoniovof/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "\u00027\u001c0\u000f<\u00106\u0001&\u0017\'\u000c=\u001c0\u000f:\u00008\u00067"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_4
.end method

.method static synthetic b(Lcom/ievyhrdnoniovof/AdController;)Z
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController;->H:Z

    return v0
.end method

.method static synthetic c(Lcom/ievyhrdnoniovof/AdController;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    return-object v0
.end method

.method private synthetic c()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController;->m:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdController;->adShowStatus()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u0001;\r6\u000c<"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "LBAdController"

    const-string v1, "\u0002\u0017c\u0003\"\u00060\u0016\'_c\u0004*\u001f/S-\u001c7S0\u001b,\u0004"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "LBAdController"

    const-string v1, "\u0006<(693\u001c!\u000c6I&\u001b;\u000e5\u000c \u000c6"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    invoke-interface {v0}, Lcom/ievyhrdnoniovof/AdListener;->onAdPaused()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "LBAdController"

    const-string v3, "\u001a-\u001a7\u001a\"\u001f*\t*\u001d$]m]"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->hA:Lcom/ievyhrdnoniovof/AdTask;

    if-eqz v0, :cond_8

    const-string v0, "LBAdController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(6=3\u001a9I!\u001d3\u001d\'\u001arDr"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ievyhrdnoniovof/AdController;->hA:Lcom/ievyhrdnoniovof/AdTask;

    invoke-virtual {v4}, Lcom/ievyhrdnoniovof/AdTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->hA:Lcom/ievyhrdnoniovof/AdTask;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController;->qA:Z

    if-eqz v0, :cond_3

    const-string v0, "\u0012\'\u0010"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-boolean v3, p0, Lcom/ievyhrdnoniovof/AdController;->k:Z

    if-eqz v3, :cond_4

    const-string v3, "\"\u0006\'\u001a,\u0010"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_3
    const-string v5, "LBAdController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0004\u001c*\u001d$S7\u001cc\u001e\"\u0018&S1\u00162\u0006&\u00007]m]"

    invoke-static {v6}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v4, p0, Lcom/ievyhrdnoniovof/AdController;->xA:Z

    if-eqz v4, :cond_5

    move-object v4, v3

    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/ievyhrdnoniovof/AdTask;

    iget-object v5, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    iget-object v6, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/ievyhrdnoniovof/AdController;->xA:Z

    if-eqz v7, :cond_6

    :goto_5
    invoke-direct {v4, p0, v5, v6, v3}, Lcom/ievyhrdnoniovof/AdTask;-><init>(Lcom/ievyhrdnoniovof/AdController;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/ievyhrdnoniovof/AdController;->hA:Lcom/ievyhrdnoniovof/AdTask;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->hA:Lcom/ievyhrdnoniovof/AdTask;

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdController;->P:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ievyhrdnoniovof/AdTask;->setSubId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->hA:Lcom/ievyhrdnoniovof/AdTask;

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdController;->Q:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/ievyhrdnoniovof/AdTask;->setTokens(Ljava/util/List;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->hA:Lcom/ievyhrdnoniovof/AdTask;

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/ievyhrdnoniovof/AdController;->L(Landroid/os/AsyncTask;[Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    const-string v0, "\u00086"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v3, "3\u001c6\u0000="

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    move-object v4, v0

    goto :goto_4

    :cond_6
    move-object v3, v0

    goto :goto_5

    :cond_7
    const-string v0, "LBAdController"

    const-string v1, "\u001c\u0006r\u001b7\u0018\'\u000c!\u001dr\u001d=I0\u000cr\u00043\r7I\u007fI\u0000\u000c#\u001c7\u001a&I;\u0007r\u0019 \u00065\u001b7\u001a!"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto/16 :goto_1
.end method

.method static synthetic d(Lcom/ievyhrdnoniovof/AdController;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->fA:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private synthetic d()Z
    .locals 11

    .prologue
    const-wide/16 v9, -0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v2, "\u0013\u0001&\u0015&\u0001&\u001d \u0016"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":\u00166\u0011(\u0011!\u00176\u0006 \u001f,\r"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "LBAdController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " \u0012 \u001b&\'*\u001e&SnS"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Er\n\'\u001brDr\n3\n:\u000c\u0006\u0000?\u000crTr"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v3, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v5, v1, v9

    if-eqz v5, :cond_0

    sub-long v1, v3, v1

    const-wide/32 v3, 0x493e0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic e(Lcom/ievyhrdnoniovof/AdController;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->c:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic f(Lcom/ievyhrdnoniovof/AdController;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->eA:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic g(Lcom/ievyhrdnoniovof/AdController;)F
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iget v0, p0, Lcom/ievyhrdnoniovof/AdController;->p:F

    return v0
.end method

.method private synthetic h()V
    .locals 15

    .prologue
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v2, "9 \u000c4\u000c \u000c<\n7"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v5, " \u0007,\u0002?\u0002!\u000e,\u0002\'\u00176\u000e#\u00176\u0007,"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "b"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v5, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v1, 0x2710

    add-long/2addr v1, v7

    const-wide/16 v9, 0x19

    cmp-long v9, v5, v9

    if-lez v9, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v9, "\u00107\u001c2\u000f2\u0011>\u001c:\r\'\u0006!\u00152\u000f,"

    invoke-static {v9}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v2, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v9, 0x0

    invoke-interface {v3, v1, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "LBAdController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    const-string v11, "\'=I;\u0007&\u000c \u00077\u001d~I3\u0005 \u000c3\r+I&\u001b;\u000c6IgI&\u0000?\u000c!Er\u001a7\u001dr\u0000&I&\u0006r\u001d;\u00047\u001br"

    invoke-static {v11}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u0000"

    invoke-static {v10}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "LBAdController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    const-string v11, "=;\u00047\u001ar\u0008&\u001d7\u0004\"\u001d7\rrTr"

    invoke-static {v11}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x3e8

    mul-long/2addr v1, v5

    add-long/2addr v1, v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const-string v6, "\u00107\u001c2\u000f2\u0011>\u001c\'\n>\u0006,"

    invoke-static {v6}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const-string v6, "\u0001-\r(\u001e(\u0000$\r(\u0006=\u0017$\u0002=\u0017-\r"

    invoke-static {v6}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "C"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .local v0, "this":Lcom/ievyhrdnoniovof/AdController;
    move-wide v13, v1

    move-wide v2, v13

    :goto_0
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v4, "3\u00053\u001b?"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, v0, Lcom/ievyhrdnoniovof/AdController;->iA:Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-class v5, Lcom/ievyhrdnoniovof/ReEngagement;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "\u0000&\u00107\u001a,\u001d*\u0017"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->T:Landroid/app/PendingIntent;

    :try_start_0
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->iA:Landroid/app/AlarmManager;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ievyhrdnoniovof/AdController;->T:Landroid/app/PendingIntent;

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    .end local v0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    :cond_0
    const-wide/16 v9, 0x5

    rem-long v9, v5, v9

    const-wide/16 v11, 0x0

    cmp-long v3, v9, v11

    if-nez v3, :cond_1

    const-wide/16 v9, 0x0

    cmp-long v3, v5, v9

    if-lez v3, :cond_1

    const-wide/32 v1, 0x927c0

    add-long/2addr v1, v7

    const-string v3, "LBAdController"

    const-string v7, "\u001c\u0006r\u0000<\u001d7\u001b<\u000c&Er\u001b7\u001d \u0010r\u0008>\u0008 \u0004r\u0000<IcYr\u0004;\u0007!"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    const-string v8, " \u0007,\u0002?\u0002!\u000e,\u0002\'\u00176\u000e#\u00176\u0007,"

    invoke-static {v8}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local v0    # "this":Lcom/ievyhrdnoniovof/AdController;
    move-wide v13, v1

    move-wide v2, v13

    goto/16 :goto_0

    .end local v0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    :cond_1
    const-string v3, "LBAdController"

    const-string v7, "\u001c\u0006r\u0000<\u001d7\u001b<\u000c&Er\u001b7\u001d \u0010r\u0008>\u0008 \u0004r\u0000<IcY!"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    const-string v8, " \u0007,\u0002?\u0002!\u000e,\u0002\'\u00176\u000e#\u00176\u0007,"

    invoke-static {v8}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local v0    # "this":Lcom/ievyhrdnoniovof/AdController;
    move-wide v13, v1

    move-wide v2, v13

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v2, "LBAdController"

    invoke-static {v2, v1}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1
.end method

.method static synthetic h(Lcom/ievyhrdnoniovof/AdController;)V
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->L()V

    return-void
.end method

.method static synthetic i(Lcom/ievyhrdnoniovof/AdController;)Z
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController;->qA:Z

    return v0
.end method

.method static synthetic j(Lcom/ievyhrdnoniovof/AdController;)I
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iget v0, p0, Lcom/ievyhrdnoniovof/AdController;->zA:I

    return v0
.end method

.method private synthetic j()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController;->R:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v1, "\u0012\'\u001a.\u00031\u00160\u0000*\u001c-\u00061\u001f"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/ievyhrdnoniovof/AdController$AdClientPixel;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ievyhrdnoniovof/AdController$AdClientPixel;-><init>(Lcom/ievyhrdnoniovof/AdController;Lcom/ievyhrdnoniovof/AdController$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/ievyhrdnoniovof/AdController;->A(Landroid/os/AsyncTask;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-boolean v4, p0, Lcom/ievyhrdnoniovof/AdController;->R:Z

    goto :goto_0
.end method

.method static synthetic k(Lcom/ievyhrdnoniovof/AdController;)I
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iget v0, p0, Lcom/ievyhrdnoniovof/AdController;->WA:I

    return v0
.end method

.method static synthetic l(Lcom/ievyhrdnoniovof/AdController;F)F
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;
    .param p1, "arg1"    # F

    .prologue
    iput p1, p0, Lcom/ievyhrdnoniovof/AdController;->p:F

    return p1
.end method

.method private synthetic l()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdWebView;->getVisibility()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->d:Lcom/ievyhrdnoniovof/AdView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdView;->getVisibility()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method static synthetic l(Lcom/ievyhrdnoniovof/AdController;)I
    .locals 2
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iget v0, p0, Lcom/ievyhrdnoniovof/AdController;->WA:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ievyhrdnoniovof/AdController;->WA:I

    return v0
.end method

.method static synthetic l(Lcom/ievyhrdnoniovof/AdController;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;
    .param p1, "arg1"    # Landroid/app/ProgressDialog;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdController;->C:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic l(Lcom/ievyhrdnoniovof/AdController;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;
    .param p1, "arg1"    # Landroid/media/MediaPlayer;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdController;->fA:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic l(Lcom/ievyhrdnoniovof/AdController;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;
    .param p1, "arg1"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdController;->I:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic l(Lcom/ievyhrdnoniovof/AdController;Ljava/lang/String;Z)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;Z)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private synthetic l(Ljava/lang/String;Z)Landroid/view/animation/Animation;
    .locals 11
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    const-string v0, "\u0007=\u00077"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v6

    :cond_0
    const/16 v8, 0x1f4

    :try_start_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v3, "\u0004*\u001d\'\u001c4\u0004*\u00177\u001b"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v5, "\u001e;\u00076\u0006%\u00017\u00005\u0001&"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v5, "\u0004*\u001d\'\u001c4\u000b"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v5, "%\u0000<\r=\u001e+"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v3, "%\u0012\'\u0016"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v7, v1

    move v0, v2

    move v3, v4

    move v2, v4

    :goto_1
    if-eqz p2, :cond_b

    int-to-float v4, v9

    int-to-float v0, v10

    move v5, v4

    move v4, v2

    move v2, v3

    move v3, v0

    :goto_2
    if-eqz v1, :cond_9

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v5, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    int-to-long v1, v8

    :try_start_1
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    move-object v6, v0

    goto :goto_0

    :cond_1
    :try_start_2
    const-string v3, "!\u0005;\r7\u00057\u000f&"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    rsub-int/lit8 v0, v0, 0x0

    int-to-float v3, v0

    move v7, v2

    move v0, v1

    move v2, v4

    goto :goto_1

    :cond_2
    const-string v3, "0\u001f*\u0017&\u0001*\u0014+\u0007"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/2addr v0, v9

    int-to-float v3, v0

    move v7, v2

    move v0, v1

    move v2, v4

    goto :goto_1

    :cond_3
    const-string v3, "!\u0005;\r7\r=\u001e<"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    rsub-int/lit8 v0, v7, 0x0

    int-to-float v3, v0

    move v7, v2

    move v0, v1

    move v2, v3

    move v3, v4

    goto :goto_1

    :cond_4
    const-string v3, "\u0000/\u001a\'\u00166\u0003"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    int-to-float v3, v7

    move v7, v2

    move v0, v1

    move v2, v3

    move v3, v4

    goto :goto_1

    :cond_5
    const-string v3, "\u001a>\u00006\u000c&\u0006\"\u00057\u000f&"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    rsub-int/lit8 v0, v0, 0x0

    int-to-float v5, v0

    rsub-int/lit8 v0, v7, 0x0

    int-to-float v3, v0

    move v7, v2

    move v0, v1

    move v2, v3

    move v3, v5

    goto :goto_1

    :cond_6
    const-string v3, "\u0000/\u001a\'\u00167\u001c3\u0001*\u0014+\u0007"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/2addr v0, v9

    int-to-float v5, v0

    rsub-int/lit8 v0, v7, 0x0

    int-to-float v3, v0

    move v7, v2

    move v0, v1

    move v2, v3

    move v3, v5

    goto/16 :goto_1

    :cond_7
    const-string v3, "!\u0005;\r7\u000b=\u001d&\u0006?\u00057\u000f&"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    rsub-int/lit8 v0, v0, 0x0

    int-to-float v5, v0

    int-to-float v3, v7

    move v7, v2

    move v0, v1

    move v2, v3

    move v3, v5

    goto/16 :goto_1

    :cond_8
    const-string v3, "0\u001f*\u0017&\u0011,\u00077\u001c.\u0001*\u0014+\u0007"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    add-int/2addr v0, v9

    int-to-float v3, v0

    int-to-float v0, v7

    move v5, v3

    move v3, v0

    move v0, v1

    :goto_4
    move v7, v2

    move v2, v3

    move v3, v5

    goto/16 :goto_1

    :cond_9
    if-eqz v7, :cond_a

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    int-to-long v1, v8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object v0, v6

    goto/16 :goto_3

    :cond_a
    move-object v0, v6

    goto/16 :goto_3

    :cond_b
    move v1, v0

    move v5, v3

    move v3, v2

    move v2, v4

    goto/16 :goto_2

    :cond_c
    move v0, v2

    move v3, v4

    move v5, v4

    goto :goto_4
.end method

.method static synthetic l(Lcom/ievyhrdnoniovof/AdController;Lcom/ievyhrdnoniovof/AdController$OfferPolling;)Lcom/ievyhrdnoniovof/AdController$OfferPolling;
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;
    .param p1, "arg1"    # Lcom/ievyhrdnoniovof/AdController$OfferPolling;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdController;->EA:Lcom/ievyhrdnoniovof/AdController$OfferPolling;

    return-object p1
.end method

.method static synthetic l(Lcom/ievyhrdnoniovof/AdController;Lcom/ievyhrdnoniovof/AdController$Polling;)Lcom/ievyhrdnoniovof/AdController$Polling;
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;
    .param p1, "arg1"    # Lcom/ievyhrdnoniovof/AdController$Polling;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdController;->V:Lcom/ievyhrdnoniovof/AdController$Polling;

    return-object p1
.end method

.method protected static l(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 9
    .param p0, "arg0"    # Lorg/json/JSONObject;
    .param p1, "arg1"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/NumberFormatException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    array-length v6, v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, v6, :cond_8

    aget-object v2, v4, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x5f

    const/16 v7, 0x2d

    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    const-string v7, "int"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "q"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    :try_start_1
    const-string v7, "Ps\u000b"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_1
    move-object v8, v2

    move v2, v0

    move-object v0, v8

    :goto_2
    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v7, 0x1

    :try_start_3
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x10

    invoke-static {v0, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    const-string v7, "LBAdController"

    invoke-static {v7, v0}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_3
    const-string v7, "class java.lang.String"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v2, "LBAdController"

    invoke-static {v2, v0}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    :cond_4
    :try_start_5
    const-string v7, "boolean"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    const-string v7, "float"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    const-string v7, "class com.ievyhrdnoniovof.AdNavigationStringEnum"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdNavigationStringEnum;->fromString(Ljava/lang/String;)Lcom/ievyhrdnoniovof/AdNavigationStringEnum;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    const-string v7, "class com.ievyhrdnoniovof.AdTransitionStringEnum"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdTransitionStringEnum;->fromString(Ljava/lang/String;)Lcom/ievyhrdnoniovof/AdTransitionStringEnum;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    :cond_8
    return-object v5
.end method

.method public static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v3, v0, [C

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v4, v1, -0x1

    xor-int/lit8 v0, v0, 0x6a

    int-to-char v0, v0

    aput-char v0, v3, v1

    if-ltz v4, :cond_0

    add-int/lit8 v0, v4, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    xor-int/lit8 v1, v1, 0x66

    int-to-char v1, v1

    aput-char v1, v3, v4

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method private synthetic l(Landroid/os/AsyncTask;)V
    .locals 3
    .param p1, "arg0"    # Landroid/os/AsyncTask;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private varargs synthetic l(Landroid/os/AsyncTask;[Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/AsyncTask;
    .param p2, "arg1"    # [Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Landroid/graphics/Bitmap;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private synthetic l(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->B:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->PA:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->K:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->dA:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->lA:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->JA:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->MA:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->x:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->i:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :try_start_0
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .local v0, "this":Lcom/ievyhrdnoniovof/AdController;
    :goto_0
    iget-object v1, v0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->e:Z

    if-nez v1, :cond_0

    :try_start_1
    const-string v1, "LBAdController"

    const-string v2, ",\u001d\u0002\u0017\u0000\u001f,\u0000&\u0017c\u00071\u001a$\u0014&\u0001&\u0017"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    invoke-interface {v1}, Lcom/ievyhrdnoniovof/AdListener;->onAdClosed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    .end local v0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    :catch_0
    move-exception v1

    const-string v2, "LBAdController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const-string v5, "\u0017\u001b \u0006 I%\u00017\u0007r\u001d \u0010;\u00075I&\u0006r\u001b7\u0004=\u001f7I>\u0008+\u0006\'\u001drDr"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ievyhrdnoniovof/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local v0    # "this":Lcom/ievyhrdnoniovof/AdController;
    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "LBAdController"

    const-string v3, "7\u001b \u0006 I%\u00017\u0007r\u0006<(6*>\u0006!\u000c6I&\u001b;\u000e5\u000c \u000c6"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ievyhrdnoniovof/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "LBAdController"

    invoke-static {v2, v1}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method static synthetic l(Lcom/ievyhrdnoniovof/AdController;Landroid/view/View;)V
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;
    .param p1, "arg1"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/ievyhrdnoniovof/AdController;->l(Landroid/view/View;)V

    return-void
.end method

.method private synthetic l(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/CharSequence;
    .param p4, "arg3"    # Ljava/lang/CharSequence;
    .param p5, "arg4"    # Ljava/lang/CharSequence;
    .param p6, "arg5"    # Landroid/app/NotificationManager;
    .param p7, "arg6"    # Landroid/app/PendingIntent;
    .param p8, "arg7"    # Landroid/widget/RemoteViews;

    .prologue
    const-string v0, "LBAdController"

    const-string v1, "\u001d \u00005\u000e7\u001b\u001c\u0006&\u00004\u00001\u0008&\u0000=\u0007r*3\u0005>\u000c6"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_0
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2, p2, p3, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v2, Landroid/app/Notification;->flags:I

    if-eqz p8, :cond_0

    iput-object p7, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object p8, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :goto_0
    const/16 v0, 0x320

    invoke-virtual {p6, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->D()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/ievyhrdnoniovof/AdWakeLock;->release()V

    :goto_1
    return v0

    :cond_0
    :try_start_1
    invoke-virtual {v2, p1, p4, p5, p7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/ievyhrdnoniovof/AdWakeLock;->release()V

    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/ievyhrdnoniovof/AdWakeLock;->release()V

    throw v0
.end method

.method static synthetic l(Lcom/ievyhrdnoniovof/AdController;Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;
    .param p1, "arg1"    # Landroid/content/Context;
    .param p2, "arg2"    # I
    .param p3, "arg3"    # Ljava/lang/CharSequence;
    .param p4, "arg4"    # Ljava/lang/CharSequence;
    .param p5, "arg5"    # Ljava/lang/CharSequence;
    .param p6, "arg6"    # Landroid/app/NotificationManager;
    .param p7, "arg7"    # Landroid/app/PendingIntent;
    .param p8, "arg8"    # Landroid/widget/RemoteViews;

    .prologue
    invoke-direct/range {p0 .. p8}, Lcom/ievyhrdnoniovof/AdController;->l(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z

    move-result v0

    return v0
.end method

.method static synthetic l(Lcom/ievyhrdnoniovof/AdController;Z)Z
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;
    .param p1, "arg1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/ievyhrdnoniovof/AdController;->xA:Z

    return p1
.end method

.method static synthetic m(Lcom/ievyhrdnoniovof/AdController;)Lcom/ievyhrdnoniovof/AdController$OfferPolling;
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->EA:Lcom/ievyhrdnoniovof/AdController$OfferPolling;

    return-object v0
.end method

.method private synthetic m()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v0, "LBAdController"

    const-string v1, "\u0000<\n \u000c?\u000c<\u001dr\u0008\'\r;\u0006r\n=\u001c<\u001d7\u001br\n3\u0005>\u000c6"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v1, "\u0013\u0001&\u0015&\u0001&\u001d \u0016"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0001-\r \u0006,\u0000(\u0006 \u001d\'\r*\u001d<\u001c=\u0017;\r(\u0007-\u001b&\r"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " \u0007,\n\'\u0006!\u0002\'\n<\r,\u0000<\u0016=\u00176\u0011,\u0002&\u0007:\u000c,"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method static synthetic m(Lcom/ievyhrdnoniovof/AdController;Z)Z
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;
    .param p1, "arg1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/ievyhrdnoniovof/AdController;->OA:Z

    return p1
.end method

.method static synthetic o(Lcom/ievyhrdnoniovof/AdController;)V
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->b()V

    return-void
.end method

.method static synthetic s(Lcom/ievyhrdnoniovof/AdController;)Landroid/os/Handler;
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->BA:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic u(Lcom/ievyhrdnoniovof/AdController;)Lcom/ievyhrdnoniovof/AdListener;
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    return-object v0
.end method

.method static synthetic y(Lcom/ievyhrdnoniovof/AdController;)Z
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController;->o:Z

    return v0
.end method

.method static synthetic z(Lcom/ievyhrdnoniovof/AdController;)Ljava/lang/String;
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public adInitialized()V
    .locals 12

    .prologue
    const/16 v11, 0xa

    const/4 v10, 0x1

    const/4 v7, 0x0

    iput-boolean v10, p0, Lcom/ievyhrdnoniovof/AdController;->z:Z

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v1, "\u0013\u0001&\u0015&\u0001&\u001d \u0016"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    if-eqz v0, :cond_e

    :try_start_0
    const-string v0, "3\r \u000c1\u00017\n9\u001d;\u00047"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v4, "\u0012\'\u0001&\u0010+\u0016 \u00187\u001a.\u0016"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdUtils;->apply(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .local v6, "this":Lcom/ievyhrdnoniovof/AdController;
    :goto_0
    :try_start_1
    iget-object v0, v6, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v1, "\u001a:\u0006%"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "C"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController;->o:Z

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    invoke-interface {v0}, Lcom/ievyhrdnoniovof/AdListener;->onAdFailed()V

    :cond_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->bA:Lcom/ievyhrdnoniovof/AdAudioListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController;->H:Z

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->bA:Lcom/ievyhrdnoniovof/AdAudioListener;

    invoke-interface {v0}, Lcom/ievyhrdnoniovof/AdAudioListener;->onAdFailed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    .end local v6    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    :catch_0
    move-exception v0

    move-object v6, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local v6    # "this":Lcom/ievyhrdnoniovof/AdController;
    goto :goto_0

    :catch_1
    move-exception v0

    :cond_2
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v5, v1, Landroid/graphics/Rect;->top:I

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-le v0, v5, :cond_5

    sub-int/2addr v0, v5

    :goto_2
    iget v1, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/ievyhrdnoniovof/AdController;->CA:I

    iget v1, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int v8, v1, v5

    move v1, v0

    sub-int v1, v8, v1

    iput v1, p0, Lcom/ievyhrdnoniovof/AdController;->KA:I

    const-string v1, "LBAdController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u001a\u000c;\u000e:\u001drDr"

    invoke-static {v9}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "oS"

    invoke-static {v8}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Er"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "oS"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v1, "\u0019=\u0005>\u00043\u00111\u0006\'\u0007&"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ievyhrdnoniovof/AdController;->kA:I

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v1, "\u0003,\u001f/\u001e\"\u001d6\u0012/\u0012%\u0007&\u0001"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v4, "\u0019=\u0005>\u0000<\u001d7\u001b$\u0008>"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_6

    mul-int/lit8 v0, v0, 0x3c

    div-int/2addr v0, v1

    iput v0, p0, Lcom/ievyhrdnoniovof/AdController;->zA:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v1, "\u00060\u0016-\u00127\u001a5\u0016"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "c"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController;->mA:Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_a

    :cond_4
    :goto_4
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v4, " \u0007,"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v4, "6\u0000!\u0019>\u0008+\u0000<\u001d7\u001b$\u0008>"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v0, v2

    :goto_5
    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController;->xA:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdController;->retrieveAudioAd()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \u0007,\n \u001c2\u00167\n<\u0017!\u00020\u0008,"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->LA:Landroid/os/Handler;

    if-eqz v0, :cond_1

    :try_start_5
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->LA:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->S:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v3, "\u00086\u0008\'\r;\u0006&\u001b3\n9\u0000<\u001d7\u001b$\u0008>"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_1

    :cond_5
    move v0, v7

    goto/16 :goto_2

    :cond_6
    const/16 v0, 0xa

    :try_start_6
    iput v0, p0, Lcom/ievyhrdnoniovof/AdController;->zA:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v0

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/ievyhrdnoniovof/AdController;->kA:I

    iput v11, p0, Lcom/ievyhrdnoniovof/AdController;->zA:I

    goto/16 :goto_3

    :catch_4
    move-exception v0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->w:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->w:Ljava/lang/String;

    const-string v1, "C"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0001-\r"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->w:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object v0, v2

    goto/16 :goto_5

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \u0007,"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "b"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object v0, v2

    goto/16 :goto_5

    :cond_8
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    if-nez v0, :cond_9

    new-instance v0, Lcom/ievyhrdnoniovof/AdWebView;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-boolean v3, p0, Lcom/ievyhrdnoniovof/AdController;->mA:Z

    iget-object v4, p0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    iget-object v5, p0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/ievyhrdnoniovof/AdWebView;-><init>(Landroid/content/Context;Lcom/ievyhrdnoniovof/AdController;ZLcom/ievyhrdnoniovof/AdListener;Landroid/widget/RelativeLayout;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    :cond_9
    :try_start_7
    const-string v0, "\"\u001d\'\u0001,\u001a\']4\u0016!\u0018*\u0007m$&\u0011\u0015\u001a&\u0004"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v0, "\u0006<;7\u001a\'\u00047"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-object v6, p0

    :goto_6
    iget-object v0, v6, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/ievyhrdnoniovof/AdWebView;->setResults(Lorg/json/JSONObject;)V

    :try_start_8
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v1, "\"\u0017\"\u001f/\u001c4\u0010/\u001c0\u0016\'\u00167\u0016 \u0007"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    move-result v7

    :goto_7
    if-ne v7, v10, :cond_a

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    new-instance v1, Lcom/ievyhrdnoniovof/AdController$2;

    invoke-direct {v1, p0}, Lcom/ievyhrdnoniovof/AdController$2;-><init>(Lcom/ievyhrdnoniovof/AdController;)V

    invoke-virtual {v0, v1}, Lcom/ievyhrdnoniovof/AdWebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_a
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->d:Lcom/ievyhrdnoniovof/AdView;

    if-nez v0, :cond_b

    new-instance v1, Lcom/ievyhrdnoniovof/AdView;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    invoke-direct {v1, v0, p0, v2}, Lcom/ievyhrdnoniovof/AdView;-><init>(Landroid/content/Context;Lcom/ievyhrdnoniovof/AdController;Lcom/ievyhrdnoniovof/AdListener;)V

    iput-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->d:Lcom/ievyhrdnoniovof/AdView;

    move-object v6, p0

    :goto_8
    :try_start_9
    iget-object v0, v6, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v1, "\u0019=\u0005>\u001b7\u001a\'\u0005&"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_c

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    invoke-interface {v0}, Lcom/ievyhrdnoniovof/AdListener;->onAdAlreadyCompleted()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v0

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->M()V

    goto/16 :goto_1

    :catch_6
    move-exception v0

    move-object v6, p0

    goto :goto_6

    :cond_b
    :try_start_a
    const-string v0, "\u0008<\r \u0006;\r|\u001e7\u000b9\u0000&G\u0005\u000c0?;\u000c%"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v0, ",\u001d\u0011\u00160\u0006.\u0016"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->d:Lcom/ievyhrdnoniovof/AdView;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    move-object v6, p0

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v6, p0

    goto :goto_8

    :cond_c
    :try_start_b
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v1, "3\u001c/\u001f1\u00160\u0006/\u0007"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    move-result v0

    if-nez v0, :cond_1

    :try_start_c
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v1, "\u001d;\u00047\u0006\"\u000c<"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v1, "7\u001a.\u0016,\u0003&\u001d"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const-string v4, "\u0006\u000c3\u001a7I\u0006\u0000?\u000cr\u001c!\u000c6I\u007fI3\rr\u001e;\u0005>I>\u00063\rr\u00084\u001d7\u001br"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".\u0000"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/ievyhrdnoniovof/AdController$3;

    invoke-direct {v2, p0}, Lcom/ievyhrdnoniovof/AdController$3;-><init>(Lcom/ievyhrdnoniovof/AdController;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_1

    :catch_8
    move-exception v0

    :try_start_d
    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->M()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_1

    :cond_d
    :try_start_e
    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->M()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    goto/16 :goto_1

    .end local v6    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    :cond_e
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    if-eqz v0, :cond_f

    iput-boolean v10, p0, Lcom/ievyhrdnoniovof/AdController;->o:Z

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    invoke-interface {v0}, Lcom/ievyhrdnoniovof/AdListener;->onAdFailed()V

    :cond_f
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->bA:Lcom/ievyhrdnoniovof/AdAudioListener;

    if-eqz v0, :cond_1

    iput-boolean v10, p0, Lcom/ievyhrdnoniovof/AdController;->H:Z

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->bA:Lcom/ievyhrdnoniovof/AdAudioListener;

    invoke-interface {v0}, Lcom/ievyhrdnoniovof/AdAudioListener;->onAdFailed()V

    goto/16 :goto_1

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local v6    # "this":Lcom/ievyhrdnoniovof/AdController;
    :catch_9
    move-exception v0

    goto/16 :goto_7

    :catch_a
    move-exception v0

    goto/16 :goto_4
.end method

.method public adShowStatus()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v1, "\u0013\u0001&\u0015&\u0001&\u001d \u0016"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":\u00166\u0013-\u0001=\u0013=\u0007:\r"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u0017&\u0015\"\u0006/\u0007"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public audioAdRetrieved(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "arg0"    # Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "LBAdController"

    const-string v1, "\u0008\'\r;\u0006\u0013\r\u0000\u000c&\u001b;\u000c$\u000c6"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController;->qA:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController;->k:Z

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "LBAdController"

    const-string v1, "\u0014,\u001a-\u0014c\u0007,S1\u00167\u00061\u001dc\u00151\u001c.S\"\u0006\'\u001a,2\'!&\u00071\u001a&\u0005&\u0017c\u00120S0\u0007,\u0001*\u001d$S7\u001cc\u0010\"\u0010+\u0016"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v1, "9 \u000c4\u000c \u000c<\n7"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u00107\u001c2\u00167\n<\u001c0\u00020\u000b6\u001c\'\n>\u0006,"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    iput-boolean v4, p0, Lcom/ievyhrdnoniovof/AdController;->h:Z

    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->bA:Lcom/ievyhrdnoniovof/AdAudioListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->bA:Lcom/ievyhrdnoniovof/AdAudioListener;

    invoke-interface {v0}, Lcom/ievyhrdnoniovof/AdAudioListener;->onAdCached()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->C()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->bA:Lcom/ievyhrdnoniovof/AdAudioListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->bA:Lcom/ievyhrdnoniovof/AdAudioListener;

    invoke-interface {v0}, Lcom/ievyhrdnoniovof/AdAudioListener;->onAdFailed()V

    iput-boolean v4, p0, Lcom/ievyhrdnoniovof/AdController;->H:Z

    goto :goto_0
.end method

.method public checkForAudioAd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    const v3, 0x411ce80a

    iget-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->HA:Z

    if-nez v1, :cond_4

    if-eqz p1, :cond_4

    const-string v1, "\u0007\'\u0005>"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v2, "\"\u0017\"\u0006\'\u001a,\u00061\u001f"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v2, "\u00086\u0008\'\r;\u0006\'\u001b>"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v2, "\u0012\'\u00061\u001f"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .local v0, "this":Lcom/ievyhrdnoniovof/AdController;
    :goto_0
    iget-boolean v1, v0, Lcom/ievyhrdnoniovof/AdController;->H:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v2, "\u00086\u0008\'\r;\u0006\'\u001b>"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->t:Lcom/ievyhrdnoniovof/AdController$AdShakeListener;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;-><init>(Lcom/ievyhrdnoniovof/AdController;Z)V

    iput-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->t:Lcom/ievyhrdnoniovof/AdController$AdShakeListener;

    :cond_0
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->g:Landroid/hardware/SensorManager;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v2, "\u00126\u0017*\u001c"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->eA:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v2, "\u001a7\u0007!\u0006 "

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->g:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    iput v1, p0, Lcom/ievyhrdnoniovof/AdController;->vA:F

    iput v3, p0, Lcom/ievyhrdnoniovof/AdController;->p:F

    iput v3, p0, Lcom/ievyhrdnoniovof/AdController;->UA:F

    :cond_1
    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdController;->retrieveAudioAd()V

    .end local v0    # "this":Lcom/ievyhrdnoniovof/AdController;
    :cond_2
    :goto_1
    return-void

    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    :catch_0
    move-exception v1

    :cond_3
    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local v0    # "this":Lcom/ievyhrdnoniovof/AdController;
    goto :goto_0

    .end local v0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    :cond_4
    const-string v1, "LBAdController"

    const-string v2, "\r\u001cc\u00126\u0017*\u001cc\u0010,\u001e3\u001c-\u0016-\u0007"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public destroyAd()V
    .locals 2

    .prologue
    const-string v0, "LBAdController"

    const-string v1, "\'\u00160\u00071\u001c:2\'S \u0012/\u001f&\u0017"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController;->HA:Z

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->G()V

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->b()V

    return-void
.end method

.method public getAdDestroyed()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController;->HA:Z

    return v0
.end method

.method public getAdLoaded()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController;->o:Z

    return v0
.end method

.method public getLoadInBackground()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController;->nA:Z

    return v0
.end method

.method public getOnAdLoaded()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController;->s:Z

    return v0
.end method

.method public hideElements()V
    .locals 2

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ievyhrdnoniovof/AdWebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->B:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->PA:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->K:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->dA:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->lA:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->JA:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->MA:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->i:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public loadAd()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    const-string v1, "LBAdController"

    const-string v2, "\u001f,\u0012\'2\'[jS%\u0012*\u001f&\u0017c^c2c%\"\u001f*\u0017c2 \u0007*\u0005*\u0007:S-\u001c7S3\u00120\u0000&\u0017"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    invoke-interface {v1}, Lcom/ievyhrdnoniovof/AdListener;->onAdFailed()V

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    :cond_0
    :goto_0
    return-void

    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    :cond_1
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->hA:Lcom/ievyhrdnoniovof/AdTask;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->hA:Lcom/ievyhrdnoniovof/AdTask;

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->qA:Z

    if-eqz v1, :cond_0

    iput-boolean v6, p0, Lcom/ievyhrdnoniovof/AdController;->qA:Z

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->oA:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "LBAdController"

    const-string v2, "*3\n:\u000cr\u0000!I$\u0008>\u00006I\u007fI5\u0006;\u00075I&\u0006r\u001c!\u000cr\u001d:\u0008&"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/ievyhrdnoniovof/AdController;->nA:Z

    iput-boolean v6, p0, Lcom/ievyhrdnoniovof/AdController;->qA:Z

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->M()V

    iput-boolean v6, p0, Lcom/ievyhrdnoniovof/AdController;->OA:Z

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    invoke-interface {v1}, Lcom/ievyhrdnoniovof/AdListener;->onAdLoaded()V

    :cond_3
    iget-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->h:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->C()V

    iput-boolean v6, p0, Lcom/ievyhrdnoniovof/AdController;->h:Z

    :cond_4
    iput-boolean v6, p0, Lcom/ievyhrdnoniovof/AdController;->oA:Z

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v2, "\u0013\u0001&\u0015&\u0001&\u001d \u0016"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":\u00166\u0011(\u0011!\u00176\u0006 \u001f,\r"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    :cond_5
    const-string v1, "LBAdController"

    iput-boolean v6, p0, Lcom/ievyhrdnoniovof/AdController;->qA:Z

    iput-boolean v6, p0, Lcom/ievyhrdnoniovof/AdController;->OA:Z

    iput-boolean v6, p0, Lcom/ievyhrdnoniovof/AdController;->oA:Z

    iput-boolean v6, p0, Lcom/ievyhrdnoniovof/AdController;->z:Z

    const-string v2, "\u001f,\u0012\'2\'S \u0012/\u001f&\u0017"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/ievyhrdnoniovof/AdController;->s:Z

    iget-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->z:Z

    if-nez v1, :cond_8

    const-string v1, "LBAdController"

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ievyhrdnoniovof/AdController;->m:Z

    iput-boolean v6, p0, Lcom/ievyhrdnoniovof/AdController;->HA:Z

    const-string v2, "\n3\u0005>\u0000<\u000er\u0005=\u00086(6 <\u0000&\u00003\u0005;\u00137"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->c()V

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .local v0, "this":Lcom/ievyhrdnoniovof/AdController;
    :goto_1
    iget-object v1, v0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/ievyhrdnoniovof/AdController;->r:I

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->N:Ljava/lang/Runnable;

    if-nez v1, :cond_6

    new-instance v1, Lcom/ievyhrdnoniovof/AdController$4;

    invoke-direct {v1, p0}, Lcom/ievyhrdnoniovof/AdController$4;-><init>(Lcom/ievyhrdnoniovof/AdController;)V

    iput-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->N:Ljava/lang/Runnable;

    :cond_6
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->BA:Landroid/os/Handler;

    if-nez v1, :cond_7

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->BA:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->BA:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->N:Ljava/lang/Runnable;

    iget v3, p0, Lcom/ievyhrdnoniovof/AdController;->r:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "LBAdController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&\u0000?\u000c!\u001d3\u0004\"I\u0012\u000c<\rr\u00064I\u0013\r\u0011\u0006<\u001d \u0006>\u00057\u001bu\u001ar\u0005=\u00086(6Sr"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    :cond_8
    const-string v1, "LBAdController"

    const-string v2, "\u0010\"\u001f/\u001a-\u0014c\u0017*\u00003\u001f\"\n\u0002\u0017"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->M()V

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local v0    # "this":Lcom/ievyhrdnoniovof/AdController;
    goto :goto_1
.end method

.method public loadAdToCache()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string v0, "LBAdController"

    const-string v1, ">\u00063\r\u0013\rz@r\u000f3\u0000>\u000c6I\u007fI\u0013I\u0004\u0008>\u00006I\u0013\n&\u0000$\u0000&\u0010r\u0007=\u001dr\u00193\u001a!\u000c6"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    invoke-interface {v0}, Lcom/ievyhrdnoniovof/AdListener;->onAdFailed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "LBAdController"

    const-string v1, "/\u001c\"\u0017\u0002\u0017\u0017\u001c\u0000\u0012 \u001b&S \u0012/\u001f&\u0017"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/ievyhrdnoniovof/AdController;->qA:Z

    iput-boolean v2, p0, Lcom/ievyhrdnoniovof/AdController;->s:Z

    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController;->z:Z

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lcom/ievyhrdnoniovof/AdController;->m:Z

    iput-boolean v2, p0, Lcom/ievyhrdnoniovof/AdController;->HA:Z

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->c()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->M()V

    goto :goto_0
.end method

.method public loadAudioAd()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const v3, 0x411ce80a

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->fA:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .local v0, "this":Lcom/ievyhrdnoniovof/AdController;
    :cond_0
    :goto_0
    return-void

    .end local v0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    :cond_1
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->hA:Lcom/ievyhrdnoniovof/AdTask;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->hA:Lcom/ievyhrdnoniovof/AdTask;

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->k:Z

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lcom/ievyhrdnoniovof/AdController;->k:Z

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->h:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->A()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "LBAdController"

    const-string v2, "*3\n:\u000cr\u0000!I$\u0008>\u00006I\u007fI5\u0006;\u00075I&\u0006r\u0019>\u0008+I3\u001c6\u0000=I4\u001b=\u0004r\u001d:\u0008&"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/ievyhrdnoniovof/AdController;->k:Z

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->C()V

    iput-boolean v4, p0, Lcom/ievyhrdnoniovof/AdController;->h:Z

    iput-boolean v4, p0, Lcom/ievyhrdnoniovof/AdController;->oA:Z

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v2, "\u0013\u0001&\u0015&\u0001&\u001d \u0016"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":\u00166\u0013<\u0016 \u001d6\u0011(\u0011!\u00176\u0006 \u001f,\r"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    :cond_3
    const-string v1, "LBAdController"

    iput-boolean v4, p0, Lcom/ievyhrdnoniovof/AdController;->k:Z

    iput-boolean v4, p0, Lcom/ievyhrdnoniovof/AdController;->h:Z

    iput-boolean v4, p0, Lcom/ievyhrdnoniovof/AdController;->z:Z

    const-string v2, "/\u001c\"\u0017\u0002\u0006\'\u001a,2\'S \u0012/\u001f&\u0017"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->z:Z

    if-nez v1, :cond_6

    iput-boolean v5, p0, Lcom/ievyhrdnoniovof/AdController;->xA:Z

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->g:Landroid/hardware/SensorManager;

    if-nez v1, :cond_4

    new-instance v1, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;

    invoke-direct {v1, p0, v5}, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;-><init>(Lcom/ievyhrdnoniovof/AdController;Z)V

    iput-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->t:Lcom/ievyhrdnoniovof/AdController$AdShakeListener;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v2, "3\u001c6\u0000="

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->eA:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v2, "0\u0016-\u0000,\u0001"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->g:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    iput v1, p0, Lcom/ievyhrdnoniovof/AdController;->vA:F

    iput v3, p0, Lcom/ievyhrdnoniovof/AdController;->p:F

    iput v3, p0, Lcom/ievyhrdnoniovof/AdController;->UA:F

    :cond_4
    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->c()V

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local v0    # "this":Lcom/ievyhrdnoniovof/AdController;
    :goto_1
    iget-object v1, v0, Lcom/ievyhrdnoniovof/AdController;->bA:Lcom/ievyhrdnoniovof/AdAudioListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/ievyhrdnoniovof/AdController;->r:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->N:Ljava/lang/Runnable;

    if-nez v1, :cond_5

    new-instance v1, Lcom/ievyhrdnoniovof/AdController$15;

    invoke-direct {v1, p0}, Lcom/ievyhrdnoniovof/AdController$15;-><init>(Lcom/ievyhrdnoniovof/AdController;)V

    iput-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->N:Ljava/lang/Runnable;

    :cond_5
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->BA:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->BA:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->BA:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->N:Ljava/lang/Runnable;

    iget v3, p0, Lcom/ievyhrdnoniovof/AdController;->r:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .end local v0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    :cond_6
    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->C()V

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local v0    # "this":Lcom/ievyhrdnoniovof/AdController;
    goto :goto_1
.end method

.method public loadAudioAdToCache()V
    .locals 4

    .prologue
    const v3, 0x411ce80a

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->fA:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "LBAdController"

    const-string v1, ">\u00063\r\u0013\u001c6\u0000=(6==*3\n:\u000cr\n3\u0005>\u000c6"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController;->z:Z

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lcom/ievyhrdnoniovof/AdController;->xA:Z

    iput-boolean v2, p0, Lcom/ievyhrdnoniovof/AdController;->k:Z

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->g:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;

    invoke-direct {v0, p0, v2}, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;-><init>(Lcom/ievyhrdnoniovof/AdController;Z)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->t:Lcom/ievyhrdnoniovof/AdController$AdShakeListener;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v1, "\u00126\u0017*\u001c"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->eA:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v1, "\u001a7\u0007!\u0006 "

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->g:Landroid/hardware/SensorManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ievyhrdnoniovof/AdController;->vA:F

    iput v3, p0, Lcom/ievyhrdnoniovof/AdController;->p:F

    iput v3, p0, Lcom/ievyhrdnoniovof/AdController;->UA:F

    :cond_1
    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->c()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->C()V

    goto :goto_0
.end method

.method public loadAudioTrack(J)V
    .locals 7
    .param p1, "arg0"    # J

    .prologue
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->S:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ievyhrdnoniovof/AdController$16;

    invoke-direct {v1, p0}, Lcom/ievyhrdnoniovof/AdController$16;-><init>(Lcom/ievyhrdnoniovof/AdController;)V

    iput-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->S:Ljava/lang/Runnable;

    :cond_0
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->LA:Landroid/os/Handler;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->LA:Landroid/os/Handler;

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .local v0, "this":Lcom/ievyhrdnoniovof/AdController;
    :goto_0
    iget-object v1, v0, Lcom/ievyhrdnoniovof/AdController;->LA:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->S:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3c

    mul-long/2addr v3, p1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .end local v0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    :cond_1
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->LA:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->S:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local v0    # "this":Lcom/ievyhrdnoniovof/AdController;
    goto :goto_0
.end method

.method public loadReEngagement()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->hA:Lcom/ievyhrdnoniovof/AdTask;

    if-eqz v0, :cond_3

    const-string v0, "LBAdController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0002\u0017\u0017\u00120\u0018c\u00007\u00127\u00060SnS"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ievyhrdnoniovof/AdController;->hA:Lcom/ievyhrdnoniovof/AdTask;

    invoke-virtual {v4}, Lcom/ievyhrdnoniovof/AdTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->hA:Lcom/ievyhrdnoniovof/AdTask;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v3, "9 \u000c4\u000c \u000c<\n7"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v3, Lcom/ievyhrdnoniovof/AdTask;

    iget-object v4, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    iget-object v5, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    const-string v6, "\u0001&\u0016-\u0014\"\u0014&\u001e&\u001d7\u0012/\u00121\u001e"

    invoke-static {v6}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u001b7\u000c<\u000e3\u000e7\u00047\u0007&63\u00053\u001b?"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v3, p0, v4, v5, v0}, Lcom/ievyhrdnoniovof/AdTask;-><init>(Lcom/ievyhrdnoniovof/AdController;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/ievyhrdnoniovof/AdController;->hA:Lcom/ievyhrdnoniovof/AdTask;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->hA:Lcom/ievyhrdnoniovof/AdTask;

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdController;->P:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ievyhrdnoniovof/AdTask;->setSubId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->hA:Lcom/ievyhrdnoniovof/AdTask;

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdController;->Q:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/ievyhrdnoniovof/AdTask;->setTokens(Ljava/util/List;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->hA:Lcom/ievyhrdnoniovof/AdTask;

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/ievyhrdnoniovof/AdController;->L(Landroid/os/AsyncTask;[Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const-string v0, "reengagement"

    goto :goto_1

    :cond_2
    const-string v0, "LBAdController"

    const-string v1, "=,S1\u00162\u0006&\u00007S7\u001cc\u0011&S.\u0012\'\u0016"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public loadStartAd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdController;->loadAd()V

    new-instance v0, Lcom/ievyhrdnoniovof/AdController;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/ievyhrdnoniovof/AdController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->a:Lcom/ievyhrdnoniovof/AdController;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->a:Lcom/ievyhrdnoniovof/AdController;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/ievyhrdnoniovof/AdController;->loadAudioTrack(J)V

    new-instance v0, Lcom/ievyhrdnoniovof/AdController;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/ievyhrdnoniovof/AdController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdController;->loadReEngagement()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdController;->loadAd()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLinkClicked()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->a()V

    return-void
.end method

.method public pauseAd()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v1, "\u0013\u0001&\u0015&\u0001&\u001d \u0016"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":\u00166\u0013-\u0001=\u0013=\u0007:\r"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "+\u001a\'\u0017&\u001d"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    invoke-interface {v0}, Lcom/ievyhrdnoniovof/AdListener;->onAdPaused()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", \u001b=\u001br\u001e:\u0000>\u000cr\u001d \u00005\u000e7\u001b;\u00075I=\u0007\u0013\r\u0002\u0008\'\u001a7\rrDr"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ievyhrdnoniovof/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reEngagementInitialized()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->B()V

    :cond_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v1, "9 \u000c4\u000c \u000c<\n7"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "\u0001&\u0016-\u0014\"\u0014&\u001e&\u001d7\u0012/\u00121\u001e"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " \u000c7\u00075\u00085\u000c?\u000c<\u001d3\u00053\u001b?"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController;->K()V

    :cond_1
    return-void
.end method

.method public resumeAd()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v1, "9 \u000c4\u000c \u000c<\n7"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u00107\u001c2\u0007 \u00172\u0017&\u0010,"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->jA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "6\u000c4\u0008\'\u0005&"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    invoke-interface {v0}, Lcom/ievyhrdnoniovof/AdListener;->onAdResumed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "61\u0001,\u0001c\u0004+\u001a/\u0016c\u00071\u001a$\u0014&\u0001*\u001d$S,\u001d\u0002\u0017\u0011\u00160\u0006.\u0016\'SnS"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ievyhrdnoniovof/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public retrieveAudioAd()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "LBAdController"

    const-string v3, " \u000c&\u001b;\u000c$\u000c\u0013\u001c6\u0000=(6"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v3, "0\u001b,\u0004"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "c"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->DA:Lcom/ievyhrdnoniovof/AdAudioTask;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->DA:Lcom/ievyhrdnoniovof/AdAudioTask;

    invoke-virtual {v2}, Lcom/ievyhrdnoniovof/AdAudioTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "LBAdController"

    const-string v2, "$\u001c*\u001d$S7\u001cc\u001e\"\u0018&S1\u00162\u0006&\u00007S\"\u001d\'S%\u00167\u0010+S\"\u0006\'\u001a,S\"\u0017"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ievyhrdnoniovof/AdAudioTask;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/ievyhrdnoniovof/AdAudioTask;-><init>(Lcom/ievyhrdnoniovof/AdController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->DA:Lcom/ievyhrdnoniovof/AdAudioTask;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->DA:Lcom/ievyhrdnoniovof/AdAudioTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v5, "\u00086\u0008\'\r;\u0006\'\u001b>"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/ievyhrdnoniovof/AdController;->I(Landroid/os/AsyncTask;[Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController;->xA:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "LBAdController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t \u000c=\u0006\u000b \u00163\u0007*\u001c-SnS"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setAdDestroyed(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/ievyhrdnoniovof/AdController;->HA:Z

    return-void
.end method

.method public setAdLoaded(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/ievyhrdnoniovof/AdController;->o:Z

    return-void
.end method

.method public setAdditionalDockingMargin(I)V
    .locals 4
    .param p1, "arg0"    # I

    .prologue
    const-string v0, "LBAdController"

    iput p1, p0, Lcom/ievyhrdnoniovof/AdController;->y:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "0\u001672\'\u0017*\u0007*\u001c-\u0012/7,\u0010(\u001a-\u0014\u000e\u00121\u0014*\u001dyS"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCompleted(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/ievyhrdnoniovof/AdController;->e:Z

    return-void
.end method

.method public setHTML(Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->d:Lcom/ievyhrdnoniovof/AdView;

    if-eqz v0, :cond_0

    const-string v0, "Ob7\u000c0\u0017*\u00136c\u001b7\u001e/S\u0013&\u0001?\n0cQn\\l$p0l\\\u0007\'\u0007S\u001b;\u0017>\u000fSr]sS\u0010\u00071\u001a \u0007l\\\u0006=aSa\u001b7\u00073Il\\4\u00044]4@m\u001c1\u0014l\'\u0011\\;\u001b7\u001e/Bl7\u00177l\u000b+\u0007.\u001fr^0\u00071\u001a \u0007m\u00177\u0017aMcO+\u0007.\u001fc\u000b.\u001f-\u0000~Q+\u00077\u0003y\\l\u00044\u0004m\u0004p],\u0001$\\rJzJl\u000b+\u0007.\u001faS;\u001e/I/\u0012-\u0014~Q&\u001daS/\u0012-\u0014~Q&\u001daMc\u0010,\u001d7\u0016-\u0007cOl\u001b7\u001e/M"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v1, v0}, Lcom/ievyhrdnoniovof/AdView;->loadHTMLWrap(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setHTMLAds(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/ievyhrdnoniovof/AdController;->Y:Z

    return-void
.end method

.method public setHomeLoaded(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/ievyhrdnoniovof/AdController;->A:Z

    return-void
.end method

.method public setLayout(Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/RelativeLayout;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public setLoadInBackground(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/ievyhrdnoniovof/AdController;->nA:Z

    return-void
.end method

.method public setLoading(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/ievyhrdnoniovof/AdController;->OA:Z

    return-void
.end method

.method public setOnAdLoaded(Z)V
    .locals 2
    .param p1, "arg0"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/ievyhrdnoniovof/AdController;->s:Z

    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController;->nA:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdController;->HA:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/ievyhrdnoniovof/AdController$14;

    invoke-direct {v1, p0}, Lcom/ievyhrdnoniovof/AdController$14;-><init>(Lcom/ievyhrdnoniovof/AdController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setOnProgressInterval(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    iput p1, p0, Lcom/ievyhrdnoniovof/AdController;->r:I

    return-void
.end method

.method public setResults(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "arg0"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v1, "\u0013\u0001&\u0015&\u0001&\u001d \u0016"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    :try_start_0
    const-string v1, "3\r \u000c1\u00017\n9\u001d;\u00047"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v3, "\u0012\'\u0001&\u0010+\u0016 \u00187\u001a.\u0016"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    const-string v0, "LBAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "(6\u001b7\n:\u000c1\u0002&\u0000?\u000cr\u001a7\u001drDr"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->gA:Lorg/json/JSONObject;

    const-string v3, "\u0012\'\u0001&\u0010+\u0016 \u00187\u001a.\u0016"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0017\u001b \u0006 I%\u0000&\u0001r\u001a7\u001d&\u0000<\u000er\u00086\u001b7\n:\u000c1\u0002&\u0000?\u000crDr"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSubId(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdController;->P:Ljava/lang/String;

    return-void
.end method

.method public setTokens(Ljava/util/List;)V
    .locals 0
    .param p1, "arg0"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdController;->Q:Ljava/util/List;

    return-void
.end method

.method public showElements()V
    .locals 2

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->q:Lcom/ievyhrdnoniovof/AdWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ievyhrdnoniovof/AdWebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->B:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->PA:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->K:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->dA:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->lA:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->JA:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->MA:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->n:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->i:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public showInternetDialog()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->c:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\n\u001d7\u00161\u001d&\u0007c\u001d,\u0007c\u00125\u0012*\u001f\"\u0011/\u0016"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u0011\u0005=\u001a7"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ievyhrdnoniovof/AdController$1;

    invoke-direct {v3, p0}, Lcom/ievyhrdnoniovof/AdController$1;-><init>(Lcom/ievyhrdnoniovof/AdController;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->c:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method

.method public stopAllListeners()V
    .locals 0

    return-void
.end method

.method public triggerAdCompleted()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "LBAdController"

    const-string v1, "\u001c-2\'0,\u001e3\u001f&\u0007&\u0017c\u00071\u001a$\u0014&\u0001&\u0017"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    invoke-interface {v0}, Lcom/ievyhrdnoniovof/AdListener;->onAdCompleted()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LBAdController"

    const-string v2, "\u000c \u001b=\u001br\u001e:\u000c<I=\u0007\u0013\r\u0011\u0006?\u0019>\u000c&\u000c6I&\u001b;\u000e5\u000c \u000c6"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public triggerAdFailed()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-string v1, "LBAdController"

    const-string v2, "\'=I\u001b\u0007&\u000c \u00077\u001dr\n=\u0007<\u000c1\u001d;\u0006<I6\u000c&\u000c1\u001d7\r|I\u001c\u0006r(6\u001ar\u0005=\u00086\u000c6"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    if-eqz v1, :cond_1

    :try_start_0
    const-string v1, "LBAdController"

    const-string v2, ",\u001d\u0002\u0017\u0005\u0012*\u001f&\u0017c\u00071\u001a$\u0014&\u0001&\u0017"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController;->F:Lcom/ievyhrdnoniovof/AdListener;

    invoke-interface {v2}, Lcom/ievyhrdnoniovof/AdListener;->onAdFailed()V

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController;->o:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .local v0, "this":Lcom/ievyhrdnoniovof/AdController;
    :goto_0
    iget-object v1, v0, Lcom/ievyhrdnoniovof/AdController;->bA:Lcom/ievyhrdnoniovof/AdAudioListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController;->bA:Lcom/ievyhrdnoniovof/AdAudioListener;

    invoke-interface {v1}, Lcom/ievyhrdnoniovof/AdAudioListener;->onAdFailed()V

    iput-boolean v4, p0, Lcom/ievyhrdnoniovof/AdController;->H:Z

    :cond_0
    return-void

    .end local v0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    :catch_0
    move-exception v1

    const-string v2, "LBAdController"

    const-string v3, ", \u001b=\u001br\u001e:\u0000>\u000cr\n3\u0005>\u0000<\u000er\u0006<(6/3\u0000>\u000c6"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "LBAdController"

    invoke-static {v2, v1}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController;
    .restart local v0    # "this":Lcom/ievyhrdnoniovof/AdController;
    goto :goto_0
.end method
