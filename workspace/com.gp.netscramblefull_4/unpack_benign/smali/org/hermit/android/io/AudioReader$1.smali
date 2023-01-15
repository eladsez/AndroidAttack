.class Lorg/hermit/android/io/AudioReader$1;
.super Ljava/lang/Object;
.source "AudioReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hermit/android/io/AudioReader;->startReader(IILorg/hermit/android/io/AudioReader$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hermit/android/io/AudioReader;


# direct methods
.method constructor <init>(Lorg/hermit/android/io/AudioReader;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/hermit/android/io/AudioReader$1;->this$0:Lorg/hermit/android/io/AudioReader;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/hermit/android/io/AudioReader$1;->this$0:Lorg/hermit/android/io/AudioReader;

    invoke-static {v0}, Lorg/hermit/android/io/AudioReader;->access$0(Lorg/hermit/android/io/AudioReader;)V

    return-void
.end method
