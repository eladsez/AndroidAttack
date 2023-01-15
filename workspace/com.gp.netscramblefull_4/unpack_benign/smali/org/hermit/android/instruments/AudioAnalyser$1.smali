.class Lorg/hermit/android/instruments/AudioAnalyser$1;
.super Lorg/hermit/android/io/AudioReader$Listener;
.source "AudioAnalyser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hermit/android/instruments/AudioAnalyser;->measureStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hermit/android/instruments/AudioAnalyser;


# direct methods
.method constructor <init>(Lorg/hermit/android/instruments/AudioAnalyser;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/hermit/android/instruments/AudioAnalyser$1;->this$0:Lorg/hermit/android/instruments/AudioAnalyser;

    .line 168
    invoke-direct {p0}, Lorg/hermit/android/io/AudioReader$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReadComplete([S)V
    .locals 1
    .param p1, "buffer"    # [S

    .prologue
    .line 171
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser$1;->this$0:Lorg/hermit/android/instruments/AudioAnalyser;

    invoke-static {v0, p1}, Lorg/hermit/android/instruments/AudioAnalyser;->access$0(Lorg/hermit/android/instruments/AudioAnalyser;[S)V

    .line 172
    return-void
.end method

.method public onReadError(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 175
    iget-object v0, p0, Lorg/hermit/android/instruments/AudioAnalyser$1;->this$0:Lorg/hermit/android/instruments/AudioAnalyser;

    invoke-static {v0, p1}, Lorg/hermit/android/instruments/AudioAnalyser;->access$1(Lorg/hermit/android/instruments/AudioAnalyser;I)V

    .line 176
    return-void
.end method
