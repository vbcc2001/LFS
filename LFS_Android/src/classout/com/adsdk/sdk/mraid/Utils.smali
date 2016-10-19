.class public Lcom/adsdk/sdk/mraid/Utils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sha1(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_17
    array-length v3, v1

    if-lt v0, v3, :cond_1f

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1e
    return-object v0

    :cond_1f
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    or-int/lit16 v3, v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_31
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_31} :catch_34

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :catch_34
    move-exception v0

    const-string v0, ""

    goto :goto_1e
.end method
