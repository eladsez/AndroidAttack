.class Ljp/Adlantis/Android/AdlantisView$AdlantisAdView$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljp/Adlantis/Android/AsyncImageLoader$ImageLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->setAdByIndex(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;


# direct methods
.method constructor <init>(Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;)V
    .locals 0

    iput-object p1, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView$2;->this$1:Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageLoaded(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView$2;->this$1:Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;

    invoke-static {v0, p1}, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->access$500(Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
