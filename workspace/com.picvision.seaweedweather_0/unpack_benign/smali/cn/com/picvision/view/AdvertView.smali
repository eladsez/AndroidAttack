.class public Lcn/com/picvision/view/AdvertView;
.super Landroid/widget/LinearLayout;
.source "AdvertView.java"


# static fields
.field private static final CLICK:I = 0x1

.field private static final DEAFULT_SIZE:I = 0xf0

.field private static final FAIL_CODE:I = 0x1

.field private static final LH_SCALE:F = 0.0875f

.field private static final LOCATION_URL:Ljava/lang/String; = "http://www.ad-pv.com/PVAD/location.jsp"

.field private static final LW_SCALE:F = 0.12083333f

.field private static final LX_SCALE:F = 0.0125f

.field private static final LY_SCALE:F = 0.008333334f

.field private static final MAX_INTERVAL:I = 0x258

.field private static final MIN_INTERVAL:I = 0x1e

.field private static final REQUEST:I = 0x1

.field private static final REQUEST_URL:Ljava/lang/String; = "http://www.ad-pv.com/PVAD/getAD.jsp"

.field private static final RESPONSE:I = 0x2

.field private static final SAVE_DIR:Ljava/lang/String; = "/sdcard/app/pvmobad"

.field private static final SHOW:I = 0x0

.field private static final STATISTIC_URL:Ljava/lang/String; = "http://www.ad-pv.com/PVAD/statistic.jsp"

.field private static final SUCCESS_CODE:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field private static final TH_SCALE:F = 0.0875f

.field private static final TIME:I = 0x3e8

.field private static final TS_SCALE:F = 0.041666668f

.field private static final TW_SCALE:F = 0.82916665f

.field private static final TX_SCALE:F = 0.1625f

.field private static final TY_SCALE:F = 0.008333334f

.field private static final VALIDATE:I = 0x3

.field private static final VALIDATE_URL:Ljava/lang/String; = "http://www.ad-pv.com/ShowADCheck.jsp?"

.field private static final WH_SCALE:F = 0.104166664f


# instance fields
.field private asynlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/picvision/util/AsynDownLoad;",
            ">;"
        }
    .end annotation
.end field

.field private config:Lcn/com/picvision/model/Config;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private handler1:Landroid/os/Handler;

.field private image:Landroid/widget/ImageView;

.field private imsi:Ljava/lang/String;

.field private isPlaying:I

.field private isViewAnimator:Z

.field private key:I

.field private lgImage:Landroid/widget/ImageView;

.field private linear:Landroid/widget/LinearLayout;

.field private final locationListener:Landroid/location/LocationListener;

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mp:Landroid/media/MediaPlayer;

.field private newHandler:Landroid/os/Handler;

.field private oneView:Landroid/widget/TextView;

.field private params:Lcn/com/picvision/model/Params;

.field private relative:Landroid/widget/RelativeLayout;

.field private request_num:I

.field private response_num:I

.field private screenWidth:F

.field private textThread:Lcn/com/picvision/util/TextThread;

.field private threadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/picvision/util/ThreadDownload;",
            ">;"
        }
    .end annotation
.end field

.field private timer:Ljava/util/Timer;

.field private twoView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcn/com/picvision/view/AdvertView;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/picvision/view/AdvertView;->TAG:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 804
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77
    iput v2, p0, Lcn/com/picvision/view/AdvertView;->isPlaying:I

    .line 112
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->mp:Landroid/media/MediaPlayer;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/picvision/view/AdvertView;->asynlist:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/picvision/view/AdvertView;->threadList:Ljava/util/ArrayList;

    .line 117
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->timer:Ljava/util/Timer;

    .line 118
    iput-boolean v2, p0, Lcn/com/picvision/view/AdvertView;->isViewAnimator:Z

    .line 119
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->relative:Landroid/widget/RelativeLayout;

    .line 120
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->image:Landroid/widget/ImageView;

    .line 121
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->lgImage:Landroid/widget/ImageView;

    .line 122
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->linear:Landroid/widget/LinearLayout;

    .line 123
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->textThread:Lcn/com/picvision/util/TextThread;

    .line 124
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->map:Ljava/util/HashMap;

    .line 182
    iput v2, p0, Lcn/com/picvision/view/AdvertView;->request_num:I

    .line 183
    iput v2, p0, Lcn/com/picvision/view/AdvertView;->response_num:I

    .line 184
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->oneView:Landroid/widget/TextView;

    .line 185
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->twoView:Landroid/widget/TextView;

    .line 186
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->config:Lcn/com/picvision/model/Config;

    .line 187
    const/high16 v0, 0x43f00000    # 480.0f

    iput v0, p0, Lcn/com/picvision/view/AdvertView;->screenWidth:F

    .line 191
    new-instance v0, Lcn/com/picvision/view/AdvertView$1;

    invoke-direct {v0, p0}, Lcn/com/picvision/view/AdvertView$1;-><init>(Lcn/com/picvision/view/AdvertView;)V

    iput-object v0, p0, Lcn/com/picvision/view/AdvertView;->handler1:Landroid/os/Handler;

    .line 272
    new-instance v0, Lcn/com/picvision/view/AdvertView$2;

    invoke-direct {v0, p0}, Lcn/com/picvision/view/AdvertView$2;-><init>(Lcn/com/picvision/view/AdvertView;)V

    iput-object v0, p0, Lcn/com/picvision/view/AdvertView;->newHandler:Landroid/os/Handler;

    .line 285
    new-instance v0, Lcn/com/picvision/view/AdvertView$3;

    invoke-direct {v0, p0}, Lcn/com/picvision/view/AdvertView$3;-><init>(Lcn/com/picvision/view/AdvertView;)V

    iput-object v0, p0, Lcn/com/picvision/view/AdvertView;->handler:Landroid/os/Handler;

    .line 1157
    new-instance v0, Lcn/com/picvision/view/AdvertView$4;

    invoke-direct {v0, p0}, Lcn/com/picvision/view/AdvertView$4;-><init>(Lcn/com/picvision/view/AdvertView;)V

    iput-object v0, p0, Lcn/com/picvision/view/AdvertView;->locationListener:Landroid/location/LocationListener;

    .line 805
    iput-object p1, p0, Lcn/com/picvision/view/AdvertView;->context:Landroid/content/Context;

    .line 807
    invoke-direct {p0}, Lcn/com/picvision/view/AdvertView;->init()V

    .line 808
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 791
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    iput v2, p0, Lcn/com/picvision/view/AdvertView;->isPlaying:I

    .line 112
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->mp:Landroid/media/MediaPlayer;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/picvision/view/AdvertView;->asynlist:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/picvision/view/AdvertView;->threadList:Ljava/util/ArrayList;

    .line 117
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->timer:Ljava/util/Timer;

    .line 118
    iput-boolean v2, p0, Lcn/com/picvision/view/AdvertView;->isViewAnimator:Z

    .line 119
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->relative:Landroid/widget/RelativeLayout;

    .line 120
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->image:Landroid/widget/ImageView;

    .line 121
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->lgImage:Landroid/widget/ImageView;

    .line 122
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->linear:Landroid/widget/LinearLayout;

    .line 123
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->textThread:Lcn/com/picvision/util/TextThread;

    .line 124
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->map:Ljava/util/HashMap;

    .line 182
    iput v2, p0, Lcn/com/picvision/view/AdvertView;->request_num:I

    .line 183
    iput v2, p0, Lcn/com/picvision/view/AdvertView;->response_num:I

    .line 184
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->oneView:Landroid/widget/TextView;

    .line 185
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->twoView:Landroid/widget/TextView;

    .line 186
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->config:Lcn/com/picvision/model/Config;

    .line 187
    const/high16 v0, 0x43f00000    # 480.0f

    iput v0, p0, Lcn/com/picvision/view/AdvertView;->screenWidth:F

    .line 191
    new-instance v0, Lcn/com/picvision/view/AdvertView$1;

    invoke-direct {v0, p0}, Lcn/com/picvision/view/AdvertView$1;-><init>(Lcn/com/picvision/view/AdvertView;)V

    iput-object v0, p0, Lcn/com/picvision/view/AdvertView;->handler1:Landroid/os/Handler;

    .line 272
    new-instance v0, Lcn/com/picvision/view/AdvertView$2;

    invoke-direct {v0, p0}, Lcn/com/picvision/view/AdvertView$2;-><init>(Lcn/com/picvision/view/AdvertView;)V

    iput-object v0, p0, Lcn/com/picvision/view/AdvertView;->newHandler:Landroid/os/Handler;

    .line 285
    new-instance v0, Lcn/com/picvision/view/AdvertView$3;

    invoke-direct {v0, p0}, Lcn/com/picvision/view/AdvertView$3;-><init>(Lcn/com/picvision/view/AdvertView;)V

    iput-object v0, p0, Lcn/com/picvision/view/AdvertView;->handler:Landroid/os/Handler;

    .line 1157
    new-instance v0, Lcn/com/picvision/view/AdvertView$4;

    invoke-direct {v0, p0}, Lcn/com/picvision/view/AdvertView$4;-><init>(Lcn/com/picvision/view/AdvertView;)V

    iput-object v0, p0, Lcn/com/picvision/view/AdvertView;->locationListener:Landroid/location/LocationListener;

    .line 792
    iput-object p1, p0, Lcn/com/picvision/view/AdvertView;->context:Landroid/content/Context;

    .line 793
    invoke-direct {p0, p2}, Lcn/com/picvision/view/AdvertView;->getParams(Landroid/util/AttributeSet;)V

    .line 794
    invoke-direct {p0}, Lcn/com/picvision/view/AdvertView;->init()V

    .line 795
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/com/picvision/model/Params;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lcn/com/picvision/model/Params;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 819
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77
    iput v2, p0, Lcn/com/picvision/view/AdvertView;->isPlaying:I

    .line 112
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->mp:Landroid/media/MediaPlayer;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/picvision/view/AdvertView;->asynlist:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/picvision/view/AdvertView;->threadList:Ljava/util/ArrayList;

    .line 117
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->timer:Ljava/util/Timer;

    .line 118
    iput-boolean v2, p0, Lcn/com/picvision/view/AdvertView;->isViewAnimator:Z

    .line 119
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->relative:Landroid/widget/RelativeLayout;

    .line 120
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->image:Landroid/widget/ImageView;

    .line 121
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->lgImage:Landroid/widget/ImageView;

    .line 122
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->linear:Landroid/widget/LinearLayout;

    .line 123
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->textThread:Lcn/com/picvision/util/TextThread;

    .line 124
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->map:Ljava/util/HashMap;

    .line 182
    iput v2, p0, Lcn/com/picvision/view/AdvertView;->request_num:I

    .line 183
    iput v2, p0, Lcn/com/picvision/view/AdvertView;->response_num:I

    .line 184
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->oneView:Landroid/widget/TextView;

    .line 185
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->twoView:Landroid/widget/TextView;

    .line 186
    iput-object v1, p0, Lcn/com/picvision/view/AdvertView;->config:Lcn/com/picvision/model/Config;

    .line 187
    const/high16 v0, 0x43f00000    # 480.0f

    iput v0, p0, Lcn/com/picvision/view/AdvertView;->screenWidth:F

    .line 191
    new-instance v0, Lcn/com/picvision/view/AdvertView$1;

    invoke-direct {v0, p0}, Lcn/com/picvision/view/AdvertView$1;-><init>(Lcn/com/picvision/view/AdvertView;)V

    iput-object v0, p0, Lcn/com/picvision/view/AdvertView;->handler1:Landroid/os/Handler;

    .line 272
    new-instance v0, Lcn/com/picvision/view/AdvertView$2;

    invoke-direct {v0, p0}, Lcn/com/picvision/view/AdvertView$2;-><init>(Lcn/com/picvision/view/AdvertView;)V

    iput-object v0, p0, Lcn/com/picvision/view/AdvertView;->newHandler:Landroid/os/Handler;

    .line 285
    new-instance v0, Lcn/com/picvision/view/AdvertView$3;

    invoke-direct {v0, p0}, Lcn/com/picvision/view/AdvertView$3;-><init>(Lcn/com/picvision/view/AdvertView;)V

    iput-object v0, p0, Lcn/com/picvision/view/AdvertView;->handler:Landroid/os/Handler;

    .line 1157
    new-instance v0, Lcn/com/picvision/view/AdvertView$4;

    invoke-direct {v0, p0}, Lcn/com/picvision/view/AdvertView$4;-><init>(Lcn/com/picvision/view/AdvertView;)V

    iput-object v0, p0, Lcn/com/picvision/view/AdvertView;->locationListener:Landroid/location/LocationListener;

    .line 820
    iput-object p1, p0, Lcn/com/picvision/view/AdvertView;->context:Landroid/content/Context;

    .line 821
    iput-object p2, p0, Lcn/com/picvision/view/AdvertView;->params:Lcn/com/picvision/model/Params;

    .line 822
    invoke-direct {p0}, Lcn/com/picvision/view/AdvertView;->init()V

    .line 823
    return-void
.end method

.method static synthetic access$0(Lcn/com/picvision/view/AdvertView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView;->oneView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcn/com/picvision/view/AdvertView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView;->twoView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10(Lcn/com/picvision/view/AdvertView;)F
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcn/com/picvision/view/AdvertView;->screenWidth:F

    return v0
.end method

.method static synthetic access$11(Lcn/com/picvision/view/AdvertView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView;->relative:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$12(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/model/Params;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView;->params:Lcn/com/picvision/model/Params;

    return-object v0
.end method

.method static synthetic access$13(Lcn/com/picvision/view/AdvertView;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcn/com/picvision/view/AdvertView;->linear:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$14(Lcn/com/picvision/view/AdvertView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView;->linear:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$15(Lcn/com/picvision/view/AdvertView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcn/com/picvision/view/AdvertView;->oneView:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$16(Lcn/com/picvision/view/AdvertView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcn/com/picvision/view/AdvertView;->twoView:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$17(Lcn/com/picvision/view/AdvertView;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcn/com/picvision/view/AdvertView;->lgImage:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$18(Lcn/com/picvision/view/AdvertView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView;->lgImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$19(Lcn/com/picvision/view/AdvertView;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcn/com/picvision/view/AdvertView;->isPlaying:I

    return v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcn/com/picvision/view/AdvertView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$20(Lcn/com/picvision/view/AdvertView;Landroid/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcn/com/picvision/view/AdvertView;->mp:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic access$21(Lcn/com/picvision/view/AdvertView;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$22(Lcn/com/picvision/view/AdvertView;I)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcn/com/picvision/view/AdvertView;->isPlaying:I

    return-void
.end method

.method static synthetic access$23(Lcn/com/picvision/view/AdvertView;Z)V
    .locals 0

    .prologue
    .line 118
    iput-boolean p1, p0, Lcn/com/picvision/view/AdvertView;->isViewAnimator:Z

    return-void
.end method

.method static synthetic access$24(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/util/TextThread;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView;->textThread:Lcn/com/picvision/util/TextThread;

    return-object v0
.end method

.method static synthetic access$25(Lcn/com/picvision/view/AdvertView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView;->handler1:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$26(Lcn/com/picvision/view/AdvertView;Lcn/com/picvision/util/TextThread;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcn/com/picvision/view/AdvertView;->textThread:Lcn/com/picvision/util/TextThread;

    return-void
.end method

.method static synthetic access$27(Lcn/com/picvision/view/AdvertView;I)V
    .locals 0

    .prologue
    .line 1342
    invoke-direct {p0, p1}, Lcn/com/picvision/view/AdvertView;->statistic(I)V

    return-void
.end method

.method static synthetic access$28(Lcn/com/picvision/view/AdvertView;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcn/com/picvision/view/AdvertView;->image:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$29(Lcn/com/picvision/view/AdvertView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView;->image:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3(Lcn/com/picvision/view/AdvertView;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView;->map:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$30(Lcn/com/picvision/view/AdvertView;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 1175
    invoke-direct {p0, p1}, Lcn/com/picvision/view/AdvertView;->refresh(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$31(Lcn/com/picvision/view/AdvertView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView;->threadList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$32(Lcn/com/picvision/view/AdvertView;I)V
    .locals 0

    .prologue
    .line 1248
    invoke-direct {p0, p1}, Lcn/com/picvision/view/AdvertView;->visibility(I)V

    return-void
.end method

.method static synthetic access$33(Lcn/com/picvision/view/AdvertView;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1229
    invoke-direct {p0, p1}, Lcn/com/picvision/view/AdvertView;->clearFile(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$34(Lcn/com/picvision/view/AdvertView;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 907
    invoke-direct {p0, p1}, Lcn/com/picvision/view/AdvertView;->getValidate(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$4(Lcn/com/picvision/view/AdvertView;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 934
    invoke-direct {p0, p1}, Lcn/com/picvision/view/AdvertView;->getConfig(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$5(Lcn/com/picvision/view/AdvertView;Lcn/com/picvision/model/Config;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcn/com/picvision/view/AdvertView;->config:Lcn/com/picvision/model/Config;

    return-void
.end method

.method static synthetic access$6(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/model/Config;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView;->config:Lcn/com/picvision/model/Config;

    return-object v0
.end method

.method static synthetic access$7(Lcn/com/picvision/view/AdvertView;Lcn/com/picvision/model/Config;)V
    .locals 0

    .prologue
    .line 831
    invoke-direct {p0, p1}, Lcn/com/picvision/view/AdvertView;->getDetailData(Lcn/com/picvision/model/Config;)V

    return-void
.end method

.method static synthetic access$8(Lcn/com/picvision/view/AdvertView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9(Lcn/com/picvision/view/AdvertView;Landroid/widget/RelativeLayout;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcn/com/picvision/view/AdvertView;->relative:Landroid/widget/RelativeLayout;

    return-void
.end method

.method private final clearFile(Ljava/io/File;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 1230
    if-eqz p1, :cond_1

    const/4 v4, 0x1

    move v3, v4

    .line 1231
    .local v3, "isCorrect":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 1232
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    .line 1233
    if-eqz v3, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1234
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1235
    .local v1, "files":[Ljava/io/File;
    array-length v0, v1

    .line 1236
    .local v0, "fileLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_2

    .line 1239
    const/4 v1, 0x0

    check-cast v1, [Ljava/io/File;

    .line 1240
    const/4 p1, 0x0

    .line 1241
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1246
    .end local v0    # "fileLength":I
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i":I
    :cond_0
    :goto_2
    return-void

    .line 1230
    .end local v3    # "isCorrect":Z
    :cond_1
    const/4 v4, 0x0

    move v3, v4

    goto :goto_0

    .line 1237
    .restart local v0    # "fileLength":I
    .restart local v1    # "files":[Ljava/io/File;
    .restart local v2    # "i":I
    .restart local v3    # "isCorrect":Z
    :cond_2
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1236
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1242
    .end local v0    # "fileLength":I
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i":I
    :cond_3
    if-eqz v3, :cond_0

    .line 1243
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_2
.end method

.method private final getConfig(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 936
    new-instance v1, Lcn/com/picvision/model/DownInfo;

    invoke-direct {v1}, Lcn/com/picvision/model/DownInfo;-><init>()V

    .line 937
    .local v1, "info":Lcn/com/picvision/model/DownInfo;
    invoke-virtual {v1, v4}, Lcn/com/picvision/model/DownInfo;->setEncrypt(Z)V

    .line 938
    const-string v3, "ad.pex"

    invoke-virtual {v1, v3}, Lcn/com/picvision/model/DownInfo;->setFileName(Ljava/lang/String;)V

    .line 939
    invoke-virtual {v1, v4}, Lcn/com/picvision/model/DownInfo;->setMethod(I)V

    .line 940
    invoke-virtual {v1, p1}, Lcn/com/picvision/model/DownInfo;->setParams(Ljava/util/HashMap;)V

    .line 941
    const-string v3, "http://www.ad-pv.com/PVAD/getAD.jsp"

    invoke-virtual {v1, v3}, Lcn/com/picvision/model/DownInfo;->setReqUrl(Ljava/lang/String;)V

    .line 942
    const-string v3, "/sdcard/app/pvmobad"

    invoke-static {v3, v5}, Lcn/com/picvision/util/Help;->getFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/com/picvision/model/DownInfo;->setSaveDir(Ljava/io/File;)V

    .line 944
    new-instance v0, Lcn/com/picvision/model/HandleInfo;

    invoke-direct {v0}, Lcn/com/picvision/model/HandleInfo;-><init>()V

    .line 945
    .local v0, "handleInfo":Lcn/com/picvision/model/HandleInfo;
    invoke-virtual {v0, v4}, Lcn/com/picvision/model/HandleInfo;->setType(I)V

    .line 946
    const-string v3, "byte"

    invoke-virtual {v0, v3}, Lcn/com/picvision/model/HandleInfo;->setByteKey(Ljava/lang/String;)V

    .line 947
    const-string v3, "complete"

    invoke-virtual {v0, v3}, Lcn/com/picvision/model/HandleInfo;->setCompleteKey(Ljava/lang/String;)V

    .line 948
    const-string v3, "current"

    invoke-virtual {v0, v3}, Lcn/com/picvision/model/HandleInfo;->setCurrentkey(Ljava/lang/String;)V

    .line 949
    const-string v3, "data"

    invoke-virtual {v0, v3}, Lcn/com/picvision/model/HandleInfo;->setDataKey(Ljava/lang/String;)V

    .line 950
    const-string v3, "total"

    invoke-virtual {v0, v3}, Lcn/com/picvision/model/HandleInfo;->setTotalKey(Ljava/lang/String;)V

    .line 951
    invoke-virtual {v0, v5}, Lcn/com/picvision/model/HandleInfo;->setState(I)V

    .line 952
    new-instance v2, Lcn/com/picvision/util/ThreadDownload;

    iget-object v3, p0, Lcn/com/picvision/view/AdvertView;->handler:Landroid/os/Handler;

    new-array v4, v4, [Lcn/com/picvision/model/DownInfo;

    aput-object v1, v4, v5

    invoke-direct {v2, v3, v0, v4}, Lcn/com/picvision/util/ThreadDownload;-><init>(Landroid/os/Handler;Lcn/com/picvision/model/HandleInfo;[Lcn/com/picvision/model/DownInfo;)V

    .line 954
    .local v2, "threadDownload":Lcn/com/picvision/util/ThreadDownload;
    invoke-virtual {v2}, Lcn/com/picvision/util/ThreadDownload;->start()V

    .line 960
    return-void
.end method

.method private final getDetailData(Lcn/com/picvision/model/Config;)V
    .locals 12
    .param p1, "config"    # Lcn/com/picvision/model/Config;

    .prologue
    .line 832
    sget-object v9, Lcn/com/picvision/view/AdvertView;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "handleInfo"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-virtual {p1}, Lcn/com/picvision/model/Config;->getErrorCode()I

    move-result v0

    .line 835
    .local v0, "errorCode":I
    const/4 v4, 0x0

    .line 836
    .local v4, "info":Lcn/com/picvision/model/DownInfo;
    const-string v1, ""

    .line 837
    .local v1, "filePath":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 840
    .local v6, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/com/picvision/model/DownInfo;>;"
    invoke-virtual {p1}, Lcn/com/picvision/model/Config;->getLogo()Ljava/lang/String;

    move-result-object v1

    .line 841
    if-eqz v1, :cond_0

    const-string v9, ""

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 842
    new-instance v4, Lcn/com/picvision/model/DownInfo;

    .end local v4    # "info":Lcn/com/picvision/model/DownInfo;
    invoke-direct {v4}, Lcn/com/picvision/model/DownInfo;-><init>()V

    .line 843
    .restart local v4    # "info":Lcn/com/picvision/model/DownInfo;
    invoke-virtual {v4, v1}, Lcn/com/picvision/model/DownInfo;->setReqUrl(Ljava/lang/String;)V

    .line 844
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcn/com/picvision/model/DownInfo;->setEncrypt(Z)V

    .line 845
    invoke-static {v1}, Lcn/com/picvision/util/Help;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcn/com/picvision/model/DownInfo;->setFileName(Ljava/lang/String;)V

    .line 846
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcn/com/picvision/model/DownInfo;->setMethod(I)V

    .line 847
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcn/com/picvision/model/DownInfo;->setParams(Ljava/util/HashMap;)V

    .line 848
    const-string v9, "/sdcard/app/pvmobad"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcn/com/picvision/util/Help;->getFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcn/com/picvision/model/DownInfo;->setSaveDir(Ljava/io/File;)V

    .line 849
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    sget-object v9, Lcn/com/picvision/view/AdvertView;->TAG:Ljava/lang/String;

    invoke-static {v9, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_0
    invoke-virtual {p1}, Lcn/com/picvision/model/Config;->getImage()Ljava/lang/String;

    move-result-object v1

    .line 855
    if-eqz v1, :cond_1

    const-string v9, ""

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 856
    new-instance v4, Lcn/com/picvision/model/DownInfo;

    .end local v4    # "info":Lcn/com/picvision/model/DownInfo;
    invoke-direct {v4}, Lcn/com/picvision/model/DownInfo;-><init>()V

    .line 857
    .restart local v4    # "info":Lcn/com/picvision/model/DownInfo;
    invoke-virtual {v4, v1}, Lcn/com/picvision/model/DownInfo;->setReqUrl(Ljava/lang/String;)V

    .line 858
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcn/com/picvision/model/DownInfo;->setEncrypt(Z)V

    .line 859
    invoke-static {v1}, Lcn/com/picvision/util/Help;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcn/com/picvision/model/DownInfo;->setFileName(Ljava/lang/String;)V

    .line 860
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcn/com/picvision/model/DownInfo;->setMethod(I)V

    .line 861
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcn/com/picvision/model/DownInfo;->setParams(Ljava/util/HashMap;)V

    .line 862
    const-string v9, "/sdcard/app/pvmobad"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcn/com/picvision/util/Help;->getFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcn/com/picvision/model/DownInfo;->setSaveDir(Ljava/io/File;)V

    .line 863
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    sget-object v9, Lcn/com/picvision/view/AdvertView;->TAG:Ljava/lang/String;

    invoke-static {v9, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_1
    invoke-virtual {p1}, Lcn/com/picvision/model/Config;->getBgMusic()Ljava/lang/String;

    move-result-object v1

    .line 869
    if-eqz v1, :cond_2

    const-string v9, ""

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 870
    new-instance v4, Lcn/com/picvision/model/DownInfo;

    .end local v4    # "info":Lcn/com/picvision/model/DownInfo;
    invoke-direct {v4}, Lcn/com/picvision/model/DownInfo;-><init>()V

    .line 871
    .restart local v4    # "info":Lcn/com/picvision/model/DownInfo;
    invoke-virtual {v4, v1}, Lcn/com/picvision/model/DownInfo;->setReqUrl(Ljava/lang/String;)V

    .line 872
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcn/com/picvision/model/DownInfo;->setEncrypt(Z)V

    .line 873
    invoke-static {v1}, Lcn/com/picvision/util/Help;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcn/com/picvision/model/DownInfo;->setFileName(Ljava/lang/String;)V

    .line 874
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcn/com/picvision/model/DownInfo;->setMethod(I)V

    .line 875
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcn/com/picvision/model/DownInfo;->setParams(Ljava/util/HashMap;)V

    .line 876
    const-string v9, "/sdcard/app/pvmobad"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcn/com/picvision/util/Help;->getFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcn/com/picvision/model/DownInfo;->setSaveDir(Ljava/io/File;)V

    .line 877
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    sget-object v9, Lcn/com/picvision/view/AdvertView;->TAG:Ljava/lang/String;

    invoke-static {v9, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 881
    .local v7, "length":I
    new-array v5, v7, [Lcn/com/picvision/model/DownInfo;

    .line 882
    .local v5, "infoArray":[Lcn/com/picvision/model/DownInfo;
    const/4 v3, 0x0

    .end local p1    # "config":Lcn/com/picvision/model/Config;
    .local v3, "i":I
    :goto_0
    if-lt v3, v7, :cond_3

    .line 887
    new-instance v2, Lcn/com/picvision/model/HandleInfo;

    invoke-direct {v2}, Lcn/com/picvision/model/HandleInfo;-><init>()V

    .line 888
    .local v2, "handleInfo":Lcn/com/picvision/model/HandleInfo;
    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Lcn/com/picvision/model/HandleInfo;->setType(I)V

    .line 889
    const-string v9, "byte"

    invoke-virtual {v2, v9}, Lcn/com/picvision/model/HandleInfo;->setByteKey(Ljava/lang/String;)V

    .line 890
    const-string v9, "complete"

    invoke-virtual {v2, v9}, Lcn/com/picvision/model/HandleInfo;->setCompleteKey(Ljava/lang/String;)V

    .line 891
    const-string v9, "current"

    invoke-virtual {v2, v9}, Lcn/com/picvision/model/HandleInfo;->setCurrentkey(Ljava/lang/String;)V

    .line 892
    const-string v9, "data"

    invoke-virtual {v2, v9}, Lcn/com/picvision/model/HandleInfo;->setDataKey(Ljava/lang/String;)V

    .line 893
    const-string v9, "total"

    invoke-virtual {v2, v9}, Lcn/com/picvision/model/HandleInfo;->setTotalKey(Ljava/lang/String;)V

    .line 894
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcn/com/picvision/model/HandleInfo;->setState(I)V

    .line 896
    new-instance v8, Lcn/com/picvision/util/ThreadDownload;

    iget-object v9, p0, Lcn/com/picvision/view/AdvertView;->handler:Landroid/os/Handler;

    invoke-direct {v8, v9, v2, v5}, Lcn/com/picvision/util/ThreadDownload;-><init>(Landroid/os/Handler;Lcn/com/picvision/model/HandleInfo;[Lcn/com/picvision/model/DownInfo;)V

    .line 899
    .local v8, "threadDownload":Lcn/com/picvision/util/ThreadDownload;
    invoke-virtual {v8}, Lcn/com/picvision/util/ThreadDownload;->start()V

    .line 905
    return-void

    .line 883
    .end local v2    # "handleInfo":Lcn/com/picvision/model/HandleInfo;
    .end local v8    # "threadDownload":Lcn/com/picvision/util/ThreadDownload;
    :cond_3
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/com/picvision/model/DownInfo;

    aput-object p1, v5, v3

    .line 882
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private final getDeviceWidth()I
    .locals 5

    .prologue
    .line 1101
    const/16 v2, 0xf0

    .line 1102
    .local v2, "realWidth":I
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1103
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v4

    .line 1104
    .local v3, "width":F
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v4

    .line 1105
    .local v0, "height":F
    cmpl-float v4, v3, v0

    if-ltz v4, :cond_0

    .line 1106
    float-to-int v2, v0

    .line 1110
    :goto_0
    int-to-float v4, v2

    iput v4, p0, Lcn/com/picvision/view/AdvertView;->screenWidth:F

    .line 1111
    return v2

    .line 1108
    :cond_0
    float-to-int v2, v3

    goto :goto_0
.end method

.method private final getGPS()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v11, "location"

    .line 1120
    iget-object v2, p0, Lcn/com/picvision/view/AdvertView;->context:Landroid/content/Context;

    const-string v3, "pvmobad"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 1122
    .local v10, "settings":Landroid/content/SharedPreferences;
    const-string v9, ""

    .line 1124
    .local v9, "locationStr":Ljava/lang/String;
    const-string v2, "location"

    invoke-interface {v10, v11}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1125
    const-string v2, "location"

    const-string v2, ""

    invoke-interface {v10, v11, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1150
    :cond_0
    :goto_0
    return-object v9

    .line 1127
    :cond_1
    iget-object v2, p0, Lcn/com/picvision/view/AdvertView;->context:Landroid/content/Context;

    .line 1128
    const-string v3, "location"

    invoke-virtual {v2, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1127
    check-cast v0, Landroid/location/LocationManager;

    .line 1129
    .local v0, "locationManager":Landroid/location/LocationManager;
    new-instance v6, Landroid/location/Criteria;

    invoke-direct {v6}, Landroid/location/Criteria;-><init>()V

    .line 1130
    .local v6, "criteria":Landroid/location/Criteria;
    invoke-virtual {v6, v5}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 1131
    invoke-virtual {v6, v4}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 1132
    invoke-virtual {v6, v4}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 1133
    invoke-virtual {v6, v4}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 1134
    invoke-virtual {v6, v5}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 1135
    invoke-virtual {v0, v6, v5}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 1136
    .local v1, "provider":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1137
    const-wide/16 v2, 0xbb8

    const/4 v4, 0x0

    .line 1138
    iget-object v5, p0, Lcn/com/picvision/view/AdvertView;->locationListener:Landroid/location/LocationListener;

    .line 1137
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 1140
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v8

    .line 1141
    .local v8, "location":Landroid/location/Location;
    if-eqz v8, :cond_2

    .line 1142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1143
    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1144
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 1145
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "location"

    invoke-interface {v7, v11, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1147
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    iget-object v2, p0, Lcn/com/picvision/view/AdvertView;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method

.method private final getImsi()Ljava/lang/String;
    .locals 6

    .prologue
    const-string v5, "imsi"

    .line 1081
    const-string v0, ""

    .line 1082
    .local v0, "imsi":Ljava/lang/String;
    iget-object v2, p0, Lcn/com/picvision/view/AdvertView;->context:Landroid/content/Context;

    const-string v3, "pvmobad"

    .line 1083
    const/4 v4, 0x0

    .line 1082
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1084
    .local v1, "settings":Landroid/content/SharedPreferences;
    const-string v2, "imsi"

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1085
    const-string v2, "imsi"

    const-string v2, "00000000"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1092
    .end local p0    # "this":Lcn/com/picvision/view/AdvertView;
    :goto_0
    return-object v0

    .line 1087
    .restart local p0    # "this":Lcn/com/picvision/view/AdvertView;
    :cond_0
    iget-object v2, p0, Lcn/com/picvision/view/AdvertView;->context:Landroid/content/Context;

    .line 1088
    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1087
    .end local p0    # "this":Lcn/com/picvision/view/AdvertView;
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 1089
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1090
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "imsi"

    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private final getParams(Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-string v9, "PVMobileView_background"

    .line 969
    const/4 v7, 0x0

    check-cast v7, [I

    .line 971
    .local v7, "pvmobView":[I
    const/4 v1, 0x0

    .line 972
    .local v1, "cls":Ljava/lang/Class;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcn/com/picvision/view/AdvertView;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ".R"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 973
    invoke-virtual {v9}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v2

    .line 974
    .local v2, "clses":[Ljava/lang/Class;
    array-length v5, v2

    .line 975
    .local v5, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v5, :cond_1

    .line 981
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    .line 982
    .local v6, "obj":Ljava/lang/Object;
    const-string v9, "PVMobileView"

    invoke-virtual {v1, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, [I

    move-object v7, v0

    .line 983
    iget-object v9, p0, Lcn/com/picvision/view/AdvertView;->context:Landroid/content/Context;

    invoke-virtual {v9, p1, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 985
    .local v8, "typeArray":Landroid/content/res/TypedArray;
    new-instance v9, Lcn/com/picvision/model/Params;

    invoke-direct {v9}, Lcn/com/picvision/model/Params;-><init>()V

    iput-object v9, p0, Lcn/com/picvision/view/AdvertView;->params:Lcn/com/picvision/model/Params;

    .line 986
    iget-object v9, p0, Lcn/com/picvision/view/AdvertView;->params:Lcn/com/picvision/model/Params;

    .line 987
    const-string v10, "PVMobileView_background"

    invoke-virtual {v1, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 986
    invoke-virtual {v9, v10}, Lcn/com/picvision/model/Params;->setTest(Z)V

    .line 988
    iget-object v9, p0, Lcn/com/picvision/view/AdvertView;->params:Lcn/com/picvision/model/Params;

    .line 989
    const-string v10, "PVMobileView_refreshInterval"

    invoke-virtual {v1, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    const/16 v11, 0x1e

    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 988
    invoke-virtual {v9, v10}, Lcn/com/picvision/model/Params;->setRefreshInterval(I)V

    .line 990
    iget-object v9, p0, Lcn/com/picvision/view/AdvertView;->params:Lcn/com/picvision/model/Params;

    .line 991
    const-string v10, "PVMobileView_backgroundColor"

    invoke-virtual {v1, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    const/high16 v11, -0x1000000

    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 990
    invoke-virtual {v9, v10}, Lcn/com/picvision/model/Params;->setBackgroundColor(I)V

    .line 992
    iget-object v9, p0, Lcn/com/picvision/view/AdvertView;->params:Lcn/com/picvision/model/Params;

    .line 993
    const-string v10, "PVMobileView_textColor"

    invoke-virtual {v1, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    const/4 v11, -0x1

    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 992
    invoke-virtual {v9, v10}, Lcn/com/picvision/model/Params;->setTextColor(I)V

    .line 994
    iget-object v9, p0, Lcn/com/picvision/view/AdvertView;->params:Lcn/com/picvision/model/Params;

    .line 995
    const-string v10, "PVMobileView_background"

    invoke-virtual {v1, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 994
    invoke-virtual {v9, v10}, Lcn/com/picvision/model/Params;->setBackground(I)V

    .line 1015
    .end local v2    # "clses":[Ljava/lang/Class;
    .end local v4    # "i":I
    .end local v5    # "length":I
    .end local v6    # "obj":Ljava/lang/Object;
    .end local v8    # "typeArray":Landroid/content/res/TypedArray;
    :goto_1
    return-void

    .line 976
    .restart local v2    # "clses":[Ljava/lang/Class;
    .restart local v4    # "i":I
    .restart local v5    # "length":I
    :cond_1
    aget-object v1, v2, v4

    .line 977
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "styleable"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5

    move-result v9

    if-nez v9, :cond_0

    .line 975
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 996
    .end local v2    # "clses":[Ljava/lang/Class;
    .end local v4    # "i":I
    .end local v5    # "length":I
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 998
    .local v3, "e":Ljava/lang/SecurityException;
    invoke-virtual {v3}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    .line 999
    .end local v3    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v9

    move-object v3, v9

    .line 1001
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v3}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 1002
    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v9

    move-object v3, v9

    .line 1004
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1005
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v9

    move-object v3, v9

    .line 1007
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 1008
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v9

    move-object v3, v9

    .line 1010
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 1011
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v9

    move-object v3, v9

    .line 1013
    .local v3, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v3}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1
.end method

.method private final getSdkKey()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1065
    const/4 v0, 0x0

    .line 1067
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    iget-object v2, p0, Lcn/com/picvision/view/AdvertView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1068
    iget-object v3, p0, Lcn/com/picvision/view/AdvertView;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    .line 1067
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1068
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1072
    :goto_0
    const-string v2, "PVMobAd_App_Key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1069
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1070
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private final getValidate(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 908
    new-instance v1, Lcn/com/picvision/model/DownInfo;

    invoke-direct {v1}, Lcn/com/picvision/model/DownInfo;-><init>()V

    .line 909
    .local v1, "info":Lcn/com/picvision/model/DownInfo;
    invoke-virtual {v1, v5}, Lcn/com/picvision/model/DownInfo;->setEncrypt(Z)V

    .line 910
    const-string v3, "validate.pdt"

    invoke-virtual {v1, v3}, Lcn/com/picvision/model/DownInfo;->setFileName(Ljava/lang/String;)V

    .line 911
    invoke-virtual {v1, v4}, Lcn/com/picvision/model/DownInfo;->setMethod(I)V

    .line 912
    invoke-virtual {v1, p1}, Lcn/com/picvision/model/DownInfo;->setParams(Ljava/util/HashMap;)V

    .line 913
    const-string v3, "http://www.ad-pv.com/ShowADCheck.jsp?"

    invoke-virtual {v1, v3}, Lcn/com/picvision/model/DownInfo;->setReqUrl(Ljava/lang/String;)V

    .line 914
    const-string v3, "/sdcard/app/pvmobad"

    invoke-static {v3, v5}, Lcn/com/picvision/util/Help;->getFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/com/picvision/model/DownInfo;->setSaveDir(Ljava/io/File;)V

    .line 916
    new-instance v0, Lcn/com/picvision/model/HandleInfo;

    invoke-direct {v0}, Lcn/com/picvision/model/HandleInfo;-><init>()V

    .line 917
    .local v0, "handleInfo":Lcn/com/picvision/model/HandleInfo;
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcn/com/picvision/model/HandleInfo;->setType(I)V

    .line 918
    const-string v3, "byte"

    invoke-virtual {v0, v3}, Lcn/com/picvision/model/HandleInfo;->setByteKey(Ljava/lang/String;)V

    .line 919
    const-string v3, "complete"

    invoke-virtual {v0, v3}, Lcn/com/picvision/model/HandleInfo;->setCompleteKey(Ljava/lang/String;)V

    .line 920
    const-string v3, "current"

    invoke-virtual {v0, v3}, Lcn/com/picvision/model/HandleInfo;->setCurrentkey(Ljava/lang/String;)V

    .line 921
    const-string v3, "data"

    invoke-virtual {v0, v3}, Lcn/com/picvision/model/HandleInfo;->setDataKey(Ljava/lang/String;)V

    .line 922
    const-string v3, "total"

    invoke-virtual {v0, v3}, Lcn/com/picvision/model/HandleInfo;->setTotalKey(Ljava/lang/String;)V

    .line 923
    invoke-virtual {v0, v5}, Lcn/com/picvision/model/HandleInfo;->setState(I)V

    .line 924
    new-instance v2, Lcn/com/picvision/util/ThreadDownload;

    iget-object v3, p0, Lcn/com/picvision/view/AdvertView;->handler:Landroid/os/Handler;

    new-array v4, v4, [Lcn/com/picvision/model/DownInfo;

    aput-object v1, v4, v5

    invoke-direct {v2, v3, v0, v4}, Lcn/com/picvision/util/ThreadDownload;-><init>(Landroid/os/Handler;Lcn/com/picvision/model/HandleInfo;[Lcn/com/picvision/model/DownInfo;)V

    .line 926
    .local v2, "threadDownload":Lcn/com/picvision/util/ThreadDownload;
    invoke-virtual {v2}, Lcn/com/picvision/util/ThreadDownload;->start()V

    .line 927
    return-void
.end method

.method private final init()V
    .locals 7

    .prologue
    .line 1021
    new-instance v6, Ljava/io/File;

    const-string v0, "/sdcard/app/pvmobad"

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1022
    .local v6, "saveDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1023
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 1029
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 1030
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/com/picvision/view/AdvertView;->map:Ljava/util/HashMap;

    .line 1031
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView;->map:Ljava/util/HashMap;

    const-string v2, "width"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/com/picvision/view/AdvertView;->getDeviceWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView;->map:Ljava/util/HashMap;

    const-string v2, "imsi"

    invoke-direct {p0}, Lcn/com/picvision/view/AdvertView;->getImsi()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/com/picvision/view/AdvertView;->imsi:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView;->map:Ljava/util/HashMap;

    const-string v2, "location"

    invoke-direct {p0}, Lcn/com/picvision/view/AdvertView;->getGPS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView;->map:Ljava/util/HashMap;

    const-string v2, "key"

    invoke-direct {p0}, Lcn/com/picvision/view/AdvertView;->getSdkKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    const-string v0, "Map"

    const-string v2, "Runnable Here!"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcn/com/picvision/view/AdvertView;->setVisibility(I)V

    .line 1044
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcn/com/picvision/view/AdvertView;->timer:Ljava/util/Timer;

    .line 1045
    new-instance v1, Lcn/com/picvision/view/AdvertView$5;

    invoke-direct {v1, p0}, Lcn/com/picvision/view/AdvertView$5;-><init>(Lcn/com/picvision/view/AdvertView;)V

    .line 1052
    .local v1, "timerTask":Ljava/util/TimerTask;
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView;->timer:Ljava/util/Timer;

    const-wide/16 v2, 0xa

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 1057
    return-void

    .line 1027
    .end local v1    # "timerTask":Ljava/util/TimerTask;
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method private final refresh(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1177
    .local p1, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView;->newHandler:Landroid/os/Handler;

    new-instance v1, Lcn/com/picvision/view/AdvertView$6;

    invoke-direct {v1, p0, p1}, Lcn/com/picvision/view/AdvertView$6;-><init>(Lcn/com/picvision/view/AdvertView;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1227
    return-void
.end method

.method private final statistic(I)V
    .locals 8
    .param p1, "statisticType"    # I

    .prologue
    const/4 v2, 0x0

    const-string v7, "type"

    .line 1343
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1344
    .local v6, "hMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "imsi"

    iget-object v3, p0, Lcn/com/picvision/view/AdvertView;->imsi:Ljava/lang/String;

    invoke-virtual {v6, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    const-string v1, "id"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/com/picvision/view/AdvertView;->config:Lcn/com/picvision/model/Config;

    invoke-virtual {v4}, Lcn/com/picvision/model/Config;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    if-nez p1, :cond_0

    .line 1347
    const-string v1, "type"

    const-string v1, "show"

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    :goto_0
    const-string v1, "key"

    invoke-direct {p0}, Lcn/com/picvision/view/AdvertView;->getSdkKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    new-instance v0, Lcn/com/picvision/util/DownLoadThread;

    const/4 v1, 0x0

    const-string v3, ""

    .line 1353
    const-string v4, "http://www.ad-pv.com/PVAD/statistic.jsp"

    const-string v5, "/sdcard/app/pvmobad"

    invoke-static {v5, v2}, Lcn/com/picvision/util/Help;->getFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    .line 1354
    const/4 v7, 0x1

    .line 1352
    invoke-direct/range {v0 .. v7}, Lcn/com/picvision/util/DownLoadThread;-><init>(Lcn/com/picvision/util/ThreadManager;ZLjava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/HashMap;I)V

    .line 1355
    .local v0, "download":Lcn/com/picvision/util/DownLoadThread;
    invoke-virtual {v0}, Lcn/com/picvision/util/DownLoadThread;->close()V

    .line 1356
    return-void

    .line 1349
    .end local v0    # "download":Lcn/com/picvision/util/DownLoadThread;
    :cond_0
    const-string v1, "type"

    const-string v1, "click"

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private final visibility(I)V
    .locals 4
    .param p1, "visible"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1249
    const/4 v0, 0x0

    .line 1250
    .local v0, "isCorrect":Z
    iget-object v1, p0, Lcn/com/picvision/view/AdvertView;->oneView:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    move v0, v3

    .line 1251
    :goto_0
    if-eqz v0, :cond_0

    .line 1252
    iget-object v1, p0, Lcn/com/picvision/view/AdvertView;->oneView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1255
    :cond_0
    iget-object v1, p0, Lcn/com/picvision/view/AdvertView;->twoView:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    move v0, v3

    .line 1256
    :goto_1
    if-eqz v0, :cond_1

    .line 1257
    iget-object v1, p0, Lcn/com/picvision/view/AdvertView;->twoView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1260
    :cond_1
    iget-object v1, p0, Lcn/com/picvision/view/AdvertView;->linear:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_8

    move v0, v3

    .line 1261
    :goto_2
    if-eqz v0, :cond_2

    .line 1262
    iget-object v1, p0, Lcn/com/picvision/view/AdvertView;->linear:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1265
    :cond_2
    iget-object v1, p0, Lcn/com/picvision/view/AdvertView;->image:Landroid/widget/ImageView;

    if-eqz v1, :cond_9

    move v0, v3

    .line 1266
    :goto_3
    if-eqz v0, :cond_3

    .line 1267
    iget-object v1, p0, Lcn/com/picvision/view/AdvertView;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1269
    :cond_3
    iget-object v1, p0, Lcn/com/picvision/view/AdvertView;->lgImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_a

    move v0, v3

    .line 1270
    :goto_4
    if-eqz v0, :cond_4

    .line 1271
    iget-object v1, p0, Lcn/com/picvision/view/AdvertView;->lgImage:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1274
    :cond_4
    iget-object v1, p0, Lcn/com/picvision/view/AdvertView;->relative:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_b

    move v0, v3

    .line 1275
    :goto_5
    if-eqz v0, :cond_5

    .line 1276
    iget-object v1, p0, Lcn/com/picvision/view/AdvertView;->relative:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1279
    :cond_5
    invoke-virtual {p0, p1}, Lcn/com/picvision/view/AdvertView;->setVisibility(I)V

    .line 1280
    return-void

    :cond_6
    move v0, v2

    .line 1250
    goto :goto_0

    :cond_7
    move v0, v2

    .line 1255
    goto :goto_1

    :cond_8
    move v0, v2

    .line 1260
    goto :goto_2

    :cond_9
    move v0, v2

    .line 1265
    goto :goto_3

    :cond_a
    move v0, v2

    .line 1269
    goto :goto_4

    :cond_b
    move v0, v2

    .line 1274
    goto :goto_5
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 1286
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/com/picvision/view/AdvertView$7;

    invoke-direct {v1, p0}, Lcn/com/picvision/view/AdvertView$7;-><init>(Lcn/com/picvision/view/AdvertView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1331
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1332
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1333
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1334
    return-void
.end method
