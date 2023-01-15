.class public Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;
.super Lanywheresoftware/b4a/objects/ViewWrapper;
.source "AdViewWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "AdView"
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$Version;
    value = 1.4f
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/objects/ViewWrapper",
        "<",
        "Lcom/google/ads/AdView;",
        ">;"
    }
.end annotation


# static fields
.field public static SIZE_BANNER:Ljava/lang/Object;

.field public static SIZE_IAB_BANNER:Ljava/lang/Object;

.field public static SIZE_IAB_LEADERBOARD:Ljava/lang/Object;

.field public static SIZE_IAB_MRECT:Ljava/lang/Object;

.field public static SIZE_SMART_BANNER:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    sput-object v0, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;->SIZE_BANNER:Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    sput-object v0, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;->SIZE_IAB_BANNER:Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    sput-object v0, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;->SIZE_IAB_LEADERBOARD:Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    sput-object v0, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;->SIZE_IAB_MRECT:Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/google/ads/AdSize;->SMART_BANNER:Lcom/google/ads/AdSize;

    sput-object v0, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;->SIZE_SMART_BANNER:Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public Initialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "EventName"    # Ljava/lang/String;
    .param p3, "PublisherId"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-object v0, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    invoke-virtual {p0, p1, p2, p3, v0}, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;->Initialize2(Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public Initialize2(Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "EventName"    # Ljava/lang/String;
    .param p3, "PublisherId"    # Ljava/lang/String;
    .param p4, "Size"    # Ljava/lang/Object;

    .prologue
    .line 79
    new-instance v1, Lcom/google/ads/AdView;

    iget-object v2, p1, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    check-cast p4, Lcom/google/ads/AdSize;

    .end local p4    # "Size":Ljava/lang/Object;
    invoke-direct {v1, v2, p4, p3}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;->setObject(Ljava/lang/Object;)V

    .line 80
    invoke-super {p0, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->Initialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    .line 81
    sget-object v1, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "eventName":Ljava/lang/String;
    invoke-virtual {p0}, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/AdView;

    new-instance v2, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper$1;

    invoke-direct {v2, p0, p1, v0}, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper$1;-><init>(Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/AdView;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 106
    return-void
.end method

.method public LoadAd()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/google/ads/AdRequest;

    invoke-direct {v0}, Lcom/google/ads/AdRequest;-><init>()V

    .line 114
    .local v0, "req":Lcom/google/ads/AdRequest;
    invoke-virtual {p0}, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;
    check-cast p0, Lcom/google/ads/AdView;

    invoke-virtual {p0, v0}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 115
    return-void
.end method
