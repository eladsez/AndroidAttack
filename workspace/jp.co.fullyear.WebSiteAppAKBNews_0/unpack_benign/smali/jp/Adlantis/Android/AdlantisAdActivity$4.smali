.class Ljp/Adlantis/Android/AdlantisAdActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljp/Adlantis/Android/AsyncImageLoader$ImageLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/Adlantis/Android/AdlantisAdActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/Adlantis/Android/AdlantisAdActivity;


# direct methods
.method constructor <init>(Ljp/Adlantis/Android/AdlantisAdActivity;)V
    .locals 0

    iput-object p1, p0, Ljp/Adlantis/Android/AdlantisAdActivity$4;->this$0:Ljp/Adlantis/Android/AdlantisAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageLoaded(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity$4;->this$0:Ljp/Adlantis/Android/AdlantisAdActivity;

    invoke-static {v0, p1}, Ljp/Adlantis/Android/AdlantisAdActivity;->access$400(Ljp/Adlantis/Android/AdlantisAdActivity;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
