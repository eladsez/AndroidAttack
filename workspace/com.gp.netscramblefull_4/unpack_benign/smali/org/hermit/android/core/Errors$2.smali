.class Lorg/hermit/android/core/Errors$2;
.super Ljava/lang/Object;
.source "Errors.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hermit/android/core/Errors;->reportException(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hermit/android/core/Errors;

.field private final synthetic val$e:Ljava/lang/Exception;

.field private final synthetic val$exString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/hermit/android/core/Errors;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/hermit/android/core/Errors$2;->this$0:Lorg/hermit/android/core/Errors;

    iput-object p2, p0, Lorg/hermit/android/core/Errors$2;->val$e:Ljava/lang/Exception;

    iput-object p3, p0, Lorg/hermit/android/core/Errors$2;->val$exString:Ljava/lang/String;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lorg/hermit/android/core/Errors$2;->this$0:Lorg/hermit/android/core/Errors;

    iget-object v1, p0, Lorg/hermit/android/core/Errors$2;->val$e:Ljava/lang/Exception;

    iget-object v2, p0, Lorg/hermit/android/core/Errors$2;->val$exString:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/hermit/android/core/Errors;->access$2(Lorg/hermit/android/core/Errors;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 115
    return-void
.end method
