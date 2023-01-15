.class public abstract Lorg/hermit/android/io/AudioReader$Listener;
.super Ljava/lang/Object;
.source "AudioReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/android/io/AudioReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# static fields
.field public static final ERR_INIT_FAILED:I = 0x1

.field public static final ERR_OK:I = 0x0

.field public static final ERR_READ_FAILED:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onReadComplete([S)V
.end method

.method public abstract onReadError(I)V
.end method
