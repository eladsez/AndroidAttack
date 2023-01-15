.class public Lcom/ad_stir/interstitial/AdstirInterstitial;
.super Ljava/lang/Object;
.source "AdstirInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ad_stir/interstitial/AdstirInterstitial$AdstirInterstitialDialogListener;,
        Lcom/ad_stir/interstitial/AdstirInterstitial$AdstirInterstitialListener;,
        Lcom/ad_stir/interstitial/AdstirInterstitial$Type;
    }
.end annotation


# static fields
.field private static final TIMEOUT:I = 0xa

.field private static show:Z

.field private static staticInterstitial:Lcom/ad_stir/interstitial/AdstirInterstitial;


# instance fields
.field private animation:I

.field private dialogBackground:Landroid/graphics/drawable/Drawable;

.field private dialogText:Ljava/lang/String;

.field private dialogTextColor:I

.field private dialoglistener:Lcom/ad_stir/interstitial/AdstirInterstitial$AdstirInterstitialDialogListener;

.field private fullMedia:Ljava/lang/String;

.field private fullSpot:I

.field private iconMedia:Ljava/lang/String;

.field private iconSpot:I

.field private listener:Lcom/ad_stir/interstitial/AdstirInterstitial$AdstirInterstitialListener;

.field private final media:Ljava/lang/String;

.field private negativeButtonBackground:Landroid/graphics/drawable/Drawable;

.field private negativeButtonText:Ljava/lang/String;

.field private negativeButtonTextColor:I

.field private positiveButtonBackground:Landroid/graphics/drawable/Drawable;

.field private positiveButtonText:Ljava/lang/String;

.field private positiveButtonTextColor:I

.field private showCount:I

.field private showLimit:I

.field private showRate:I

.field private final spot:I

.field private wvHeight:I

.field private wvMedia:Ljava/lang/String;

.field private wvSpot:I

.field private wvWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ad_stir/interstitial/AdstirInterstitial;->show:Z

    .line 198
    const/4 v0, 0x0

    sput-object v0, Lcom/ad_stir/interstitial/AdstirInterstitial;->staticInterstitial:Lcom/ad_stir/interstitial/AdstirInterstitial;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "media"    # Ljava/lang/String;
    .param p2, "spot"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->fullMedia:Ljava/lang/String;

    .line 29
    iput v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->fullSpot:I

    .line 31
    iput-object v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->wvMedia:Ljava/lang/String;

    .line 32
    iput v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->wvSpot:I

    .line 33
    iput v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->wvWidth:I

    .line 34
    iput v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->wvHeight:I

    .line 36
    iput-object v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->iconMedia:Ljava/lang/String;

    .line 37
    iput v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->iconSpot:I

    .line 39
    iput v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->showCount:I

    .line 40
    iput v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->showLimit:I

    .line 41
    const/16 v0, 0x64

    iput v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->showRate:I

    .line 239
    const/high16 v0, 0x10a0000

    iput v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->animation:I

    .line 247
    iput-object v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->dialogText:Ljava/lang/String;

    .line 255
    iput v2, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->dialogTextColor:I

    .line 263
    iput-object v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->dialogBackground:Landroid/graphics/drawable/Drawable;

    .line 271
    iput-object v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->negativeButtonText:Ljava/lang/String;

    .line 279
    iput v2, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->negativeButtonTextColor:I

    .line 287
    iput-object v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->negativeButtonBackground:Landroid/graphics/drawable/Drawable;

    .line 296
    const-string v0, "Close"

    iput-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->positiveButtonText:Ljava/lang/String;

    .line 304
    iput v2, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->positiveButtonTextColor:I

    .line 312
    iput-object v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->positiveButtonBackground:Landroid/graphics/drawable/Drawable;

    .line 23
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->media:Ljava/lang/String;

    .line 24
    iput p2, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->spot:I

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/ad_stir/interstitial/AdstirInterstitial;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ad_stir/interstitial/AdstirInterstitial;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->media:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ad_stir/interstitial/AdstirInterstitial;)I
    .locals 1
    .param p0, "x0"    # Lcom/ad_stir/interstitial/AdstirInterstitial;

    .prologue
    .line 17
    iget v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->spot:I

    return v0
.end method

.method static synthetic access$1002(Lcom/ad_stir/interstitial/AdstirInterstitial;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ad_stir/interstitial/AdstirInterstitial;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->showLimit:I

    return p1
.end method

.method static synthetic access$1102(Lcom/ad_stir/interstitial/AdstirInterstitial;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ad_stir/interstitial/AdstirInterstitial;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->showRate:I

    return p1
.end method

.method static synthetic access$202(Lcom/ad_stir/interstitial/AdstirInterstitial;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ad_stir/interstitial/AdstirInterstitial;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->fullMedia:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/ad_stir/interstitial/AdstirInterstitial;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ad_stir/interstitial/AdstirInterstitial;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->fullSpot:I

    return p1
.end method

.method static synthetic access$402(Lcom/ad_stir/interstitial/AdstirInterstitial;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ad_stir/interstitial/AdstirInterstitial;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->wvMedia:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/ad_stir/interstitial/AdstirInterstitial;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ad_stir/interstitial/AdstirInterstitial;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->wvSpot:I

    return p1
.end method

.method static synthetic access$602(Lcom/ad_stir/interstitial/AdstirInterstitial;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ad_stir/interstitial/AdstirInterstitial;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->wvWidth:I

    return p1
.end method

.method static synthetic access$702(Lcom/ad_stir/interstitial/AdstirInterstitial;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ad_stir/interstitial/AdstirInterstitial;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->wvHeight:I

    return p1
.end method

.method static synthetic access$802(Lcom/ad_stir/interstitial/AdstirInterstitial;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ad_stir/interstitial/AdstirInterstitial;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->iconMedia:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/ad_stir/interstitial/AdstirInterstitial;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ad_stir/interstitial/AdstirInterstitial;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->iconSpot:I

    return p1
.end method

.method private execRandom(Landroid/app/Activity;)Z
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 149
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 150
    .local v0, "ran":I
    iget v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->showCount:I

    iget v2, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->showLimit:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->showLimit:I

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->showRate:I

    if-ge v0, v1, :cond_1

    invoke-static {p1}, Lcom/ad_stir/common/Network;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    iget v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->showCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->showCount:I

    .line 152
    const/4 v1, 0x1

    .line 154
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static declared-synchronized getStaticInterstitial()Lcom/ad_stir/interstitial/AdstirInterstitial;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 200
    const-class v2, Lcom/ad_stir/interstitial/AdstirInterstitial;

    monitor-enter v2

    :try_start_0
    const-string v1, "getStaticDialogListener"

    invoke-static {v1}, Lcom/ad_stir/common/Log;->d(Ljava/lang/String;)V

    .line 201
    sget-boolean v1, Lcom/ad_stir/interstitial/AdstirInterstitial;->show:Z

    if-eqz v1, :cond_0

    .line 202
    sget-object v0, Lcom/ad_stir/interstitial/AdstirInterstitial;->staticInterstitial:Lcom/ad_stir/interstitial/AdstirInterstitial;

    .line 203
    .local v0, "returnInterstitial":Lcom/ad_stir/interstitial/AdstirInterstitial;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/ad_stir/interstitial/AdstirInterstitial;->show:Z

    .line 204
    const/4 v1, 0x0

    sput-object v1, Lcom/ad_stir/interstitial/AdstirInterstitial;->staticInterstitial:Lcom/ad_stir/interstitial/AdstirInterstitial;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :cond_0
    monitor-exit v2

    return-object v0

    .line 200
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static declared-synchronized setStaticInterstitial(Lcom/ad_stir/interstitial/AdstirInterstitial;)Z
    .locals 3
    .param p0, "inter"    # Lcom/ad_stir/interstitial/AdstirInterstitial;

    .prologue
    const/4 v0, 0x1

    .line 188
    const-class v1, Lcom/ad_stir/interstitial/AdstirInterstitial;

    monitor-enter v1

    :try_start_0
    const-string v2, "setStaticDialogListener"

    invoke-static {v2}, Lcom/ad_stir/common/Log;->d(Ljava/lang/String;)V

    .line 189
    sget-boolean v2, Lcom/ad_stir/interstitial/AdstirInterstitial;->show:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 190
    const/4 v0, 0x0

    .line 194
    :goto_0
    monitor-exit v1

    return v0

    .line 192
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    sput-boolean v2, Lcom/ad_stir/interstitial/AdstirInterstitial;->show:Z

    .line 193
    sput-object p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->staticInterstitial:Lcom/ad_stir/interstitial/AdstirInterstitial;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private showActivity(Landroid/app/Activity;ZLcom/ad_stir/interstitial/AdstirInterstitial$Type;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "ad"    # Z
    .param p3, "type"    # Lcom/ad_stir/interstitial/AdstirInterstitial$Type;

    .prologue
    .line 164
    invoke-static {p0}, Lcom/ad_stir/interstitial/AdstirInterstitial;->setStaticInterstitial(Lcom/ad_stir/interstitial/AdstirInterstitial;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 166
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 167
    if-eqz p2, :cond_1

    .line 168
    sget-object v1, Lcom/ad_stir/interstitial/AdstirInterstitial$Type;->FULLSCREEN:Lcom/ad_stir/interstitial/AdstirInterstitial$Type;

    if-ne p3, v1, :cond_0

    .line 169
    const-string v1, "fullMedia"

    iget-object v2, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->fullMedia:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v1, "fullSpot"

    iget v2, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->fullSpot:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    :cond_0
    sget-object v1, Lcom/ad_stir/interstitial/AdstirInterstitial$Type;->PLUSICON:Lcom/ad_stir/interstitial/AdstirInterstitial$Type;

    if-ne p3, v1, :cond_1

    .line 173
    const-string v1, "wvHeight"

    iget v2, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->wvHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    const-string v1, "wvWidth"

    iget v2, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->wvWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    const-string v1, "wvMedia"

    iget-object v2, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->wvMedia:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v1, "wvSpot"

    iget v2, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->wvSpot:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    const-string v1, "iconMedia"

    iget-object v2, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->iconMedia:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v1, "iconSpot"

    iget v2, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->iconSpot:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    :cond_1
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 182
    iget v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->animation:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 184
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method


# virtual methods
.method public getAnimation()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->animation:I

    return v0
.end method

.method public getDialogBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->dialogBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDialogText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->dialogText:Ljava/lang/String;

    return-object v0
.end method

.method public getDialogTextColor()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->dialogTextColor:I

    return v0
.end method

.method public getDialoglistener()Lcom/ad_stir/interstitial/AdstirInterstitial$AdstirInterstitialDialogListener;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->dialoglistener:Lcom/ad_stir/interstitial/AdstirInterstitial$AdstirInterstitialDialogListener;

    return-object v0
.end method

.method public getListener()Lcom/ad_stir/interstitial/AdstirInterstitial$AdstirInterstitialListener;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->listener:Lcom/ad_stir/interstitial/AdstirInterstitial$AdstirInterstitialListener;

    return-object v0
.end method

.method public getNegativeButtonBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->negativeButtonBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getNegativeButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->negativeButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getNegativeButtonTextColor()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->negativeButtonTextColor:I

    return v0
.end method

.method public getPositiveButtonBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->positiveButtonBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPositiveButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->positiveButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getPositiveButtonTextColor()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->positiveButtonTextColor:I

    return v0
.end method

.method public load()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    iput-object v2, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->fullMedia:Ljava/lang/String;

    .line 45
    iput v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->fullSpot:I

    .line 46
    iput-object v2, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->wvMedia:Ljava/lang/String;

    .line 47
    iput v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->wvSpot:I

    .line 48
    iput v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->wvWidth:I

    .line 49
    iput v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->wvHeight:I

    .line 51
    iput-object v2, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->iconMedia:Ljava/lang/String;

    .line 52
    iput v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->iconSpot:I

    .line 54
    iput v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->showCount:I

    .line 55
    iput v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->showLimit:I

    .line 56
    const/16 v1, 0x64

    iput v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->showRate:I

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 59
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ad_stir/interstitial/AdstirInterstitial$1;

    invoke-direct {v2, p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitial$1;-><init>(Lcom/ad_stir/interstitial/AdstirInterstitial;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 122
    return-void
.end method

.method public setAnimation(I)V
    .locals 0
    .param p1, "anim"    # I

    .prologue
    .line 244
    iput p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->animation:I

    .line 245
    return-void
.end method

.method public setDialogBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->dialogBackground:Landroid/graphics/drawable/Drawable;

    .line 269
    return-void
.end method

.method public setDialogText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->dialogText:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public setDialogTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 260
    iput p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->dialogTextColor:I

    .line 261
    return-void
.end method

.method public setDialoglistener(Lcom/ad_stir/interstitial/AdstirInterstitial$AdstirInterstitialDialogListener;)V
    .locals 0
    .param p1, "dialoglistener"    # Lcom/ad_stir/interstitial/AdstirInterstitial$AdstirInterstitialDialogListener;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->dialoglistener:Lcom/ad_stir/interstitial/AdstirInterstitial$AdstirInterstitialDialogListener;

    .line 236
    return-void
.end method

.method public setListener(Lcom/ad_stir/interstitial/AdstirInterstitial$AdstirInterstitialListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/ad_stir/interstitial/AdstirInterstitial$AdstirInterstitialListener;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->listener:Lcom/ad_stir/interstitial/AdstirInterstitial$AdstirInterstitialListener;

    .line 228
    return-void
.end method

.method public setNegativeButtonBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->negativeButtonBackground:Landroid/graphics/drawable/Drawable;

    .line 293
    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->negativeButtonText:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setNegativeButtonTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 284
    iput p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->negativeButtonTextColor:I

    .line 285
    return-void
.end method

.method public setPositiveButtonBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->positiveButtonBackground:Landroid/graphics/drawable/Drawable;

    .line 318
    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->positiveButtonText:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setPositiveButtonTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 309
    iput p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial;->positiveButtonTextColor:I

    .line 310
    return-void
.end method

.method public showDialog(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/ad_stir/interstitial/AdstirInterstitial;->showTypeB(Landroid/app/Activity;)V

    .line 146
    return-void
.end method

.method public showInterstitial(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/ad_stir/interstitial/AdstirInterstitial;->showTypeA(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public showTypeA(Landroid/app/Activity;)Z
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/ad_stir/interstitial/AdstirInterstitial;->execRandom(Landroid/app/Activity;)Z

    move-result v0

    .line 126
    .local v0, "exec":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    sget-object v2, Lcom/ad_stir/interstitial/AdstirInterstitial$Type;->PLUSICON:Lcom/ad_stir/interstitial/AdstirInterstitial$Type;

    invoke-direct {p0, p1, v1, v2}, Lcom/ad_stir/interstitial/AdstirInterstitial;->showActivity(Landroid/app/Activity;ZLcom/ad_stir/interstitial/AdstirInterstitial$Type;)V

    .line 127
    :cond_0
    return v0
.end method

.method public showTypeB(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/ad_stir/interstitial/AdstirInterstitial;->execRandom(Landroid/app/Activity;)Z

    move-result v0

    sget-object v1, Lcom/ad_stir/interstitial/AdstirInterstitial$Type;->PLUSICON:Lcom/ad_stir/interstitial/AdstirInterstitial$Type;

    invoke-direct {p0, p1, v0, v1}, Lcom/ad_stir/interstitial/AdstirInterstitial;->showActivity(Landroid/app/Activity;ZLcom/ad_stir/interstitial/AdstirInterstitial$Type;)V

    .line 131
    return-void
.end method

.method public showTypeC(Landroid/app/Activity;)Z
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/ad_stir/interstitial/AdstirInterstitial;->execRandom(Landroid/app/Activity;)Z

    move-result v0

    .line 134
    .local v0, "exec":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    sget-object v2, Lcom/ad_stir/interstitial/AdstirInterstitial$Type;->FULLSCREEN:Lcom/ad_stir/interstitial/AdstirInterstitial$Type;

    invoke-direct {p0, p1, v1, v2}, Lcom/ad_stir/interstitial/AdstirInterstitial;->showActivity(Landroid/app/Activity;ZLcom/ad_stir/interstitial/AdstirInterstitial$Type;)V

    .line 135
    :cond_0
    return v0
.end method
