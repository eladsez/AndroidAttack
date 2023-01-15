.class public Lcom/ozdroid/kaoshitong/app/KSTApp;
.super Landroid/app/Application;
.source "KSTApp.java"


# static fields
.field public static final CUOWUINDEX:I = 0x4

.field public static final JIAQIANGINDEX:I = 0x5

.field public static final MONIINDEX:I = 0x3

.field public static final SHUNXUINDEX:I = 0x1

.field public static final SUIJIINDEX:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 17
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 22
    return-void
.end method
