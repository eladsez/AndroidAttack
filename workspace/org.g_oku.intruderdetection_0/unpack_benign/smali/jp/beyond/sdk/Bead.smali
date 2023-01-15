.class public final Ljp/beyond/sdk/Bead;
.super Landroid/app/Application;
.source "Bead.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/beyond/sdk/Bead$ContentsOrientation;,
        Ljp/beyond/sdk/Bead$DialogType;,
        Ljp/beyond/sdk/Bead$NetworkStatusReceiver;,
        Ljp/beyond/sdk/Bead$ViewType;,
        Ljp/beyond/sdk/Bead$eOrientation;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$jp$beyond$sdk$Bead$DialogType:[I = null

.field static final INTERVAL_DEFAULT:I = 0x1

.field public static final MESSAGE_EXTRA:Ljava/lang/String; = "jp.beyond.MESSAGE_EXTRA"

.field private static final MESSAGE_FROM_SERVICE_KEY:Ljava/lang/String; = "com.nocturnaldev.MESSAGE_FROM_SERVICE_KEY"

.field public static final MESSAGE_SENT_ACTION:Ljava/lang/String; = "jp.beyond.MESSAGE_RECEIVED_ACTION"

.field public static final TAG:Ljava/lang/String;

.field static isOthersAdShown:Z

.field private static mMessageReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private BannerID:I

.field private BannerShown:Z

.field private BeadBackKeyClickedNotification:Ljava/lang/String;

.field private BeadCancelButtonClickedNotification:Ljava/lang/String;

.field private BeadDidDismissNotification:Ljava/lang/String;

.field private BeadDidShowNotification:Ljava/lang/String;

.field private BeadWillDismissNotification:Ljava/lang/String;

.field private BeadWillShowNotification:Ljava/lang/String;

.field public CurrentActivity:Landroid/app/Activity;

.field public PreviouseActivity:Landroid/app/Activity;

.field private adBitmap:Landroid/graphics/Bitmap;

.field private adBitmap_A:Landroid/graphics/Bitmap;

.field private adBitmap_B:Landroid/graphics/Bitmap;

.field private adData:Ljp/beyond/sdk/BeadData;

.field private adData_A:Ljp/beyond/sdk/BeadData;

.field private adData_B:Ljp/beyond/sdk/BeadData;

.field private adData_TEMP:Ljp/beyond/sdk/BeadData;

.field private bannerHeight:Ljava/lang/String;

.field private bannerWidth:Ljava/lang/String;

.field private cOrientation:Ljp/beyond/sdk/Bead$eOrientation;

.field private eLastOrientation:Ljp/beyond/sdk/Bead$eOrientation;

.field private imageName:Ljava/lang/String;

.field private imageName_A:Ljava/lang/String;

.field private imageName_B:Ljava/lang/String;

.field private imageName_TEMP:Ljava/lang/String;

.field private isAccessCoarseLocation:I

.field private isAccessFineLocation:I

.field private isOverlay:Ljava/lang/String;

.field private isShowAD:Z

.field private locationManager:Landroid/location/LocationManager;

.field private mBeadRelativeLayout:Landroid/widget/RelativeLayout;

.field private mCancelClickListener:Landroid/view/View$OnClickListener;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private mConnection:Ljp/beyond/sdk/BeadConnection;

.field private mConnectionUtil:Ljp/beyond/sdk/utilities/ConnectionUtil;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogType:Ljp/beyond/sdk/Bead$DialogType;

.field private mDoneFirstSetting:Z

.field private mFinishClickListener:Landroid/view/View$OnClickListener;

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mInterval:I

.field protected mIsInForeground:Z

.field private mOnBackKeyClickListener:Landroid/view/View$OnClickListener;

.field private mOrientation:Ljp/beyond/sdk/Bead$ContentsOrientation;

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRequestShowCounter:I

.field private mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSid:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field private mViewType:Ljp/beyond/sdk/Bead$ViewType;

.field private position:Ljava/lang/String;

.field private refresh_rate:Ljava/lang/String;

.field private refresh_timer:Ljava/util/Timer;

.field private telephonyPermission:I

.field private transitionAnimation:Ljava/lang/String;

.field private view_A:Ljp/beyond/sdk/layout/BeadView;

.field private view_B:Ljp/beyond/sdk/layout/BeadView;


# direct methods
.method static synthetic $SWITCH_TABLE$jp$beyond$sdk$Bead$DialogType()[I
    .locals 3

    .prologue
    .line 104
    sget-object v0, Ljp/beyond/sdk/Bead;->$SWITCH_TABLE$jp$beyond$sdk$Bead$DialogType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljp/beyond/sdk/Bead$DialogType;->values()[Ljp/beyond/sdk/Bead$DialogType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ljp/beyond/sdk/Bead$DialogType;->Banner:Ljp/beyond/sdk/Bead$DialogType;

    invoke-virtual {v1}, Ljp/beyond/sdk/Bead$DialogType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Ljp/beyond/sdk/Bead$DialogType;->Exit:Ljp/beyond/sdk/Bead$DialogType;

    invoke-virtual {v1}, Ljp/beyond/sdk/Bead$DialogType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Ljp/beyond/sdk/Bead$DialogType;->Icon:Ljp/beyond/sdk/Bead$DialogType;

    invoke-virtual {v1}, Ljp/beyond/sdk/Bead$DialogType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Ljp/beyond/sdk/Bead$DialogType;->Icon2:Ljp/beyond/sdk/Bead$DialogType;

    invoke-virtual {v1}, Ljp/beyond/sdk/Bead$DialogType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Ljp/beyond/sdk/Bead$DialogType;->IconText:Ljp/beyond/sdk/Bead$DialogType;

    invoke-virtual {v1}, Ljp/beyond/sdk/Bead$DialogType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Ljp/beyond/sdk/Bead$DialogType;->Optional:Ljp/beyond/sdk/Bead$DialogType;

    invoke-virtual {v1}, Ljp/beyond/sdk/Bead$DialogType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Ljp/beyond/sdk/Bead;->$SWITCH_TABLE$jp$beyond$sdk$Bead$DialogType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    sput-boolean v0, Ljp/beyond/sdk/Bead;->isOthersAdShown:Z

    .line 166
    const-class v0, Ljp/beyond/sdk/Bead;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    .line 216
    const/4 v0, 0x0

    sput-object v0, Ljp/beyond/sdk/Bead;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    .line 259
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljp/beyond/sdk/Bead$DialogType;)V
    .locals 4
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "dialogType"    # Ljp/beyond/sdk/Bead$DialogType;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 488
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 112
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 115
    sget-object v0, Ljp/beyond/sdk/Bead$eOrientation;->Portrait:Ljp/beyond/sdk/Bead$eOrientation;

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->eLastOrientation:Ljp/beyond/sdk/Bead$eOrientation;

    .line 116
    sget-object v0, Ljp/beyond/sdk/Bead$eOrientation;->Portrait:Ljp/beyond/sdk/Bead$eOrientation;

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->cOrientation:Ljp/beyond/sdk/Bead$eOrientation;

    .line 118
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->PreviouseActivity:Landroid/app/Activity;

    .line 119
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->CurrentActivity:Landroid/app/Activity;

    .line 122
    iput-boolean v2, p0, Ljp/beyond/sdk/Bead;->isShowAD:Z

    .line 172
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->mDialog:Landroid/app/Dialog;

    .line 175
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->mView:Landroid/view/View;

    .line 178
    sget-object v0, Ljp/beyond/sdk/Bead$ViewType;->Banner:Ljp/beyond/sdk/Bead$ViewType;

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->mViewType:Ljp/beyond/sdk/Bead$ViewType;

    .line 181
    sget-object v0, Ljp/beyond/sdk/Bead$DialogType;->Optional:Ljp/beyond/sdk/Bead$DialogType;

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->mDialogType:Ljp/beyond/sdk/Bead$DialogType;

    .line 183
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 185
    const-string v0, ""

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->mSid:Ljava/lang/String;

    .line 188
    sget-object v0, Ljp/beyond/sdk/Bead$ContentsOrientation;->Auto:Ljp/beyond/sdk/Bead$ContentsOrientation;

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->mOrientation:Ljp/beyond/sdk/Bead$ContentsOrientation;

    .line 191
    iput-boolean v2, p0, Ljp/beyond/sdk/Bead;->mDoneFirstSetting:Z

    .line 194
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    .line 197
    iput v2, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    .line 200
    iput v3, p0, Ljp/beyond/sdk/Bead;->mInterval:I

    .line 203
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->mFinishClickListener:Landroid/view/View$OnClickListener;

    .line 206
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->mCancelClickListener:Landroid/view/View$OnClickListener;

    .line 207
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->mOnBackKeyClickListener:Landroid/view/View$OnClickListener;

    .line 209
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->adData_TEMP:Ljp/beyond/sdk/BeadData;

    .line 210
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->imageName_TEMP:Ljava/lang/String;

    .line 212
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->mBeadRelativeLayout:Landroid/widget/RelativeLayout;

    .line 217
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 220
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->mContext:Landroid/content/Context;

    .line 235
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->mConnectionUtil:Ljp/beyond/sdk/utilities/ConnectionUtil;

    .line 236
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->view_A:Ljp/beyond/sdk/layout/BeadView;

    .line 237
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->view_B:Ljp/beyond/sdk/layout/BeadView;

    .line 238
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->adBitmap_A:Landroid/graphics/Bitmap;

    .line 239
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->adBitmap_B:Landroid/graphics/Bitmap;

    .line 240
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->imageName_A:Ljava/lang/String;

    .line 241
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->imageName_B:Ljava/lang/String;

    .line 242
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->adData_A:Ljp/beyond/sdk/BeadData;

    .line 243
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->adData_B:Ljp/beyond/sdk/BeadData;

    .line 245
    iput v2, p0, Ljp/beyond/sdk/Bead;->BannerID:I

    .line 247
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->adBitmap:Landroid/graphics/Bitmap;

    .line 248
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->adData:Ljp/beyond/sdk/BeadData;

    .line 249
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->imageName:Ljava/lang/String;

    .line 251
    iput-boolean v3, p0, Ljp/beyond/sdk/Bead;->BannerShown:Z

    .line 252
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->refresh_timer:Ljava/util/Timer;

    .line 262
    const-string v0, "BeadWillShowNotification"

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->BeadWillShowNotification:Ljava/lang/String;

    .line 263
    const-string v0, "BeadDidShowNotification"

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->BeadDidShowNotification:Ljava/lang/String;

    .line 264
    const-string v0, "BeadWillDismissNotification"

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->BeadWillDismissNotification:Ljava/lang/String;

    .line 265
    const-string v0, "BeadDidDismissNotification"

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->BeadDidDismissNotification:Ljava/lang/String;

    .line 266
    const-string v0, "BeadBackKeyClickedNotification"

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->BeadBackKeyClickedNotification:Ljava/lang/String;

    .line 267
    const-string v0, "BeadCancelButtonClickedNotification"

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->BeadCancelButtonClickedNotification:Ljava/lang/String;

    .line 311
    new-instance v0, Ljp/beyond/sdk/Bead$1;

    invoke-direct {v0, p0}, Ljp/beyond/sdk/Bead$1;-><init>(Ljp/beyond/sdk/Bead;)V

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 489
    iput-object p2, p0, Ljp/beyond/sdk/Bead;->mDialogType:Ljp/beyond/sdk/Bead$DialogType;

    .line 490
    iput-object p1, p0, Ljp/beyond/sdk/Bead;->mSid:Ljava/lang/String;

    .line 493
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljp/beyond/sdk/Bead$ViewType;)V
    .locals 4
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "viewType"    # Ljp/beyond/sdk/Bead$ViewType;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 495
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 112
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 115
    sget-object v0, Ljp/beyond/sdk/Bead$eOrientation;->Portrait:Ljp/beyond/sdk/Bead$eOrientation;

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->eLastOrientation:Ljp/beyond/sdk/Bead$eOrientation;

    .line 116
    sget-object v0, Ljp/beyond/sdk/Bead$eOrientation;->Portrait:Ljp/beyond/sdk/Bead$eOrientation;

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->cOrientation:Ljp/beyond/sdk/Bead$eOrientation;

    .line 118
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->PreviouseActivity:Landroid/app/Activity;

    .line 119
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->CurrentActivity:Landroid/app/Activity;

    .line 122
    iput-boolean v2, p0, Ljp/beyond/sdk/Bead;->isShowAD:Z

    .line 172
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->mDialog:Landroid/app/Dialog;

    .line 175
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->mView:Landroid/view/View;

    .line 178
    sget-object v0, Ljp/beyond/sdk/Bead$ViewType;->Banner:Ljp/beyond/sdk/Bead$ViewType;

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->mViewType:Ljp/beyond/sdk/Bead$ViewType;

    .line 181
    sget-object v0, Ljp/beyond/sdk/Bead$DialogType;->Optional:Ljp/beyond/sdk/Bead$DialogType;

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->mDialogType:Ljp/beyond/sdk/Bead$DialogType;

    .line 183
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 185
    const-string v0, ""

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->mSid:Ljava/lang/String;

    .line 188
    sget-object v0, Ljp/beyond/sdk/Bead$ContentsOrientation;->Auto:Ljp/beyond/sdk/Bead$ContentsOrientation;

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->mOrientation:Ljp/beyond/sdk/Bead$ContentsOrientation;

    .line 191
    iput-boolean v2, p0, Ljp/beyond/sdk/Bead;->mDoneFirstSetting:Z

    .line 194
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    .line 197
    iput v2, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    .line 200
    iput v3, p0, Ljp/beyond/sdk/Bead;->mInterval:I

    .line 203
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->mFinishClickListener:Landroid/view/View$OnClickListener;

    .line 206
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->mCancelClickListener:Landroid/view/View$OnClickListener;

    .line 207
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->mOnBackKeyClickListener:Landroid/view/View$OnClickListener;

    .line 209
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->adData_TEMP:Ljp/beyond/sdk/BeadData;

    .line 210
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->imageName_TEMP:Ljava/lang/String;

    .line 212
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->mBeadRelativeLayout:Landroid/widget/RelativeLayout;

    .line 217
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 220
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->mContext:Landroid/content/Context;

    .line 235
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->mConnectionUtil:Ljp/beyond/sdk/utilities/ConnectionUtil;

    .line 236
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->view_A:Ljp/beyond/sdk/layout/BeadView;

    .line 237
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->view_B:Ljp/beyond/sdk/layout/BeadView;

    .line 238
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->adBitmap_A:Landroid/graphics/Bitmap;

    .line 239
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->adBitmap_B:Landroid/graphics/Bitmap;

    .line 240
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->imageName_A:Ljava/lang/String;

    .line 241
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->imageName_B:Ljava/lang/String;

    .line 242
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->adData_A:Ljp/beyond/sdk/BeadData;

    .line 243
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->adData_B:Ljp/beyond/sdk/BeadData;

    .line 245
    iput v2, p0, Ljp/beyond/sdk/Bead;->BannerID:I

    .line 247
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->adBitmap:Landroid/graphics/Bitmap;

    .line 248
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->adData:Ljp/beyond/sdk/BeadData;

    .line 249
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->imageName:Ljava/lang/String;

    .line 251
    iput-boolean v3, p0, Ljp/beyond/sdk/Bead;->BannerShown:Z

    .line 252
    iput-object v1, p0, Ljp/beyond/sdk/Bead;->refresh_timer:Ljava/util/Timer;

    .line 262
    const-string v0, "BeadWillShowNotification"

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->BeadWillShowNotification:Ljava/lang/String;

    .line 263
    const-string v0, "BeadDidShowNotification"

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->BeadDidShowNotification:Ljava/lang/String;

    .line 264
    const-string v0, "BeadWillDismissNotification"

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->BeadWillDismissNotification:Ljava/lang/String;

    .line 265
    const-string v0, "BeadDidDismissNotification"

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->BeadDidDismissNotification:Ljava/lang/String;

    .line 266
    const-string v0, "BeadBackKeyClickedNotification"

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->BeadBackKeyClickedNotification:Ljava/lang/String;

    .line 267
    const-string v0, "BeadCancelButtonClickedNotification"

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->BeadCancelButtonClickedNotification:Ljava/lang/String;

    .line 311
    new-instance v0, Ljp/beyond/sdk/Bead$1;

    invoke-direct {v0, p0}, Ljp/beyond/sdk/Bead$1;-><init>(Ljp/beyond/sdk/Bead;)V

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 496
    iput-object p2, p0, Ljp/beyond/sdk/Bead;->mViewType:Ljp/beyond/sdk/Bead$ViewType;

    .line 497
    iput-object p1, p0, Ljp/beyond/sdk/Bead;->mSid:Ljava/lang/String;

    .line 499
    return-void
.end method

.method static synthetic access$0()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 216
    sget-object v0, Ljp/beyond/sdk/Bead;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1(Landroid/content/BroadcastReceiver;)V
    .locals 0

    .prologue
    .line 216
    sput-object p0, Ljp/beyond/sdk/Bead;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$10(Ljp/beyond/sdk/Bead;Ljp/beyond/sdk/Bead$eOrientation;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Ljp/beyond/sdk/Bead;->cOrientation:Ljp/beyond/sdk/Bead$eOrientation;

    return-void
.end method

.method static synthetic access$11(Ljp/beyond/sdk/Bead;)Ljp/beyond/sdk/Bead$eOrientation;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->cOrientation:Ljp/beyond/sdk/Bead$eOrientation;

    return-object v0
.end method

.method static synthetic access$12(Ljp/beyond/sdk/Bead;)Ljp/beyond/sdk/Bead$eOrientation;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->eLastOrientation:Ljp/beyond/sdk/Bead$eOrientation;

    return-object v0
.end method

.method static synthetic access$13(Ljp/beyond/sdk/Bead;)Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Ljp/beyond/sdk/Bead;->isShowAD:Z

    return v0
.end method

.method static synthetic access$14(Ljp/beyond/sdk/Bead;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$15(Ljp/beyond/sdk/Bead;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Ljp/beyond/sdk/Bead;->mDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$16(Ljp/beyond/sdk/Bead;Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 1390
    invoke-direct {p0, p1}, Ljp/beyond/sdk/Bead;->createDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17(Ljp/beyond/sdk/Bead;Ljp/beyond/sdk/Bead$eOrientation;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Ljp/beyond/sdk/Bead;->eLastOrientation:Ljp/beyond/sdk/Bead$eOrientation;

    return-void
.end method

.method static synthetic access$18(Ljp/beyond/sdk/Bead;Z)V
    .locals 0

    .prologue
    .line 122
    iput-boolean p1, p0, Ljp/beyond/sdk/Bead;->isShowAD:Z

    return-void
.end method

.method static synthetic access$19(Ljp/beyond/sdk/Bead;)V
    .locals 0

    .prologue
    .line 1775
    invoke-direct {p0}, Ljp/beyond/sdk/Bead;->retryFailedRequest()V

    return-void
.end method

.method static synthetic access$2(Ljp/beyond/sdk/Bead;)Ljp/beyond/sdk/BeadConnection;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    return-object v0
.end method

.method static synthetic access$20(Ljp/beyond/sdk/Bead;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1790
    invoke-direct {p0, p1}, Ljp/beyond/sdk/Bead;->doUserCancel(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$21(Ljp/beyond/sdk/Bead;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mFinishClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$22(Ljp/beyond/sdk/Bead;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1762
    invoke-direct {p0, p1, p2}, Ljp/beyond/sdk/Bead;->openUrl(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23(Ljp/beyond/sdk/Bead;)Ljp/beyond/sdk/Bead$DialogType;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mDialogType:Ljp/beyond/sdk/Bead$DialogType;

    return-object v0
.end method

.method static synthetic access$3(Ljp/beyond/sdk/Bead;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->position:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Ljp/beyond/sdk/Bead;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->isOverlay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Ljp/beyond/sdk/Bead;)I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Ljp/beyond/sdk/Bead;->BannerID:I

    return v0
.end method

.method static synthetic access$6(Ljp/beyond/sdk/Bead;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 1253
    invoke-direct {p0, p1, p2, p3, p4}, Ljp/beyond/sdk/Bead;->showBannerAd(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Ljp/beyond/sdk/Bead;)Ljp/beyond/sdk/utilities/ConnectionUtil;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mConnectionUtil:Ljp/beyond/sdk/utilities/ConnectionUtil;

    return-object v0
.end method

.method static synthetic access$8(Ljp/beyond/sdk/Bead;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->refresh_rate:Ljava/lang/String;

    return-object v0
.end method

.method public static createBannerInstance(Ljava/lang/String;)Ljp/beyond/sdk/Bead;
    .locals 1
    .param p0, "sid"    # Ljava/lang/String;

    .prologue
    .line 615
    sget-object v0, Ljp/beyond/sdk/Bead$ContentsOrientation;->Auto:Ljp/beyond/sdk/Bead$ContentsOrientation;

    invoke-static {p0, v0}, Ljp/beyond/sdk/Bead;->createBannerInstance(Ljava/lang/String;Ljp/beyond/sdk/Bead$ContentsOrientation;)Ljp/beyond/sdk/Bead;

    move-result-object v0

    return-object v0
.end method

.method public static createBannerInstance(Ljava/lang/String;Ljp/beyond/sdk/Bead$ContentsOrientation;)Ljp/beyond/sdk/Bead;
    .locals 2
    .param p0, "sid"    # Ljava/lang/String;
    .param p1, "orientation"    # Ljp/beyond/sdk/Bead$ContentsOrientation;

    .prologue
    .line 624
    new-instance v0, Ljp/beyond/sdk/Bead;

    sget-object v1, Ljp/beyond/sdk/Bead$ViewType;->Banner:Ljp/beyond/sdk/Bead$ViewType;

    invoke-direct {v0, p0, v1}, Ljp/beyond/sdk/Bead;-><init>(Ljava/lang/String;Ljp/beyond/sdk/Bead$ViewType;)V

    .line 625
    .local v0, "bead":Ljp/beyond/sdk/Bead;
    iput-object p1, v0, Ljp/beyond/sdk/Bead;->mOrientation:Ljp/beyond/sdk/Bead$ContentsOrientation;

    .line 626
    new-instance v1, Ljp/beyond/sdk/utilities/ConnectionUtil;

    invoke-direct {v1}, Ljp/beyond/sdk/utilities/ConnectionUtil;-><init>()V

    iput-object v1, v0, Ljp/beyond/sdk/Bead;->mConnectionUtil:Ljp/beyond/sdk/utilities/ConnectionUtil;

    .line 631
    return-object v0
.end method

.method private createDialog(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const v8, 0x7f080003

    .line 1392
    const/4 v0, 0x0

    .line 1393
    .local v0, "dialog":Ljp/beyond/sdk/layout/BeadDialog;
    const/4 v3, 0x0

    .line 1394
    .local v3, "adBitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 1395
    .local v2, "adData":Ljp/beyond/sdk/BeadData;
    const/4 v4, 0x0

    .line 1403
    .local v4, "imageName":Ljava/lang/String;
    iget-object v1, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v1}, Ljp/beyond/sdk/BeadConnection;->getRequestStatus()Ljp/beyond/sdk/BeadConnection$RequestStatus;

    move-result-object v1

    sget-object v5, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Received:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    if-eq v1, v5, :cond_4

    .line 1404
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v5, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v5}, Ljp/beyond/sdk/BeadConnection;->getAdDataFileName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_TEMP"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljp/beyond/sdk/utilities/FileUtil;->loadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "adData":Ljp/beyond/sdk/BeadData;
    check-cast v2, Ljp/beyond/sdk/BeadData;

    .line 1405
    .restart local v2    # "adData":Ljp/beyond/sdk/BeadData;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v5, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v5}, Ljp/beyond/sdk/BeadConnection;->getAdImageFileName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_TEMP"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1406
    const-string v1, "Bead"

    const-string v5, "using TEMP files"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    :goto_0
    const/4 v7, 0x1

    .line 1417
    .local v7, "isShow":Z
    if-nez v2, :cond_5

    .line 1420
    const/4 v7, 0x0

    .line 1442
    :cond_0
    :goto_1
    if-nez v7, :cond_1

    iget-object v1, p0, Ljp/beyond/sdk/Bead;->mDialogType:Ljp/beyond/sdk/Bead$DialogType;

    sget-object v5, Ljp/beyond/sdk/Bead$DialogType;->Optional:Ljp/beyond/sdk/Bead$DialogType;

    if-eq v1, v5, :cond_3

    .line 1443
    :cond_1
    if-nez v7, :cond_2

    iget-object v1, p0, Ljp/beyond/sdk/Bead;->mDialogType:Ljp/beyond/sdk/Bead$DialogType;

    sget-object v5, Ljp/beyond/sdk/Bead$DialogType;->Icon:Ljp/beyond/sdk/Bead$DialogType;

    if-eq v1, v5, :cond_3

    .line 1444
    :cond_2
    if-nez v7, :cond_7

    iget-object v1, p0, Ljp/beyond/sdk/Bead;->mDialogType:Ljp/beyond/sdk/Bead$DialogType;

    sget-object v5, Ljp/beyond/sdk/Bead$DialogType;->IconText:Ljp/beyond/sdk/Bead$DialogType;

    if-ne v1, v5, :cond_7

    :cond_3
    move-object v6, v0

    .line 1517
    .end local v0    # "dialog":Ljp/beyond/sdk/layout/BeadDialog;
    .local v6, "dialog":Ljp/beyond/sdk/layout/BeadDialog;
    :goto_2
    return-object v6

    .line 1408
    .end local v6    # "dialog":Ljp/beyond/sdk/layout/BeadDialog;
    .end local v7    # "isShow":Z
    .restart local v0    # "dialog":Ljp/beyond/sdk/layout/BeadDialog;
    :cond_4
    iget-object v1, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v1}, Ljp/beyond/sdk/BeadConnection;->getAdDataFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljp/beyond/sdk/utilities/FileUtil;->loadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "adData":Ljp/beyond/sdk/BeadData;
    check-cast v2, Ljp/beyond/sdk/BeadData;

    .line 1409
    .restart local v2    # "adData":Ljp/beyond/sdk/BeadData;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v5, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v5}, Ljp/beyond/sdk/BeadConnection;->getAdDataFileName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_TEMP"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljp/beyond/sdk/utilities/FileUtil;->loadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/beyond/sdk/BeadData;

    iput-object v1, p0, Ljp/beyond/sdk/Bead;->adData_TEMP:Ljp/beyond/sdk/BeadData;

    .line 1410
    iget-object v1, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v1}, Ljp/beyond/sdk/BeadConnection;->getAdImageFileName()Ljava/lang/String;

    move-result-object v4

    .line 1411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_TEMP"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/beyond/sdk/Bead;->imageName_TEMP:Ljava/lang/String;

    goto :goto_0

    .line 1431
    .restart local v7    # "isShow":Z
    :cond_5
    iget-object v1, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v1}, Ljp/beyond/sdk/BeadConnection;->getRequestStatus()Ljp/beyond/sdk/BeadConnection$RequestStatus;

    move-result-object v1

    sget-object v5, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Cancelling:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    if-ne v1, v5, :cond_6

    .line 1432
    invoke-static {p1, v4}, Ljp/beyond/sdk/utilities/FileUtil;->loadBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1436
    :goto_3
    if-nez v3, :cond_0

    .line 1438
    const/4 v7, 0x0

    goto :goto_1

    .line 1434
    :cond_6
    iget-object v1, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v1}, Ljp/beyond/sdk/BeadConnection;->getAdImageFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljp/beyond/sdk/utilities/FileUtil;->loadBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_3

    .line 1449
    :cond_7
    invoke-static {}, Ljp/beyond/sdk/Bead;->$SWITCH_TABLE$jp$beyond$sdk$Bead$DialogType()[I

    move-result-object v1

    iget-object v5, p0, Ljp/beyond/sdk/Bead;->mDialogType:Ljp/beyond/sdk/Bead$DialogType;

    invoke-virtual {v5}, Ljp/beyond/sdk/Bead$DialogType;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_0

    :cond_8
    :goto_4
    move-object v6, v0

    .line 1517
    .end local v0    # "dialog":Ljp/beyond/sdk/layout/BeadDialog;
    .restart local v6    # "dialog":Ljp/beyond/sdk/layout/BeadDialog;
    goto :goto_2

    .line 1452
    .end local v6    # "dialog":Ljp/beyond/sdk/layout/BeadDialog;
    .restart local v0    # "dialog":Ljp/beyond/sdk/layout/BeadDialog;
    :pswitch_0
    if-eqz v7, :cond_b

    .line 1454
    if-eqz v2, :cond_a

    .line 1455
    new-instance v0, Ljp/beyond/sdk/layout/BeadDialog;

    .end local v0    # "dialog":Ljp/beyond/sdk/layout/BeadDialog;
    invoke-direct {p0, p1}, Ljp/beyond/sdk/Bead;->createDialogEventListener(Landroid/app/Activity;)Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljp/beyond/sdk/layout/BeadDialog;-><init>(Landroid/content/Context;Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;)V

    .line 1456
    .restart local v0    # "dialog":Ljp/beyond/sdk/layout/BeadDialog;
    invoke-virtual {v2}, Ljp/beyond/sdk/BeadData;->getTransitionAnimation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1457
    invoke-virtual {v0}, Ljp/beyond/sdk/layout/BeadDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-direct {p0, v2}, Ljp/beyond/sdk/Bead;->getAnimation(Ljp/beyond/sdk/BeadData;)I

    move-result v5

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1458
    :cond_9
    new-instance v5, Ljp/beyond/sdk/layout/BeadExitLayout;

    invoke-direct {v5}, Ljp/beyond/sdk/layout/BeadExitLayout;-><init>()V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljp/beyond/sdk/layout/BeadDialog;->applyAdLayout(Landroid/content/Context;Ljp/beyond/sdk/BeadData;Landroid/graphics/Bitmap;Ljava/lang/String;Ljp/beyond/sdk/layout/BeadLayout;)V

    goto :goto_4

    .line 1460
    :cond_a
    new-instance v0, Ljp/beyond/sdk/layout/BeadDialog;

    .end local v0    # "dialog":Ljp/beyond/sdk/layout/BeadDialog;
    invoke-direct {p0, p1}, Ljp/beyond/sdk/Bead;->createMessageDialogEventListener(Landroid/app/Activity;)Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljp/beyond/sdk/layout/BeadDialog;-><init>(Landroid/content/Context;Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;)V

    .line 1462
    .restart local v0    # "dialog":Ljp/beyond/sdk/layout/BeadDialog;
    invoke-virtual {v0}, Ljp/beyond/sdk/layout/BeadDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1463
    new-instance v5, Ljp/beyond/sdk/layout/BeadExitDefaultLayout;

    invoke-direct {v5}, Ljp/beyond/sdk/layout/BeadExitDefaultLayout;-><init>()V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljp/beyond/sdk/layout/BeadDialog;->applyAdLayout(Landroid/content/Context;Ljp/beyond/sdk/BeadData;Landroid/graphics/Bitmap;Ljava/lang/String;Ljp/beyond/sdk/layout/BeadLayout;)V

    goto :goto_4

    .line 1467
    :cond_b
    new-instance v0, Ljp/beyond/sdk/layout/BeadDialog;

    .end local v0    # "dialog":Ljp/beyond/sdk/layout/BeadDialog;
    invoke-direct {p0, p1}, Ljp/beyond/sdk/Bead;->createMessageDialogEventListener(Landroid/app/Activity;)Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljp/beyond/sdk/layout/BeadDialog;-><init>(Landroid/content/Context;Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;)V

    .line 1469
    .restart local v0    # "dialog":Ljp/beyond/sdk/layout/BeadDialog;
    invoke-virtual {v0}, Ljp/beyond/sdk/layout/BeadDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1470
    new-instance v5, Ljp/beyond/sdk/layout/BeadExitDefaultLayout;

    invoke-direct {v5}, Ljp/beyond/sdk/layout/BeadExitDefaultLayout;-><init>()V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljp/beyond/sdk/layout/BeadDialog;->applyAdLayout(Landroid/content/Context;Ljp/beyond/sdk/BeadData;Landroid/graphics/Bitmap;Ljava/lang/String;Ljp/beyond/sdk/layout/BeadLayout;)V

    goto :goto_4

    .line 1474
    :pswitch_1
    invoke-virtual {v2}, Ljp/beyond/sdk/BeadData;->getIcon_Text()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 1476
    new-instance v0, Ljp/beyond/sdk/layout/BeadDialog;

    .end local v0    # "dialog":Ljp/beyond/sdk/layout/BeadDialog;
    invoke-direct {p0, p1}, Ljp/beyond/sdk/Bead;->createDialogEventListener(Landroid/app/Activity;)Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljp/beyond/sdk/layout/BeadDialog;-><init>(Landroid/content/Context;Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;)V

    .line 1477
    .restart local v0    # "dialog":Ljp/beyond/sdk/layout/BeadDialog;
    if-eqz v2, :cond_8

    .line 1478
    new-instance v5, Ljp/beyond/sdk/layout/BeadIconLayout;

    invoke-direct {v5}, Ljp/beyond/sdk/layout/BeadIconLayout;-><init>()V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljp/beyond/sdk/layout/BeadDialog;->applyIconLayout(Landroid/content/Context;Ljp/beyond/sdk/BeadData;Landroid/graphics/Bitmap;Ljava/lang/String;Ljp/beyond/sdk/layout/BeadLayout;)V

    goto/16 :goto_4

    .line 1481
    :cond_c
    new-instance v0, Ljp/beyond/sdk/layout/BeadDialog;

    .end local v0    # "dialog":Ljp/beyond/sdk/layout/BeadDialog;
    invoke-direct {p0, p1}, Ljp/beyond/sdk/Bead;->createDialogEventListener(Landroid/app/Activity;)Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljp/beyond/sdk/layout/BeadDialog;-><init>(Landroid/content/Context;Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;)V

    .line 1482
    .restart local v0    # "dialog":Ljp/beyond/sdk/layout/BeadDialog;
    invoke-virtual {v2}, Ljp/beyond/sdk/BeadData;->getTransitionAnimation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 1483
    invoke-virtual {v0}, Ljp/beyond/sdk/layout/BeadDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-direct {p0, v2}, Ljp/beyond/sdk/Bead;->getAnimation(Ljp/beyond/sdk/BeadData;)I

    move-result v5

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1484
    :cond_d
    new-instance v5, Ljp/beyond/sdk/layout/BeadOptionalLayout;

    invoke-direct {v5}, Ljp/beyond/sdk/layout/BeadOptionalLayout;-><init>()V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljp/beyond/sdk/layout/BeadDialog;->applyAdLayout(Landroid/content/Context;Ljp/beyond/sdk/BeadData;Landroid/graphics/Bitmap;Ljava/lang/String;Ljp/beyond/sdk/layout/BeadLayout;)V

    goto/16 :goto_4

    .line 1489
    :pswitch_2
    new-instance v0, Ljp/beyond/sdk/layout/BeadDialog;

    .end local v0    # "dialog":Ljp/beyond/sdk/layout/BeadDialog;
    invoke-direct {p0, p1}, Ljp/beyond/sdk/Bead;->createDialogEventListener(Landroid/app/Activity;)Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljp/beyond/sdk/layout/BeadDialog;-><init>(Landroid/content/Context;Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;)V

    .line 1490
    .restart local v0    # "dialog":Ljp/beyond/sdk/layout/BeadDialog;
    if-eqz v2, :cond_8

    .line 1491
    new-instance v5, Ljp/beyond/sdk/layout/BeadIconLayout;

    invoke-direct {v5}, Ljp/beyond/sdk/layout/BeadIconLayout;-><init>()V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljp/beyond/sdk/layout/BeadDialog;->applyIconLayout(Landroid/content/Context;Ljp/beyond/sdk/BeadData;Landroid/graphics/Bitmap;Ljava/lang/String;Ljp/beyond/sdk/layout/BeadLayout;)V

    goto/16 :goto_4

    .line 1494
    :pswitch_3
    new-instance v0, Ljp/beyond/sdk/layout/BeadDialog;

    .end local v0    # "dialog":Ljp/beyond/sdk/layout/BeadDialog;
    invoke-direct {p0, p1}, Ljp/beyond/sdk/Bead;->createDialogEventListener(Landroid/app/Activity;)Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljp/beyond/sdk/layout/BeadDialog;-><init>(Landroid/content/Context;Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;)V

    .line 1495
    .restart local v0    # "dialog":Ljp/beyond/sdk/layout/BeadDialog;
    if-eqz v2, :cond_8

    .line 1496
    new-instance v5, Ljp/beyond/sdk/layout/BeadIconLayout;

    invoke-direct {v5}, Ljp/beyond/sdk/layout/BeadIconLayout;-><init>()V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljp/beyond/sdk/layout/BeadDialog;->applyIconLayout(Landroid/content/Context;Ljp/beyond/sdk/BeadData;Landroid/graphics/Bitmap;Ljava/lang/String;Ljp/beyond/sdk/layout/BeadLayout;)V

    goto/16 :goto_4

    .line 1499
    :pswitch_4
    new-instance v0, Ljp/beyond/sdk/layout/BeadDialog;

    .end local v0    # "dialog":Ljp/beyond/sdk/layout/BeadDialog;
    invoke-direct {p0, p1}, Ljp/beyond/sdk/Bead;->createDialogEventListener(Landroid/app/Activity;)Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljp/beyond/sdk/layout/BeadDialog;-><init>(Landroid/content/Context;Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;)V

    .line 1500
    .restart local v0    # "dialog":Ljp/beyond/sdk/layout/BeadDialog;
    if-eqz v2, :cond_8

    .line 1501
    new-instance v5, Ljp/beyond/sdk/layout/BeadIcon2Layout;

    invoke-direct {v5}, Ljp/beyond/sdk/layout/BeadIcon2Layout;-><init>()V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljp/beyond/sdk/layout/BeadDialog;->applyIcon2Layout(Landroid/content/Context;Ljp/beyond/sdk/BeadData;Landroid/graphics/Bitmap;Ljava/lang/String;Ljp/beyond/sdk/layout/BeadLayout;)V

    goto/16 :goto_4

    .line 1449
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private createDialogEventListener(Landroid/app/Activity;)Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1621
    new-instance v0, Ljp/beyond/sdk/Bead$7;

    invoke-direct {v0, p0, p1}, Ljp/beyond/sdk/Bead$7;-><init>(Ljp/beyond/sdk/Bead;Landroid/app/Activity;)V

    return-object v0
.end method

.method public static createExitInstance(Ljava/lang/String;)Ljp/beyond/sdk/Bead;
    .locals 1
    .param p0, "sid"    # Ljava/lang/String;

    .prologue
    .line 506
    sget-object v0, Ljp/beyond/sdk/Bead$ContentsOrientation;->Auto:Ljp/beyond/sdk/Bead$ContentsOrientation;

    invoke-static {p0, v0}, Ljp/beyond/sdk/Bead;->createExitInstance(Ljava/lang/String;Ljp/beyond/sdk/Bead$ContentsOrientation;)Ljp/beyond/sdk/Bead;

    move-result-object v0

    return-object v0
.end method

.method public static createExitInstance(Ljava/lang/String;Ljp/beyond/sdk/Bead$ContentsOrientation;)Ljp/beyond/sdk/Bead;
    .locals 2
    .param p0, "sid"    # Ljava/lang/String;
    .param p1, "orientation"    # Ljp/beyond/sdk/Bead$ContentsOrientation;

    .prologue
    .line 516
    new-instance v0, Ljp/beyond/sdk/Bead;

    sget-object v1, Ljp/beyond/sdk/Bead$DialogType;->Exit:Ljp/beyond/sdk/Bead$DialogType;

    invoke-direct {v0, p0, v1}, Ljp/beyond/sdk/Bead;-><init>(Ljava/lang/String;Ljp/beyond/sdk/Bead$DialogType;)V

    .line 517
    .local v0, "bead":Ljp/beyond/sdk/Bead;
    iput-object p1, v0, Ljp/beyond/sdk/Bead;->mOrientation:Ljp/beyond/sdk/Bead$ContentsOrientation;

    .line 518
    new-instance v1, Ljp/beyond/sdk/utilities/ConnectionUtil;

    invoke-direct {v1}, Ljp/beyond/sdk/utilities/ConnectionUtil;-><init>()V

    iput-object v1, v0, Ljp/beyond/sdk/Bead;->mConnectionUtil:Ljp/beyond/sdk/utilities/ConnectionUtil;

    .line 520
    return-object v0
.end method

.method public static createIcon2Instance(Ljava/lang/String;)Ljp/beyond/sdk/Bead;
    .locals 1
    .param p0, "sid"    # Ljava/lang/String;

    .prologue
    .line 565
    sget-object v0, Ljp/beyond/sdk/Bead$ContentsOrientation;->Auto:Ljp/beyond/sdk/Bead$ContentsOrientation;

    invoke-static {p0, v0}, Ljp/beyond/sdk/Bead;->createIcon2Instance(Ljava/lang/String;Ljp/beyond/sdk/Bead$ContentsOrientation;)Ljp/beyond/sdk/Bead;

    move-result-object v0

    return-object v0
.end method

.method public static createIcon2Instance(Ljava/lang/String;Ljp/beyond/sdk/Bead$ContentsOrientation;)Ljp/beyond/sdk/Bead;
    .locals 2
    .param p0, "sid"    # Ljava/lang/String;
    .param p1, "orientation"    # Ljp/beyond/sdk/Bead$ContentsOrientation;

    .prologue
    .line 554
    new-instance v0, Ljp/beyond/sdk/Bead;

    sget-object v1, Ljp/beyond/sdk/Bead$DialogType;->Icon2:Ljp/beyond/sdk/Bead$DialogType;

    invoke-direct {v0, p0, v1}, Ljp/beyond/sdk/Bead;-><init>(Ljava/lang/String;Ljp/beyond/sdk/Bead$DialogType;)V

    .line 555
    .local v0, "bead":Ljp/beyond/sdk/Bead;
    iput-object p1, v0, Ljp/beyond/sdk/Bead;->mOrientation:Ljp/beyond/sdk/Bead$ContentsOrientation;

    .line 557
    return-object v0
.end method

.method public static createIconInstance(Ljava/lang/String;)Ljp/beyond/sdk/Bead;
    .locals 1
    .param p0, "sid"    # Ljava/lang/String;

    .prologue
    .line 573
    sget-object v0, Ljp/beyond/sdk/Bead$ContentsOrientation;->Auto:Ljp/beyond/sdk/Bead$ContentsOrientation;

    invoke-static {p0, v0}, Ljp/beyond/sdk/Bead;->createIconInstance(Ljava/lang/String;Ljp/beyond/sdk/Bead$ContentsOrientation;)Ljp/beyond/sdk/Bead;

    move-result-object v0

    return-object v0
.end method

.method public static createIconInstance(Ljava/lang/String;Ljp/beyond/sdk/Bead$ContentsOrientation;)Ljp/beyond/sdk/Bead;
    .locals 2
    .param p0, "sid"    # Ljava/lang/String;
    .param p1, "orientation"    # Ljp/beyond/sdk/Bead$ContentsOrientation;

    .prologue
    .line 583
    new-instance v0, Ljp/beyond/sdk/Bead;

    sget-object v1, Ljp/beyond/sdk/Bead$DialogType;->Icon:Ljp/beyond/sdk/Bead$DialogType;

    invoke-direct {v0, p0, v1}, Ljp/beyond/sdk/Bead;-><init>(Ljava/lang/String;Ljp/beyond/sdk/Bead$DialogType;)V

    .line 584
    .local v0, "bead":Ljp/beyond/sdk/Bead;
    iput-object p1, v0, Ljp/beyond/sdk/Bead;->mOrientation:Ljp/beyond/sdk/Bead$ContentsOrientation;

    .line 585
    new-instance v1, Ljp/beyond/sdk/utilities/ConnectionUtil;

    invoke-direct {v1}, Ljp/beyond/sdk/utilities/ConnectionUtil;-><init>()V

    iput-object v1, v0, Ljp/beyond/sdk/Bead;->mConnectionUtil:Ljp/beyond/sdk/utilities/ConnectionUtil;

    .line 586
    return-object v0
.end method

.method public static createIconTextInstance(Ljava/lang/String;)Ljp/beyond/sdk/Bead;
    .locals 1
    .param p0, "sid"    # Ljava/lang/String;

    .prologue
    .line 594
    sget-object v0, Ljp/beyond/sdk/Bead$ContentsOrientation;->Auto:Ljp/beyond/sdk/Bead$ContentsOrientation;

    invoke-static {p0, v0}, Ljp/beyond/sdk/Bead;->createIconTextInstance(Ljava/lang/String;Ljp/beyond/sdk/Bead$ContentsOrientation;)Ljp/beyond/sdk/Bead;

    move-result-object v0

    return-object v0
.end method

.method public static createIconTextInstance(Ljava/lang/String;Ljp/beyond/sdk/Bead$ContentsOrientation;)Ljp/beyond/sdk/Bead;
    .locals 2
    .param p0, "sid"    # Ljava/lang/String;
    .param p1, "orientation"    # Ljp/beyond/sdk/Bead$ContentsOrientation;

    .prologue
    .line 603
    new-instance v0, Ljp/beyond/sdk/Bead;

    sget-object v1, Ljp/beyond/sdk/Bead$DialogType;->IconText:Ljp/beyond/sdk/Bead$DialogType;

    invoke-direct {v0, p0, v1}, Ljp/beyond/sdk/Bead;-><init>(Ljava/lang/String;Ljp/beyond/sdk/Bead$DialogType;)V

    .line 604
    .local v0, "bead":Ljp/beyond/sdk/Bead;
    iput-object p1, v0, Ljp/beyond/sdk/Bead;->mOrientation:Ljp/beyond/sdk/Bead$ContentsOrientation;

    .line 605
    new-instance v1, Ljp/beyond/sdk/utilities/ConnectionUtil;

    invoke-direct {v1}, Ljp/beyond/sdk/utilities/ConnectionUtil;-><init>()V

    iput-object v1, v0, Ljp/beyond/sdk/Bead;->mConnectionUtil:Ljp/beyond/sdk/utilities/ConnectionUtil;

    .line 607
    return-object v0
.end method

.method private createMessageDialogEventListener(Landroid/app/Activity;)Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1552
    new-instance v0, Ljp/beyond/sdk/Bead$6;

    invoke-direct {v0, p0, p1}, Ljp/beyond/sdk/Bead$6;-><init>(Ljp/beyond/sdk/Bead;Landroid/app/Activity;)V

    return-object v0
.end method

.method public static createOptionalInstance(Ljava/lang/String;I)Ljp/beyond/sdk/Bead;
    .locals 1
    .param p0, "sid"    # Ljava/lang/String;
    .param p1, "interval"    # I

    .prologue
    .line 530
    sget-object v0, Ljp/beyond/sdk/Bead$ContentsOrientation;->Auto:Ljp/beyond/sdk/Bead$ContentsOrientation;

    invoke-static {p0, p1, v0}, Ljp/beyond/sdk/Bead;->createOptionalInstance(Ljava/lang/String;ILjp/beyond/sdk/Bead$ContentsOrientation;)Ljp/beyond/sdk/Bead;

    move-result-object v0

    return-object v0
.end method

.method public static createOptionalInstance(Ljava/lang/String;ILjp/beyond/sdk/Bead$ContentsOrientation;)Ljp/beyond/sdk/Bead;
    .locals 2
    .param p0, "sid"    # Ljava/lang/String;
    .param p1, "interval"    # I
    .param p2, "orientation"    # Ljp/beyond/sdk/Bead$ContentsOrientation;

    .prologue
    .line 541
    new-instance v0, Ljp/beyond/sdk/Bead;

    sget-object v1, Ljp/beyond/sdk/Bead$DialogType;->Optional:Ljp/beyond/sdk/Bead$DialogType;

    invoke-direct {v0, p0, v1}, Ljp/beyond/sdk/Bead;-><init>(Ljava/lang/String;Ljp/beyond/sdk/Bead$DialogType;)V

    .line 542
    .local v0, "bead":Ljp/beyond/sdk/Bead;
    iput p1, v0, Ljp/beyond/sdk/Bead;->mInterval:I

    .line 543
    iput-object p2, v0, Ljp/beyond/sdk/Bead;->mOrientation:Ljp/beyond/sdk/Bead$ContentsOrientation;

    .line 544
    new-instance v1, Ljp/beyond/sdk/utilities/ConnectionUtil;

    invoke-direct {v1}, Ljp/beyond/sdk/utilities/ConnectionUtil;-><init>()V

    iput-object v1, v0, Ljp/beyond/sdk/Bead;->mConnectionUtil:Ljp/beyond/sdk/utilities/ConnectionUtil;

    .line 545
    return-object v0
.end method

.method private createView(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "position"    # Ljava/lang/String;
    .param p3, "isOverlay"    # Ljava/lang/String;
    .param p4, "BannerID"    # I

    .prologue
    .line 1285
    const/4 v9, 0x0

    .line 1290
    .local v9, "view":Ljp/beyond/sdk/layout/BeadView;
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mConnectionUtil:Ljp/beyond/sdk/utilities/ConnectionUtil;

    invoke-virtual {v0, p1}, Ljp/beyond/sdk/utilities/ConnectionUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1293
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->adData_A:Ljp/beyond/sdk/BeadData;

    if-nez v0, :cond_3

    .line 1294
    const-string v0, "Bead"

    const-string v1, "Load New Banner AD"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v0}, Ljp/beyond/sdk/BeadConnection;->getAdDataFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljp/beyond/sdk/utilities/FileUtil;->loadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/beyond/sdk/BeadData;

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->adData:Ljp/beyond/sdk/BeadData;

    .line 1296
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v0}, Ljp/beyond/sdk/BeadConnection;->getAdImageFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->imageName:Ljava/lang/String;

    .line 1298
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->adData:Ljp/beyond/sdk/BeadData;

    if-eqz v0, :cond_2

    .line 1311
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v0}, Ljp/beyond/sdk/BeadConnection;->getAdImageFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljp/beyond/sdk/utilities/FileUtil;->loadBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->adBitmap:Landroid/graphics/Bitmap;

    .line 1316
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->adData:Ljp/beyond/sdk/BeadData;

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->adData_A:Ljp/beyond/sdk/BeadData;

    .line 1317
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->adBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->adBitmap_A:Landroid/graphics/Bitmap;

    .line 1318
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->imageName:Ljava/lang/String;

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->imageName_A:Ljava/lang/String;

    .line 1360
    :cond_0
    :goto_0
    iget-boolean v0, p0, Ljp/beyond/sdk/Bead;->BannerShown:Z

    if-eqz v0, :cond_5

    .line 1362
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->adData_A:Ljp/beyond/sdk/BeadData;

    if-eqz v0, :cond_1

    .line 1363
    new-instance v0, Ljp/beyond/sdk/layout/BeadView;

    invoke-direct {p0, p1}, Ljp/beyond/sdk/Bead;->createViewEventListener(Landroid/app/Activity;)Ljp/beyond/sdk/layout/BeadView$BeadViewEventListener;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljp/beyond/sdk/layout/BeadView;-><init>(Landroid/app/Activity;Ljp/beyond/sdk/layout/BeadView$BeadViewEventListener;)V

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->view_A:Ljp/beyond/sdk/layout/BeadView;

    .line 1364
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->view_A:Ljp/beyond/sdk/layout/BeadView;

    iget-object v2, p0, Ljp/beyond/sdk/Bead;->adData_A:Ljp/beyond/sdk/BeadData;

    iget-object v3, p0, Ljp/beyond/sdk/Bead;->adBitmap_A:Landroid/graphics/Bitmap;

    iget-object v4, p0, Ljp/beyond/sdk/Bead;->imageName_A:Ljava/lang/String;

    new-instance v5, Ljp/beyond/sdk/layout/BeadBannerLayout;

    invoke-direct {v5}, Ljp/beyond/sdk/layout/BeadBannerLayout;-><init>()V

    move-object v1, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Ljp/beyond/sdk/layout/BeadView;->applyBannerLayout(Landroid/app/Activity;Ljp/beyond/sdk/BeadData;Landroid/graphics/Bitmap;Ljava/lang/String;Ljp/beyond/sdk/layout/BeadLayout;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    .line 1365
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/beyond/sdk/Bead;->BannerShown:Z

    .line 1366
    const-string v0, "Bead"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Display AD A"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljp/beyond/sdk/Bead;->adData_A:Ljp/beyond/sdk/BeadData;

    invoke-virtual {v2}, Ljp/beyond/sdk/BeadData;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :cond_1
    :goto_1
    return-object v9

    .line 1320
    :cond_2
    const-string v0, "Bead"

    const-string v1, "OOPS!! Data Empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1326
    :cond_3
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->adData_B:Ljp/beyond/sdk/BeadData;

    if-nez v0, :cond_0

    .line 1327
    const-string v0, "Bead"

    const-string v1, "Load Banner AD B"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v0}, Ljp/beyond/sdk/BeadConnection;->getAdDataFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljp/beyond/sdk/utilities/FileUtil;->loadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/beyond/sdk/BeadData;

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->adData:Ljp/beyond/sdk/BeadData;

    .line 1329
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v0}, Ljp/beyond/sdk/BeadConnection;->getAdImageFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->imageName:Ljava/lang/String;

    .line 1331
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->adData:Ljp/beyond/sdk/BeadData;

    if-eqz v0, :cond_4

    .line 1344
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v0}, Ljp/beyond/sdk/BeadConnection;->getAdImageFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljp/beyond/sdk/utilities/FileUtil;->loadBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->adBitmap:Landroid/graphics/Bitmap;

    .line 1349
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->adData:Ljp/beyond/sdk/BeadData;

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->adData_B:Ljp/beyond/sdk/BeadData;

    .line 1350
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->adBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->adBitmap_B:Landroid/graphics/Bitmap;

    .line 1351
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->imageName:Ljava/lang/String;

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->imageName_B:Ljava/lang/String;

    goto/16 :goto_0

    .line 1353
    :cond_4
    const-string v0, "Bead"

    const-string v1, "OOPS!! Data Empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1370
    :cond_5
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->adData_B:Ljp/beyond/sdk/BeadData;

    if-eqz v0, :cond_1

    .line 1371
    new-instance v0, Ljp/beyond/sdk/layout/BeadView;

    invoke-direct {p0, p1}, Ljp/beyond/sdk/Bead;->createViewEventListener(Landroid/app/Activity;)Ljp/beyond/sdk/layout/BeadView$BeadViewEventListener;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljp/beyond/sdk/layout/BeadView;-><init>(Landroid/app/Activity;Ljp/beyond/sdk/layout/BeadView$BeadViewEventListener;)V

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->view_B:Ljp/beyond/sdk/layout/BeadView;

    .line 1372
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->view_B:Ljp/beyond/sdk/layout/BeadView;

    iget-object v2, p0, Ljp/beyond/sdk/Bead;->adData_B:Ljp/beyond/sdk/BeadData;

    iget-object v3, p0, Ljp/beyond/sdk/Bead;->adBitmap_B:Landroid/graphics/Bitmap;

    iget-object v4, p0, Ljp/beyond/sdk/Bead;->imageName_B:Ljava/lang/String;

    new-instance v5, Ljp/beyond/sdk/layout/BeadBannerLayout;

    invoke-direct {v5}, Ljp/beyond/sdk/layout/BeadBannerLayout;-><init>()V

    move-object v1, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Ljp/beyond/sdk/layout/BeadView;->applyBannerLayout(Landroid/app/Activity;Ljp/beyond/sdk/BeadData;Landroid/graphics/Bitmap;Ljava/lang/String;Ljp/beyond/sdk/layout/BeadLayout;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    .line 1373
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/beyond/sdk/Bead;->BannerShown:Z

    .line 1374
    const-string v0, "Bead"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Display AD B"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljp/beyond/sdk/Bead;->adData_B:Ljp/beyond/sdk/BeadData;

    invoke-virtual {v2}, Ljp/beyond/sdk/BeadData;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private createViewEventListener(Landroid/app/Activity;)Ljp/beyond/sdk/layout/BeadView$BeadViewEventListener;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1710
    new-instance v0, Ljp/beyond/sdk/Bead$8;

    invoke-direct {v0, p0, p1}, Ljp/beyond/sdk/Bead$8;-><init>(Ljp/beyond/sdk/Bead;Landroid/app/Activity;)V

    return-object v0
.end method

.method private doFirstSettingForRequestAd(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 863
    sget-object v1, Ljp/beyond/sdk/Bead;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 866
    new-instance v1, Ljp/beyond/sdk/Bead$4;

    invoke-direct {v1, p0}, Ljp/beyond/sdk/Bead$4;-><init>(Ljp/beyond/sdk/Bead;)V

    sput-object v1, Ljp/beyond/sdk/Bead;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    .line 876
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    sget-object v2, Ljp/beyond/sdk/Bead;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "jp.beyond.MESSAGE_RECEIVED_ACTION"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 877
    const-string v1, "Bead"

    const-string v2, "status receiver start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_0
    iget-boolean v1, p0, Ljp/beyond/sdk/Bead;->mDoneFirstSetting:Z

    if-eqz v1, :cond_1

    .line 925
    :goto_0
    return-void

    .line 885
    :cond_1
    new-instance v1, Ljp/beyond/sdk/Bead$5;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2, p1}, Ljp/beyond/sdk/Bead$5;-><init>(Ljp/beyond/sdk/Bead;Landroid/content/Context;ILandroid/content/Context;)V

    iput-object v1, p0, Ljp/beyond/sdk/Bead;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 917
    iget-object v1, p0, Ljp/beyond/sdk/Bead;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    .line 920
    invoke-direct {p0, p1}, Ljp/beyond/sdk/Bead;->putUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 922
    .local v0, "userAgent":Ljava/lang/String;
    invoke-static {p1, v0}, Ljp/beyond/sdk/BeadCookieManager;->initializeCookie(Landroid/content/Context;Ljava/lang/String;)V

    .line 924
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljp/beyond/sdk/Bead;->mDoneFirstSetting:Z

    goto :goto_0
.end method

.method private doUserCancel(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1792
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mCancelClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 1793
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mCancelClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1795
    :cond_0
    return-void
.end method

.method private getAnimation(Ljp/beyond/sdk/BeadData;)I
    .locals 3
    .param p1, "adData"    # Ljp/beyond/sdk/BeadData;

    .prologue
    const v0, 0x7f080002

    .line 1528
    invoke-virtual {p1}, Ljp/beyond/sdk/BeadData;->getTransitionAnimation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1530
    const-string v1, "BEAD"

    invoke-virtual {p1}, Ljp/beyond/sdk/BeadData;->getTransitionAnimation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    invoke-virtual {p1}, Ljp/beyond/sdk/BeadData;->getTransitionAnimation()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1532
    invoke-virtual {p1}, Ljp/beyond/sdk/BeadData;->getTransitionAnimation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1542
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 1533
    :pswitch_1
    const v0, 0x7f080005

    goto :goto_0

    .line 1534
    :pswitch_2
    const v0, 0x7f080004

    goto :goto_0

    .line 1535
    :pswitch_3
    const v0, 0x7f080003

    goto :goto_0

    .line 1532
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1813
    invoke-direct {p0, p1}, Ljp/beyond/sdk/Bead;->putUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->mUserAgent:Ljava/lang/String;

    .line 1814
    invoke-direct {p0}, Ljp/beyond/sdk/Bead;->registerScreenStateBroadcastReceiver()V

    .line 1815
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->locationManager:Landroid/location/LocationManager;

    .line 1817
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 1816
    iput v0, p0, Ljp/beyond/sdk/Bead;->telephonyPermission:I

    .line 1819
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 1818
    iput v0, p0, Ljp/beyond/sdk/Bead;->isAccessFineLocation:I

    .line 1821
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 1820
    iput v0, p0, Ljp/beyond/sdk/Bead;->isAccessCoarseLocation:I

    .line 1822
    iget v0, p0, Ljp/beyond/sdk/Bead;->isAccessFineLocation:I

    if-eqz v0, :cond_0

    .line 1823
    iget v0, p0, Ljp/beyond/sdk/Bead;->isAccessCoarseLocation:I

    if-nez v0, :cond_1

    .line 1825
    :cond_0
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 1824
    iput-object v0, p0, Ljp/beyond/sdk/Bead;->locationManager:Landroid/location/LocationManager;

    .line 1826
    :cond_1
    return-void
.end method

.method private openUrl(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1765
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1766
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1770
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1767
    :catch_0
    move-exception v0

    .line 1768
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v3, "error url"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private putUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1804
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 1806
    .local v1, "view":Landroid/webkit/WebView;
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 1807
    .local v0, "userAgent":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1808
    invoke-static {v0}, Ljp/beyond/sdk/utilities/ConnectionUtil;->setUserAgent(Ljava/lang/String;)V

    .line 1809
    return-object v0
.end method

.method private registerScreenStateBroadcastReceiver()V
    .locals 3

    .prologue
    .line 1829
    new-instance v1, Ljp/beyond/sdk/Bead$9;

    invoke-direct {v1, p0}, Ljp/beyond/sdk/Bead$9;-><init>(Ljp/beyond/sdk/Bead;)V

    iput-object v1, p0, Ljp/beyond/sdk/Bead;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1843
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1844
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1845
    iget-object v1, p0, Ljp/beyond/sdk/Bead;->mContext:Landroid/content/Context;

    iget-object v2, p0, Ljp/beyond/sdk/Bead;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1846
    return-void
.end method

.method private retryFailedRequest()V
    .locals 2

    .prologue
    .line 1777
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    if-nez v0, :cond_1

    .line 1784
    :cond_0
    :goto_0
    return-void

    .line 1781
    :cond_1
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v0}, Ljp/beyond/sdk/BeadConnection;->getRequestStatus()Ljp/beyond/sdk/BeadConnection$RequestStatus;

    move-result-object v0

    sget-object v1, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Failed:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    if-ne v0, v1, :cond_0

    .line 1782
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v0}, Ljp/beyond/sdk/BeadConnection;->executeRequest()V

    goto :goto_0
.end method

.method private sendMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 361
    const-string v1, "Bead sender"

    const-string v2, "Broadcasting message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 363
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v1, "jp.beyond.MESSAGE_RECEIVED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v1, "jp.beyond.MESSAGE_EXTRA"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 367
    return-void
.end method

.method private sendPOST(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 812
    iget-object v2, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v2}, Ljp/beyond/sdk/BeadConnection;->getRequestStatus()Ljp/beyond/sdk/BeadConnection$RequestStatus;

    move-result-object v2

    sget-object v3, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Downloading:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    if-ne v2, v3, :cond_1

    .line 813
    const-string v2, "Bead"

    const-string v3, "POST SKIPPED"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 816
    :cond_1
    iget-object v2, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v2}, Ljp/beyond/sdk/BeadConnection;->getRequestStatus()Ljp/beyond/sdk/BeadConnection$RequestStatus;

    move-result-object v2

    sget-object v3, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Cancelling:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    if-eq v2, v3, :cond_0

    .line 818
    iget-object v2, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v2}, Ljp/beyond/sdk/BeadConnection;->getRequestStatus()Ljp/beyond/sdk/BeadConnection$RequestStatus;

    move-result-object v2

    sget-object v3, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Received:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    if-eq v2, v3, :cond_2

    .line 821
    iget-object v1, p0, Ljp/beyond/sdk/Bead;->adData:Ljp/beyond/sdk/BeadData;

    .line 822
    .local v1, "tempData":Ljp/beyond/sdk/BeadData;
    const-string v2, "Bead"

    const-string v3, "skip post"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 829
    .end local v1    # "tempData":Ljp/beyond/sdk/BeadData;
    :cond_2
    iget-object v1, p0, Ljp/beyond/sdk/Bead;->adData_TEMP:Ljp/beyond/sdk/BeadData;

    .line 836
    .restart local v1    # "tempData":Ljp/beyond/sdk/BeadData;
    :try_start_0
    invoke-virtual {v1}, Ljp/beyond/sdk/BeadData;->getIMPID()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 839
    .local v0, "impid":Ljava/lang/String;
    const-string v2, "Bead"

    const-string v3, "imp id invalide"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v2, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v2}, Ljp/beyond/sdk/BeadConnection;->getRequestStatus()Ljp/beyond/sdk/BeadConnection$RequestStatus;

    move-result-object v2

    sget-object v3, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Failed:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    if-eq v2, v3, :cond_0

    .line 842
    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {p0, p1}, Ljp/beyond/sdk/Bead;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 846
    iget-object v2, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v2}, Ljp/beyond/sdk/BeadConnection;->getRequestStatus()Ljp/beyond/sdk/BeadConnection$RequestStatus;

    move-result-object v2

    sget-object v3, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Cancelling:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    if-eq v2, v3, :cond_0

    .line 849
    iget-object v2, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v2, v0}, Ljp/beyond/sdk/BeadConnection;->postWithIMPIDString(Ljava/lang/String;)V

    .line 850
    iget-object v2, p0, Ljp/beyond/sdk/Bead;->BeadDidShowNotification:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Ljp/beyond/sdk/Bead;->sendMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 838
    .end local v0    # "impid":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 839
    const-string v3, "Bead"

    const-string v4, "imp id invalide"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    throw v2
.end method

.method private showBannerAd(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "position"    # Ljava/lang/String;
    .param p3, "isOverlay"    # Ljava/lang/String;
    .param p4, "BannerID"    # I

    .prologue
    .line 1255
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ljp/beyond/sdk/Bead;->mSid:Ljava/lang/String;

    invoke-static {v0, v1}, Ljp/beyond/sdk/BeadPreference;->loadShowCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    .line 1257
    iget v0, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    .line 1259
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ljp/beyond/sdk/Bead;->mSid:Ljava/lang/String;

    iget v2, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    invoke-static {v0, v1, v2}, Ljp/beyond/sdk/BeadPreference;->saveShowCount(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1262
    iget v0, p0, Ljp/beyond/sdk/Bead;->mInterval:I

    if-gtz v0, :cond_0

    .line 1263
    const/4 v0, 0x1

    iput v0, p0, Ljp/beyond/sdk/Bead;->mInterval:I

    .line 1266
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Ljp/beyond/sdk/Bead;->createView(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->mView:Landroid/view/View;

    .line 1269
    const/4 v0, 0x0

    iput v0, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    .line 1271
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ljp/beyond/sdk/Bead;->mSid:Ljava/lang/String;

    iget v2, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    invoke-static {v0, v1, v2}, Ljp/beyond/sdk/BeadPreference;->saveShowCount(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1273
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mView:Landroid/view/View;

    return-object v0
.end method

.method private showExitAd(Landroid/app/Activity;)Z
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 933
    iput-object p1, p0, Ljp/beyond/sdk/Bead;->CurrentActivity:Landroid/app/Activity;

    .line 935
    const/4 v0, 0x0

    .line 938
    .local v0, "isShow":Z
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ljp/beyond/sdk/Bead;->mSid:Ljava/lang/String;

    invoke-static {v2, v3}, Ljp/beyond/sdk/BeadPreference;->loadShowCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    .line 940
    iget v2, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    .line 942
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ljp/beyond/sdk/Bead;->mSid:Ljava/lang/String;

    iget v4, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    invoke-static {v2, v3, v4}, Ljp/beyond/sdk/BeadPreference;->saveShowCount(Landroid/content/Context;Ljava/lang/String;I)V

    .line 945
    iget v2, p0, Ljp/beyond/sdk/Bead;->mInterval:I

    if-gtz v2, :cond_0

    .line 946
    iput v5, p0, Ljp/beyond/sdk/Bead;->mInterval:I

    .line 950
    :cond_0
    iget v2, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    iget v3, p0, Ljp/beyond/sdk/Bead;->mInterval:I

    if-ge v2, v3, :cond_2

    move v1, v0

    .line 992
    :cond_1
    :goto_0
    return v1

    .line 954
    :cond_2
    iget-object v2, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v2}, Ljp/beyond/sdk/BeadConnection;->getRequestStatus()Ljp/beyond/sdk/BeadConnection$RequestStatus;

    move-result-object v2

    sget-object v3, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Received:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    if-eq v2, v3, :cond_3

    .line 956
    iget-object v2, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v2}, Ljp/beyond/sdk/BeadConnection;->cancelRequest()V

    .line 961
    :goto_1
    invoke-direct {p0, p1}, Ljp/beyond/sdk/Bead;->createDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Ljp/beyond/sdk/Bead;->mDialog:Landroid/app/Dialog;

    .line 963
    iget-object v2, p0, Ljp/beyond/sdk/Bead;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v0

    .line 965
    goto :goto_0

    .line 958
    :cond_3
    invoke-direct {p0}, Ljp/beyond/sdk/Bead;->retryFailedRequest()V

    goto :goto_1

    .line 968
    :cond_4
    iget-object v2, p0, Ljp/beyond/sdk/Bead;->mDialog:Landroid/app/Dialog;

    if-nez v2, :cond_5

    move v1, v0

    .line 969
    goto :goto_0

    .line 975
    :cond_5
    iget-object v2, p0, Ljp/beyond/sdk/Bead;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 977
    iput v1, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    .line 979
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ljp/beyond/sdk/Bead;->mSid:Ljava/lang/String;

    iget v4, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    invoke-static {v2, v3, v4}, Ljp/beyond/sdk/BeadPreference;->saveShowCount(Landroid/content/Context;Ljava/lang/String;I)V

    .line 981
    const/4 v0, 0x1

    .line 982
    iput-boolean v5, p0, Ljp/beyond/sdk/Bead;->isShowAD:Z

    .line 983
    sput-boolean v5, Ljp/beyond/sdk/Bead;->isOthersAdShown:Z

    .line 985
    invoke-virtual {p0, p1}, Ljp/beyond/sdk/Bead;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 986
    iget-object v2, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v2}, Ljp/beyond/sdk/BeadConnection;->getRequestStatus()Ljp/beyond/sdk/BeadConnection$RequestStatus;

    move-result-object v2

    sget-object v3, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Downloading:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    if-eq v2, v3, :cond_1

    .line 988
    invoke-direct {p0, p1}, Ljp/beyond/sdk/Bead;->sendPOST(Landroid/app/Activity;)V

    :cond_6
    move v1, v0

    .line 992
    goto :goto_0
.end method

.method private showIcon2Ad(Landroid/app/Activity;)Z
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x1

    .line 1119
    iput-object p1, p0, Ljp/beyond/sdk/Bead;->CurrentActivity:Landroid/app/Activity;

    .line 1121
    const/4 v0, 0x0

    .line 1131
    .local v0, "isShow":Z
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ljp/beyond/sdk/Bead;->mSid:Ljava/lang/String;

    invoke-static {v2, v3}, Ljp/beyond/sdk/BeadPreference;->loadShowCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    .line 1133
    iget v2, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    .line 1135
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ljp/beyond/sdk/Bead;->mSid:Ljava/lang/String;

    iget v4, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    invoke-static {v2, v3, v4}, Ljp/beyond/sdk/BeadPreference;->saveShowCount(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1138
    iget v2, p0, Ljp/beyond/sdk/Bead;->mInterval:I

    if-gtz v2, :cond_0

    .line 1139
    iput v5, p0, Ljp/beyond/sdk/Bead;->mInterval:I

    .line 1143
    :cond_0
    iget v2, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    iget v3, p0, Ljp/beyond/sdk/Bead;->mInterval:I

    if-ge v2, v3, :cond_1

    move v1, v0

    .line 1178
    .end local v0    # "isShow":Z
    .local v1, "isShow":I
    :goto_0
    return v1

    .line 1147
    .end local v1    # "isShow":I
    .restart local v0    # "isShow":Z
    :cond_1
    invoke-direct {p0, p1}, Ljp/beyond/sdk/Bead;->createDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Ljp/beyond/sdk/Bead;->mDialog:Landroid/app/Dialog;

    .line 1153
    iget-object v2, p0, Ljp/beyond/sdk/Bead;->mDialog:Landroid/app/Dialog;

    if-nez v2, :cond_2

    move v1, v0

    .line 1154
    .restart local v1    # "isShow":I
    goto :goto_0

    .line 1156
    .end local v1    # "isShow":I
    :cond_2
    iget-object v2, p0, Ljp/beyond/sdk/Bead;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const v3, 0x7f080003

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1158
    invoke-virtual {p0, p1}, Ljp/beyond/sdk/Bead;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1159
    iget-object v2, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    if-nez v2, :cond_3

    .line 1160
    invoke-direct {p0}, Ljp/beyond/sdk/Bead;->retryFailedRequest()V

    .line 1167
    :goto_1
    iget-object v2, p0, Ljp/beyond/sdk/Bead;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1169
    const/4 v2, 0x0

    iput v2, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    .line 1171
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ljp/beyond/sdk/Bead;->mSid:Ljava/lang/String;

    iget v4, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    invoke-static {v2, v3, v4}, Ljp/beyond/sdk/BeadPreference;->saveShowCount(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1174
    const/4 v0, 0x1

    .line 1175
    iput-boolean v5, p0, Ljp/beyond/sdk/Bead;->isShowAD:Z

    .line 1176
    sput-boolean v5, Ljp/beyond/sdk/Bead;->isOthersAdShown:Z

    move v1, v0

    .line 1178
    .restart local v1    # "isShow":I
    goto :goto_0

    .line 1162
    .end local v1    # "isShow":I
    :cond_3
    invoke-direct {p0, p1}, Ljp/beyond/sdk/Bead;->sendPOST(Landroid/app/Activity;)V

    goto :goto_1

    :cond_4
    move v1, v0

    .line 1164
    .restart local v1    # "isShow":I
    goto :goto_0
.end method

.method private showIconAd(Landroid/app/Activity;)Z
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x1

    .line 1055
    iput-object p1, p0, Ljp/beyond/sdk/Bead;->CurrentActivity:Landroid/app/Activity;

    .line 1057
    const/4 v0, 0x0

    .line 1067
    .local v0, "isShow":Z
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ljp/beyond/sdk/Bead;->mSid:Ljava/lang/String;

    invoke-static {v2, v3}, Ljp/beyond/sdk/BeadPreference;->loadShowCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    .line 1069
    iget v2, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    .line 1071
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ljp/beyond/sdk/Bead;->mSid:Ljava/lang/String;

    iget v4, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    invoke-static {v2, v3, v4}, Ljp/beyond/sdk/BeadPreference;->saveShowCount(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1074
    iget v2, p0, Ljp/beyond/sdk/Bead;->mInterval:I

    if-gtz v2, :cond_0

    .line 1075
    iput v5, p0, Ljp/beyond/sdk/Bead;->mInterval:I

    .line 1079
    :cond_0
    iget v2, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    iget v3, p0, Ljp/beyond/sdk/Bead;->mInterval:I

    if-ge v2, v3, :cond_1

    move v1, v0

    .line 1111
    .end local v0    # "isShow":Z
    .local v1, "isShow":I
    :goto_0
    return v1

    .line 1083
    .end local v1    # "isShow":I
    .restart local v0    # "isShow":Z
    :cond_1
    invoke-direct {p0, p1}, Ljp/beyond/sdk/Bead;->createDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Ljp/beyond/sdk/Bead;->mDialog:Landroid/app/Dialog;

    .line 1089
    iget-object v2, p0, Ljp/beyond/sdk/Bead;->mDialog:Landroid/app/Dialog;

    if-nez v2, :cond_2

    move v1, v0

    .line 1090
    .restart local v1    # "isShow":I
    goto :goto_0

    .line 1092
    .end local v1    # "isShow":I
    :cond_2
    iget-object v2, p0, Ljp/beyond/sdk/Bead;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const v3, 0x7f080003

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1094
    invoke-virtual {p0, p1}, Ljp/beyond/sdk/Bead;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1095
    invoke-direct {p0, p1}, Ljp/beyond/sdk/Bead;->sendPOST(Landroid/app/Activity;)V

    .line 1100
    iget-object v2, p0, Ljp/beyond/sdk/Bead;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1102
    const/4 v2, 0x0

    iput v2, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    .line 1104
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ljp/beyond/sdk/Bead;->mSid:Ljava/lang/String;

    iget v4, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    invoke-static {v2, v3, v4}, Ljp/beyond/sdk/BeadPreference;->saveShowCount(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1107
    const/4 v0, 0x1

    .line 1108
    iput-boolean v5, p0, Ljp/beyond/sdk/Bead;->isShowAD:Z

    .line 1109
    sput-boolean v5, Ljp/beyond/sdk/Bead;->isOthersAdShown:Z

    move v1, v0

    .line 1111
    .restart local v1    # "isShow":I
    goto :goto_0

    .end local v1    # "isShow":I
    :cond_3
    move v1, v0

    .line 1097
    .restart local v1    # "isShow":I
    goto :goto_0
.end method

.method private showIconTextAd(Landroid/app/Activity;)Z
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x1

    .line 1186
    iput-object p1, p0, Ljp/beyond/sdk/Bead;->CurrentActivity:Landroid/app/Activity;

    .line 1188
    const/4 v0, 0x0

    .line 1197
    .local v0, "isShow":Z
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ljp/beyond/sdk/Bead;->mSid:Ljava/lang/String;

    invoke-static {v2, v3}, Ljp/beyond/sdk/BeadPreference;->loadShowCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    .line 1199
    iget v2, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    .line 1201
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ljp/beyond/sdk/Bead;->mSid:Ljava/lang/String;

    iget v4, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    invoke-static {v2, v3, v4}, Ljp/beyond/sdk/BeadPreference;->saveShowCount(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1204
    iget v2, p0, Ljp/beyond/sdk/Bead;->mInterval:I

    if-gtz v2, :cond_0

    .line 1205
    iput v5, p0, Ljp/beyond/sdk/Bead;->mInterval:I

    .line 1209
    :cond_0
    iget v2, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    iget v3, p0, Ljp/beyond/sdk/Bead;->mInterval:I

    if-ge v2, v3, :cond_1

    move v1, v0

    .line 1244
    .end local v0    # "isShow":Z
    .local v1, "isShow":I
    :goto_0
    return v1

    .line 1213
    .end local v1    # "isShow":I
    .restart local v0    # "isShow":Z
    :cond_1
    invoke-direct {p0, p1}, Ljp/beyond/sdk/Bead;->createDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Ljp/beyond/sdk/Bead;->mDialog:Landroid/app/Dialog;

    .line 1215
    iget-object v2, p0, Ljp/beyond/sdk/Bead;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v0

    .line 1217
    .restart local v1    # "isShow":I
    goto :goto_0

    .line 1222
    .end local v1    # "isShow":I
    :cond_2
    iget-object v2, p0, Ljp/beyond/sdk/Bead;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const v3, 0x7f080003

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1224
    invoke-virtual {p0, p1}, Ljp/beyond/sdk/Bead;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1225
    invoke-direct {p0, p1}, Ljp/beyond/sdk/Bead;->sendPOST(Landroid/app/Activity;)V

    .line 1230
    iget-object v2, p0, Ljp/beyond/sdk/Bead;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1232
    const/4 v2, 0x0

    iput v2, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    .line 1234
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ljp/beyond/sdk/Bead;->mSid:Ljava/lang/String;

    iget v4, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    invoke-static {v2, v3, v4}, Ljp/beyond/sdk/BeadPreference;->saveShowCount(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1239
    const/4 v0, 0x1

    .line 1240
    iput-boolean v5, p0, Ljp/beyond/sdk/Bead;->isShowAD:Z

    move v1, v0

    .line 1244
    .restart local v1    # "isShow":I
    goto :goto_0

    .end local v1    # "isShow":I
    :cond_3
    move v1, v0

    .line 1227
    .restart local v1    # "isShow":I
    goto :goto_0
.end method

.method private showOptionalAd(Landroid/app/Activity;)Z
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x1

    .line 1004
    iput-object p1, p0, Ljp/beyond/sdk/Bead;->CurrentActivity:Landroid/app/Activity;

    .line 1006
    const/4 v0, 0x0

    .line 1009
    .local v0, "isShow":Z
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ljp/beyond/sdk/Bead;->mSid:Ljava/lang/String;

    invoke-static {v2, v3}, Ljp/beyond/sdk/BeadPreference;->loadShowCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    .line 1011
    iget v2, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    .line 1013
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ljp/beyond/sdk/Bead;->mSid:Ljava/lang/String;

    iget v4, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    invoke-static {v2, v3, v4}, Ljp/beyond/sdk/BeadPreference;->saveShowCount(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1016
    iget v2, p0, Ljp/beyond/sdk/Bead;->mInterval:I

    if-gtz v2, :cond_0

    .line 1017
    iput v5, p0, Ljp/beyond/sdk/Bead;->mInterval:I

    .line 1021
    :cond_0
    iget v2, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    iget v3, p0, Ljp/beyond/sdk/Bead;->mInterval:I

    if-ge v2, v3, :cond_1

    move v1, v0

    .line 1047
    .end local v0    # "isShow":Z
    .local v1, "isShow":I
    :goto_0
    return v1

    .line 1026
    .end local v1    # "isShow":I
    .restart local v0    # "isShow":Z
    :cond_1
    invoke-direct {p0, p1}, Ljp/beyond/sdk/Bead;->createDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Ljp/beyond/sdk/Bead;->mDialog:Landroid/app/Dialog;

    .line 1028
    iget-object v2, p0, Ljp/beyond/sdk/Bead;->mDialog:Landroid/app/Dialog;

    if-nez v2, :cond_2

    move v1, v0

    .line 1029
    .restart local v1    # "isShow":I
    goto :goto_0

    .line 1034
    .end local v1    # "isShow":I
    :cond_2
    iget-object v2, p0, Ljp/beyond/sdk/Bead;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1036
    const/4 v2, 0x0

    iput v2, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    .line 1038
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ljp/beyond/sdk/Bead;->mSid:Ljava/lang/String;

    iget v4, p0, Ljp/beyond/sdk/Bead;->mRequestShowCounter:I

    invoke-static {v2, v3, v4}, Ljp/beyond/sdk/BeadPreference;->saveShowCount(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1040
    const/4 v0, 0x1

    .line 1041
    iput-boolean v5, p0, Ljp/beyond/sdk/Bead;->isShowAD:Z

    .line 1042
    sput-boolean v5, Ljp/beyond/sdk/Bead;->isOthersAdShown:Z

    .line 1045
    invoke-direct {p0, p1}, Ljp/beyond/sdk/Bead;->sendPOST(Landroid/app/Activity;)V

    move v1, v0

    .line 1047
    .restart local v1    # "isShow":I
    goto :goto_0
.end method


# virtual methods
.method public endAd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1852
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    if-eqz v0, :cond_0

    .line 1854
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v0}, Ljp/beyond/sdk/BeadConnection;->deleteFiles()V

    .line 1857
    :cond_0
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->refresh_timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 1858
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->refresh_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1859
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->refresh_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1860
    iput-object v2, p0, Ljp/beyond/sdk/Bead;->refresh_timer:Ljava/util/Timer;

    .line 1863
    :cond_1
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 1865
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1866
    iput-object v2, p0, Ljp/beyond/sdk/Bead;->mDialog:Landroid/app/Dialog;

    .line 1873
    :cond_2
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 1874
    invoke-virtual {p0}, Ljp/beyond/sdk/Bead;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ljp/beyond/sdk/Bead;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1875
    iput-object v2, p0, Ljp/beyond/sdk/Bead;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1878
    :cond_3
    sget-object v0, Ljp/beyond/sdk/Bead;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 1879
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    sget-object v1, Ljp/beyond/sdk/Bead;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1880
    sput-object v2, Ljp/beyond/sdk/Bead;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    .line 1886
    :cond_4
    iput-object v2, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    .line 1889
    invoke-static {}, Ljp/beyond/sdk/BeadCookieManager;->finalizeCookie()V

    .line 1891
    sget-object v0, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v1, "end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    return-void
.end method

.method public endAd(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1898
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    if-eqz v0, :cond_0

    .line 1900
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v0}, Ljp/beyond/sdk/BeadConnection;->deleteFiles()V

    .line 1903
    :cond_0
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->refresh_timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 1904
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->refresh_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1905
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->refresh_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1906
    iput-object v2, p0, Ljp/beyond/sdk/Bead;->refresh_timer:Ljava/util/Timer;

    .line 1909
    :cond_1
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 1911
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1912
    iput-object v2, p0, Ljp/beyond/sdk/Bead;->mDialog:Landroid/app/Dialog;

    .line 1919
    :cond_2
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 1920
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1921
    iput-object v2, p0, Ljp/beyond/sdk/Bead;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1924
    :cond_3
    sget-object v0, Ljp/beyond/sdk/Bead;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 1925
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    sget-object v1, Ljp/beyond/sdk/Bead;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1926
    sput-object v2, Ljp/beyond/sdk/Bead;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    .line 1932
    :cond_4
    iput-object v2, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    .line 1935
    invoke-static {}, Ljp/beyond/sdk/BeadCookieManager;->finalizeCookie()V

    .line 1937
    sget-object v0, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v1, "end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    return-void
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getBannerHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->bannerHeight:Ljava/lang/String;

    return-object v0
.end method

.method public getBannerWidth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->bannerWidth:Ljava/lang/String;

    return-object v0
.end method

.method getContentsOrientation()Ljp/beyond/sdk/Bead$ContentsOrientation;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->mOrientation:Ljp/beyond/sdk/Bead$ContentsOrientation;

    return-object v0
.end method

.method public getIsOverlay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->isOverlay:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->position:Ljava/lang/String;

    return-object v0
.end method

.method public getRefresh_rate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->refresh_rate:Ljava/lang/String;

    return-object v0
.end method

.method public getTransitionAnimation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->transitionAnimation:Ljava/lang/String;

    return-object v0
.end method

.method public isNetworkAvailable(Landroid/content/Context;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1940
    const/4 v2, 0x0

    .local v2, "isMobile":Z
    const/4 v3, 0x0

    .line 1941
    .local v3, "isWifi":Z
    const-string v7, "connectivity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1942
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1943
    .local v1, "infoAvailableNetworks":[Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 1944
    array-length v8, v1

    move v7, v5

    :goto_0
    if-lt v7, v8, :cond_1

    .line 1957
    :cond_0
    if-nez v2, :cond_4

    if-nez v3, :cond_4

    :goto_1
    return v5

    .line 1944
    :cond_1
    aget-object v4, v1, v7

    .line 1946
    .local v4, "network":Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    if-ne v9, v6, :cond_2

    .line 1947
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1948
    const/4 v3, 0x1

    .line 1950
    :cond_2
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    if-nez v9, :cond_3

    .line 1951
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1952
    const/4 v2, 0x1

    .line 1944
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v4    # "network":Landroid/net/NetworkInfo;
    :cond_4
    move v5, v6

    .line 1957
    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1727
    const-string v1, "Bead"

    const-string v2, "onBackPressed Called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1729
    .local v0, "setIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1730
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1731
    invoke-virtual {p0, v0}, Ljp/beyond/sdk/Bead;->startActivity(Landroid/content/Intent;)V

    .line 1732
    const-string v1, "bead"

    const-string v2, "KeyClicked 1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    iget-object v1, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v1}, Ljp/beyond/sdk/BeadConnection;->getRequestStatus()Ljp/beyond/sdk/BeadConnection$RequestStatus;

    move-result-object v1

    sget-object v2, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Received:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    if-eq v1, v2, :cond_1

    .line 1737
    iget-object v1, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v1}, Ljp/beyond/sdk/BeadConnection;->cancelRequest()V

    .line 1741
    :goto_0
    iget-object v1, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    if-eqz v1, :cond_0

    .line 1742
    iget-object v1, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v1}, Ljp/beyond/sdk/BeadConnection;->executeRequest()V

    .line 1744
    :cond_0
    iput-boolean v3, p0, Ljp/beyond/sdk/Bead;->isShowAD:Z

    .line 1745
    sput-boolean v3, Ljp/beyond/sdk/Bead;->isOthersAdShown:Z

    .line 1746
    return-void

    .line 1739
    :cond_1
    invoke-direct {p0}, Ljp/beyond/sdk/Bead;->retryFailedRequest()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 270
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 271
    iget-object v1, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v1}, Ljp/beyond/sdk/BeadConnection;->getRequestStatus()Ljp/beyond/sdk/BeadConnection$RequestStatus;

    move-result-object v0

    .line 272
    .local v0, "rs":Ljp/beyond/sdk/BeadConnection$RequestStatus;
    const-string v1, "Bead"

    invoke-virtual {v0}, Ljp/beyond/sdk/BeadConnection$RequestStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1750
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1751
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "back button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public requestAd(Landroid/app/Activity;)V
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 639
    iput-object p1, p0, Ljp/beyond/sdk/Bead;->mContext:Landroid/content/Context;

    .line 640
    iget-object v1, p0, Ljp/beyond/sdk/Bead;->mViewType:Ljp/beyond/sdk/Bead$ViewType;

    sget-object v2, Ljp/beyond/sdk/Bead$ViewType;->Banner:Ljp/beyond/sdk/Bead$ViewType;

    if-ne v1, v2, :cond_1

    .line 642
    new-instance v1, Ljp/beyond/sdk/BeadConnection;

    iget-object v2, p0, Ljp/beyond/sdk/Bead;->mSid:Ljava/lang/String;

    iget-object v3, p0, Ljp/beyond/sdk/Bead;->mOrientation:Ljp/beyond/sdk/Bead$ContentsOrientation;

    iget-object v4, p0, Ljp/beyond/sdk/Bead;->mViewType:Ljp/beyond/sdk/Bead$ViewType;

    invoke-direct {v1, p1, v2, v3, v4}, Ljp/beyond/sdk/BeadConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljp/beyond/sdk/Bead$ContentsOrientation;Ljp/beyond/sdk/Bead$ViewType;)V

    iput-object v1, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    .line 643
    iget-object v1, p0, Ljp/beyond/sdk/Bead;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 645
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 646
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    new-instance v1, Ljp/beyond/sdk/Bead$NetworkStatusReceiver;

    invoke-direct {v1, p0}, Ljp/beyond/sdk/Bead$NetworkStatusReceiver;-><init>(Ljp/beyond/sdk/Bead;)V

    iput-object v1, p0, Ljp/beyond/sdk/Bead;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 647
    iget-object v1, p0, Ljp/beyond/sdk/Bead;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 648
    const-string v1, "Bead"

    const-string v2, "network status receiver start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Ljp/beyond/sdk/Bead;->doFirstSettingForRequestAd(Landroid/content/Context;)V

    .line 665
    iget-object v1, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v1}, Ljp/beyond/sdk/BeadConnection;->executeRequest()V

    .line 666
    return-void

    .line 652
    :cond_1
    new-instance v1, Ljp/beyond/sdk/BeadConnection;

    iget-object v2, p0, Ljp/beyond/sdk/Bead;->mSid:Ljava/lang/String;

    iget-object v3, p0, Ljp/beyond/sdk/Bead;->mOrientation:Ljp/beyond/sdk/Bead$ContentsOrientation;

    iget-object v4, p0, Ljp/beyond/sdk/Bead;->mDialogType:Ljp/beyond/sdk/Bead$DialogType;

    invoke-direct {v1, p1, v2, v3, v4}, Ljp/beyond/sdk/BeadConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljp/beyond/sdk/Bead$ContentsOrientation;Ljp/beyond/sdk/Bead$DialogType;)V

    iput-object v1, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    .line 653
    iget-object v1, p0, Ljp/beyond/sdk/Bead;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 655
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 656
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    new-instance v1, Ljp/beyond/sdk/Bead$NetworkStatusReceiver;

    invoke-direct {v1, p0}, Ljp/beyond/sdk/Bead$NetworkStatusReceiver;-><init>(Ljp/beyond/sdk/Bead;)V

    iput-object v1, p0, Ljp/beyond/sdk/Bead;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 657
    iget-object v1, p0, Ljp/beyond/sdk/Bead;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 658
    const-string v1, "Bead"

    const-string v2, "network status receiver start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected requestSetting(Ljp/beyond/sdk/BeadData;)V
    .locals 1
    .param p1, "adData"    # Ljp/beyond/sdk/BeadData;

    .prologue
    .line 679
    invoke-virtual {p1}, Ljp/beyond/sdk/BeadData;->getRefresh_rate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 680
    invoke-virtual {p1}, Ljp/beyond/sdk/BeadData;->getRefresh_rate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->refresh_rate:Ljava/lang/String;

    .line 684
    :goto_0
    invoke-virtual {p1}, Ljp/beyond/sdk/BeadData;->getBannerHeight()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {p1}, Ljp/beyond/sdk/BeadData;->getBannerHeight()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->bannerHeight:Ljava/lang/String;

    .line 687
    :cond_0
    invoke-virtual {p1}, Ljp/beyond/sdk/BeadData;->getBannerWidth()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 688
    invoke-virtual {p1}, Ljp/beyond/sdk/BeadData;->getBannerWidth()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->bannerWidth:Ljava/lang/String;

    .line 691
    :cond_1
    invoke-virtual {p1}, Ljp/beyond/sdk/BeadData;->getPosition()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 692
    invoke-virtual {p1}, Ljp/beyond/sdk/BeadData;->getPosition()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->position:Ljava/lang/String;

    .line 698
    :cond_2
    invoke-virtual {p1}, Ljp/beyond/sdk/BeadData;->getIsOverlay()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 699
    invoke-virtual {p1}, Ljp/beyond/sdk/BeadData;->getIsOverlay()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->isOverlay:Ljava/lang/String;

    .line 705
    :goto_1
    invoke-virtual {p1}, Ljp/beyond/sdk/BeadData;->getTransitionAnimation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 706
    invoke-virtual {p1}, Ljp/beyond/sdk/BeadData;->getTransitionAnimation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->transitionAnimation:Ljava/lang/String;

    .line 708
    :cond_3
    return-void

    .line 682
    :cond_4
    const-string v0, "10"

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->refresh_rate:Ljava/lang/String;

    goto :goto_0

    .line 702
    :cond_5
    const-string v0, "0"

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->isOverlay:Ljava/lang/String;

    goto :goto_1
.end method

.method public setBannerHeight(Ljava/lang/String;)V
    .locals 0
    .param p1, "bannerHeight"    # Ljava/lang/String;

    .prologue
    .line 419
    iput-object p1, p0, Ljp/beyond/sdk/Bead;->bannerHeight:Ljava/lang/String;

    .line 420
    return-void
.end method

.method public setBannerWidth(Ljava/lang/String;)V
    .locals 0
    .param p1, "bannerWidth"    # Ljava/lang/String;

    .prologue
    .line 404
    iput-object p1, p0, Ljp/beyond/sdk/Bead;->bannerWidth:Ljava/lang/String;

    .line 405
    return-void
.end method

.method public setIsOverlay(Ljava/lang/String;)V
    .locals 0
    .param p1, "isOverlay"    # Ljava/lang/String;

    .prologue
    .line 433
    iput-object p1, p0, Ljp/beyond/sdk/Bead;->isOverlay:Ljava/lang/String;

    .line 434
    return-void
.end method

.method public setOnBackClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onBackKeyClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 481
    iput-object p1, p0, Ljp/beyond/sdk/Bead;->mOnBackKeyClickListener:Landroid/view/View$OnClickListener;

    .line 482
    return-void
.end method

.method public setOnCancelClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "cancelClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 477
    iput-object p1, p0, Ljp/beyond/sdk/Bead;->mCancelClickListener:Landroid/view/View$OnClickListener;

    .line 478
    return-void
.end method

.method public setOnFinishClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "finishClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 469
    iput-object p1, p0, Ljp/beyond/sdk/Bead;->mFinishClickListener:Landroid/view/View$OnClickListener;

    .line 470
    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0
    .param p1, "position"    # Ljava/lang/String;

    .prologue
    .line 389
    iput-object p1, p0, Ljp/beyond/sdk/Bead;->position:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public setRefresh_rate(Ljava/lang/String;)V
    .locals 0
    .param p1, "refresh_rate"    # Ljava/lang/String;

    .prologue
    .line 447
    iput-object p1, p0, Ljp/beyond/sdk/Bead;->refresh_rate:Ljava/lang/String;

    .line 448
    return-void
.end method

.method public setTransitionAnimation(Ljava/lang/String;)V
    .locals 0
    .param p1, "transitionAnimation"    # Ljava/lang/String;

    .prologue
    .line 373
    iput-object p1, p0, Ljp/beyond/sdk/Bead;->transitionAnimation:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public showAd(Landroid/app/Activity;)Z
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 773
    iget-object v1, p0, Ljp/beyond/sdk/Bead;->mConnection:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v1}, Ljp/beyond/sdk/BeadConnection;->getRequestStatus()Ljp/beyond/sdk/BeadConnection$RequestStatus;

    move-result-object v1

    sget-object v2, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Downloading:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    if-ne v1, v2, :cond_1

    .line 800
    :cond_0
    :goto_0
    return v0

    .line 777
    :cond_1
    sget-boolean v1, Ljp/beyond/sdk/Bead;->isOthersAdShown:Z

    if-nez v1, :cond_0

    .line 781
    iget-boolean v1, p0, Ljp/beyond/sdk/Bead;->isShowAD:Z

    if-nez v1, :cond_0

    .line 783
    iget-object v1, p0, Ljp/beyond/sdk/Bead;->BeadWillShowNotification:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Ljp/beyond/sdk/Bead;->sendMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 784
    invoke-static {}, Ljp/beyond/sdk/Bead;->$SWITCH_TABLE$jp$beyond$sdk$Bead$DialogType()[I

    move-result-object v1

    iget-object v2, p0, Ljp/beyond/sdk/Bead;->mDialogType:Ljp/beyond/sdk/Bead$DialogType;

    invoke-virtual {v2}, Ljp/beyond/sdk/Bead$DialogType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 787
    :pswitch_0
    invoke-direct {p0, p1}, Ljp/beyond/sdk/Bead;->showExitAd(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0

    .line 789
    :pswitch_1
    invoke-direct {p0, p1}, Ljp/beyond/sdk/Bead;->showOptionalAd(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0

    .line 791
    :pswitch_2
    invoke-direct {p0, p1}, Ljp/beyond/sdk/Bead;->showIconAd(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0

    .line 793
    :pswitch_3
    invoke-direct {p0, p1}, Ljp/beyond/sdk/Bead;->showIconTextAd(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0

    .line 795
    :pswitch_4
    invoke-direct {p0, p1}, Ljp/beyond/sdk/Bead;->showIcon2Ad(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0

    .line 784
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public showView(Landroid/app/Activity;)Landroid/view/View;
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x0

    .line 716
    iput-object v7, p0, Ljp/beyond/sdk/Bead;->adData_A:Ljp/beyond/sdk/BeadData;

    .line 717
    iput-object v7, p0, Ljp/beyond/sdk/Bead;->adData_B:Ljp/beyond/sdk/BeadData;

    .line 718
    iget v0, p0, Ljp/beyond/sdk/Bead;->BannerID:I

    if-nez v0, :cond_0

    .line 719
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    .line 720
    .local v6, "generator":Ljava/util/Random;
    const/16 v0, 0x60

    invoke-virtual {v6, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Ljp/beyond/sdk/Bead;->BannerID:I

    .line 722
    .end local v6    # "generator":Ljava/util/Random;
    :cond_0
    invoke-virtual {p0, p1}, Ljp/beyond/sdk/Bead;->requestAd(Landroid/app/Activity;)V

    .line 725
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ljp/beyond/sdk/Bead$2;

    invoke-direct {v1, p0, p1}, Ljp/beyond/sdk/Bead$2;-><init>(Ljp/beyond/sdk/Bead;Landroid/app/Activity;)V

    .line 732
    const-wide/16 v2, 0x1388

    .line 725
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 739
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->refresh_timer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 740
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Ljp/beyond/sdk/Bead;->refresh_timer:Ljava/util/Timer;

    .line 741
    iget-object v0, p0, Ljp/beyond/sdk/Bead;->refresh_timer:Ljava/util/Timer;

    new-instance v1, Ljp/beyond/sdk/Bead$3;

    invoke-direct {v1, p0, p1}, Ljp/beyond/sdk/Bead$3;-><init>(Ljp/beyond/sdk/Bead;Landroid/app/Activity;)V

    .line 756
    iget-object v2, p0, Ljp/beyond/sdk/Bead;->refresh_rate:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iget-object v4, p0, Ljp/beyond/sdk/Bead;->refresh_rate:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    .line 741
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 759
    :cond_1
    return-object v7
.end method
