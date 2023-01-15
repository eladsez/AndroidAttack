.class Ljp/Adlantis/Android/AdManager$AdManagerHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/Adlantis/Android/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdManagerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Ljp/Adlantis/Android/AdManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljp/Adlantis/Android/AdManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljp/Adlantis/Android/AdManager;-><init>(Ljp/Adlantis/Android/AdManager$1;)V

    sput-object v0, Ljp/Adlantis/Android/AdManager$AdManagerHolder;->INSTANCE:Ljp/Adlantis/Android/AdManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljp/Adlantis/Android/AdManager;
    .locals 1

    sget-object v0, Ljp/Adlantis/Android/AdManager$AdManagerHolder;->INSTANCE:Ljp/Adlantis/Android/AdManager;

    return-object v0
.end method
