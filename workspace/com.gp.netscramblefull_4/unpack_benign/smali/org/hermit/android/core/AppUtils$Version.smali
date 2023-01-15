.class public Lorg/hermit/android/core/AppUtils$Version;
.super Ljava/lang/Object;
.source "AppUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/android/core/AppUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Version"
.end annotation


# instance fields
.field public appDesc:Ljava/lang/CharSequence;

.field public appName:Ljava/lang/CharSequence;

.field final synthetic this$0:Lorg/hermit/android/core/AppUtils;

.field public versionCode:I

.field public versionName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lorg/hermit/android/core/AppUtils;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    iput-object p1, p0, Lorg/hermit/android/core/AppUtils$Version;->this$0:Lorg/hermit/android/core/AppUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v1, p0, Lorg/hermit/android/core/AppUtils$Version;->appName:Ljava/lang/CharSequence;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lorg/hermit/android/core/AppUtils$Version;->versionCode:I

    .line 65
    iput-object v1, p0, Lorg/hermit/android/core/AppUtils$Version;->versionName:Ljava/lang/CharSequence;

    .line 68
    iput-object v1, p0, Lorg/hermit/android/core/AppUtils$Version;->appDesc:Ljava/lang/CharSequence;

    return-void
.end method
