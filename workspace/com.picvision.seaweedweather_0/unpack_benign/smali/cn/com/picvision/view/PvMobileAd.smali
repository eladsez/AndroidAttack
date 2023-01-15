.class public Lcn/com/picvision/view/PvMobileAd;
.super Ljava/lang/Object;
.source "PvMobileAd.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcn/com/picvision/view/PvMobileAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/picvision/view/PvMobileAd;->TAG:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registFloatAd(Landroid/app/Activity;IIIIIZ)Lcn/com/picvision/view/AdvertView;
    .locals 9
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "layoutId"    # I
    .param p2, "background"    # I
    .param p3, "textColor"    # I
    .param p4, "backgroundColor"    # I
    .param p5, "refreshInterval"    # I
    .param p6, "isTest"    # Z

    .prologue
    const/4 v8, -0x1

    .line 37
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    .local v2, "frame":Landroid/widget/FrameLayout;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 44
    .local v4, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 47
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const/4 v7, 0x0

    invoke-virtual {v3, p1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 49
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 52
    new-instance v5, Lcn/com/picvision/model/Params;

    invoke-direct {v5}, Lcn/com/picvision/model/Params;-><init>()V

    .line 53
    .local v5, "params":Lcn/com/picvision/model/Params;
    invoke-virtual {v5, p2}, Lcn/com/picvision/model/Params;->setBackground(I)V

    .line 54
    invoke-virtual {v5, p4}, Lcn/com/picvision/model/Params;->setBackgroundColor(I)V

    .line 55
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcn/com/picvision/model/Params;->setFloat(Z)V

    .line 57
    invoke-virtual {v5, p5}, Lcn/com/picvision/model/Params;->setRefreshInterval(I)V

    .line 58
    invoke-virtual {v5, p6}, Lcn/com/picvision/model/Params;->setTest(Z)V

    .line 59
    invoke-virtual {v5, p3}, Lcn/com/picvision/model/Params;->setTextColor(I)V

    .line 60
    new-instance v1, Lcn/com/picvision/view/AdvertView;

    invoke-direct {v1, p0, v5}, Lcn/com/picvision/view/AdvertView;-><init>(Landroid/content/Context;Lcn/com/picvision/model/Params;)V

    .line 62
    .local v1, "adView":Lcn/com/picvision/view/AdvertView;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 64
    const/4 v7, -0x2

    .line 62
    invoke-direct {v0, v8, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 65
    .local v0, "adParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v7, 0x30

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 66
    invoke-virtual {v1, v0}, Lcn/com/picvision/view/AdvertView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 68
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 69
    return-object v1
.end method
