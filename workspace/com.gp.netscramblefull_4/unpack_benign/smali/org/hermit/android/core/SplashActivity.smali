.class public Lorg/hermit/android/core/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"


# static fields
.field public static final EXTRAS_IMAGE_ID:Ljava/lang/String; = "image_id"

.field public static final EXTRAS_TIME_ID:Ljava/lang/String; = "splash_time"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static launch(Landroid/content/Context;IJ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "image"    # I
    .param p2, "time"    # J

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/hermit/android/core/SplashActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    const-string v1, "splash_time"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 130
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x400

    const/4 v9, 0x1

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lorg/hermit/android/core/SplashActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 81
    invoke-virtual {p0, v9}, Lorg/hermit/android/core/SplashActivity;->requestWindowFeature(I)Z

    .line 84
    invoke-virtual {p0}, Lorg/hermit/android/core/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 85
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "image_id"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 86
    .local v0, "imageId":I
    const-string v6, "splash_time"

    const-wide/16 v7, 0xbb8

    invoke-virtual {v1, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 89
    .local v4, "time":J
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 90
    .local v3, "splashView":Landroid/widget/ImageView;
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 91
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    invoke-virtual {p0, v3}, Lorg/hermit/android/core/SplashActivity;->setContentView(Landroid/view/View;)V

    .line 95
    new-instance v6, Lorg/hermit/android/core/SplashActivity$1;

    invoke-direct {v6, p0}, Lorg/hermit/android/core/SplashActivity$1;-><init>(Lorg/hermit/android/core/SplashActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    new-instance v2, Lorg/hermit/android/core/SplashActivity$2;

    invoke-direct {v2, p0}, Lorg/hermit/android/core/SplashActivity$2;-><init>(Lorg/hermit/android/core/SplashActivity;)V

    .line 109
    .local v2, "splashHandler":Landroid/os/Handler;
    invoke-virtual {v2, v9, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 110
    return-void
.end method
