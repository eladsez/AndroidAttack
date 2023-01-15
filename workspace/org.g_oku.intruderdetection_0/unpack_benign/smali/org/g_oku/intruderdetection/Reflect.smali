.class public Lorg/g_oku/intruderdetection/Reflect;
.super Ljava/lang/Object;
.source "Reflect.java"


# static fields
.field private static Parameters_getSupportedPreviewSizes:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 14
    invoke-static {}, Lorg/g_oku/intruderdetection/Reflect;->initCompatibility()V

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSupportedPreviewSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 6
    .param p0, "p"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 27
    :try_start_0
    sget-object v3, Lorg/g_oku/intruderdetection/Reflect;->Parameters_getSupportedPreviewSizes:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 28
    sget-object v3, Lorg/g_oku/intruderdetection/Reflect;->Parameters_getSupportedPreviewSizes:Ljava/lang/reflect/Method;

    .line 29
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 28
    check-cast v3, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    :goto_0
    return-object v3

    :cond_0
    move-object v3, v4

    .line 31
    goto :goto_0

    .line 33
    :catch_0
    move-exception v2

    .line 34
    .local v2, "ite":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 35
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_1

    .line 36
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 37
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    instance-of v3, v0, Ljava/lang/Error;

    if-eqz v3, :cond_2

    .line 38
    check-cast v0, Ljava/lang/Error;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 40
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 42
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v2    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .local v1, "ie":Ljava/lang/IllegalAccessException;
    move-object v3, v4

    .line 43
    goto :goto_0
.end method

.method private static initCompatibility()V
    .locals 3

    .prologue
    .line 19
    :try_start_0
    const-class v0, Landroid/hardware/Camera$Parameters;

    .line 20
    const-string v1, "getSupportedPreviewSizes"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 19
    sput-object v0, Lorg/g_oku/intruderdetection/Reflect;->Parameters_getSupportedPreviewSizes:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    goto :goto_0
.end method
