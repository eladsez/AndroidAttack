.class public Lcom/picvision/seaweedweather/utils/CoreLib;
.super Landroid/app/Application;
.source "CoreLib.java"


# static fields
.field private static me:Lcom/picvision/seaweedweather/utils/CoreLib;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 11
    sput-object p0, Lcom/picvision/seaweedweather/utils/CoreLib;->me:Lcom/picvision/seaweedweather/utils/CoreLib;

    .line 12
    return-void
.end method

.method public static ContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/picvision/seaweedweather/utils/CoreLib;->me:Lcom/picvision/seaweedweather/utils/CoreLib;

    invoke-virtual {v0}, Lcom/picvision/seaweedweather/utils/CoreLib;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public static Context()Landroid/content/Context;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/picvision/seaweedweather/utils/CoreLib;->me:Lcom/picvision/seaweedweather/utils/CoreLib;

    return-object v0
.end method
