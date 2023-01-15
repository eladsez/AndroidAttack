.class Lcom/google/android/gcm/server/Sender$CustomParserException;
.super Ljava/lang/RuntimeException;
.source "Sender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gcm/server/Sender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomParserException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gcm/server/Sender;


# direct methods
.method constructor <init>(Lcom/google/android/gcm/server/Sender;Ljava/lang/String;)V
    .locals 0
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/google/android/gcm/server/Sender$CustomParserException;->this$0:Lcom/google/android/gcm/server/Sender;

    .line 439
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 440
    return-void
.end method
