.class public Ljp/Adlantis/Android/AdLantisConnection;
.super Ljp/Adlantis/Android/AdNetworkConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljp/Adlantis/Android/AdNetworkConnection;-><init>()V

    const-string v0, "sp.ad.adlantis.jp"

    iput-object v0, p0, Ljp/Adlantis/Android/AdLantisConnection;->_host:Ljava/lang/String;

    const-string v0, "sp.conv.adlantis.jp"

    iput-object v0, p0, Ljp/Adlantis/Android/AdLantisConnection;->_conversionTagHost:Ljava/lang/String;

    const-string v0, "sp.www.adlantis.jp"

    iput-object v0, p0, Ljp/Adlantis/Android/AdLantisConnection;->_conversionTagTestHost:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public publisherIDMetadataKey()Ljava/lang/String;
    .locals 1

    const-string v0, "Adlantis_Publisher_ID"

    return-object v0
.end method
