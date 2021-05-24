#ifndef MBEDTLS_CONFIG_H
#define MBEDTLS_CONFIG_H

// Include the autogenerated mbedtls configuration file
#include "mbedtls_config_autogen.h"

// <<< Use Configuration Wizard in Context Menu >>>
// <h> TLS/DTLS configuration

// <o MBEDTLS_SSL_CIPHERSUITES> Complete list of ciphersuites to use, in order of preference.
// <i> Default: MBEDTLS_TLS_ECJPAKE_WITH_AES_128_CCM_8
// <i> Complete list of ciphersuites to use, in order of preference.
// <i> The value of this configuration should be updated for the application needs.
#define MBEDTLS_SSL_CIPHERSUITES         MBEDTLS_TLS_ECJPAKE_WITH_AES_128_CCM_8

// <o MBEDTLS_SSL_MAX_CONTENT_LEN> Maximum TLS/DTLS fragment length in bytes.
// <i> Default: 768
// <i> The size configured here determines the size of each of the two
// <i> internal I/O buffers used in mbedTLS when sending and receiving data.
#define MBEDTLS_SSL_MAX_CONTENT_LEN  768

// <q SL_MBEDTLS_SSL_MAX_FRAGMENT_LENGTH> Enable support for RFC 6066 max_fragment_length extension in SSL.
// <i> Default: 1
// <i> Enable support for RFC 6066 max_fragment_length extension in SSL.
#define SL_MBEDTLS_SSL_MAX_FRAGMENT_LENGTH  1

// <q SL_MBEDTLS_SSL_EXPORT_KEYS> Enable support for exporting key block and master secret.
// <i> Default: 1
// <i> Enable support for exporting key block and master secret.
// <i> This is required for certain users of TLS, e.g. EAP-TLS.
#define SL_MBEDTLS_SSL_EXPORT_KEYS  1

// <q SL_MBEDTLS_KEY_EXCHANGE_PSK_ENABLED> Enable the PSK based ciphersuite modes in SSL / TLS.
// <i> Default: 0
// <i> Enable the PSK based ciphersuite modes in SSL / TLS.
#define SL_MBEDTLS_KEY_EXCHANGE_PSK_ENABLED  0

// <q SL_MBEDTLS_KEY_EXCHANGE_ECDHE_PSK_ENABLED> Enable the ECDHE-PSK based ciphersuite modes in SSL / TLS.
// <i> Default: 0
// <i> Enable the ECDHE-PSK based ciphersuite modes in SSL / TLS.
#define SL_MBEDTLS_KEY_EXCHANGE_ECDHE_PSK_ENABLED  0

// <q SL_MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA_ENABLED> Enable the ECDHE-ECDSA based ciphersuite modes in SSL / TLS.
// <i> Default: 0
// <i> Enable the ECDHE-ECDSA based ciphersuite modes in SSL / TLS.
#define SL_MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA_ENABLED  0

// <q SL_MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA_ENABLED> Enable the ECDH-ECDSA based ciphersuite modes in SSL / TLS.
// <i> Default: 0
// <i> Enable the ECDH-ECDSA based ciphersuite modes in SSL / TLS.
#define SL_MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA_ENABLED  0

// </h>
// <<< end of configuration section >>>

// Convert CMSIS Markup config defines to mbedTLS specific config defines
#if SL_MBEDTLS_SSL_MAX_FRAGMENT_LENGTH
  #define MBEDTLS_SSL_MAX_FRAGMENT_LENGTH
#endif
#if SL_MBEDTLS_SSL_EXPORT_KEYS
  #define MBEDTLS_SSL_EXPORT_KEYS
#endif
#if SL_MBEDTLS_KEY_EXCHANGE_PSK_ENABLED
  #define MBEDTLS_KEY_EXCHANGE_PSK_ENABLED
#endif
#if SL_MBEDTLS_KEY_EXCHANGE_ECDHE_PSK_ENABLED
  #define MBEDTLS_KEY_EXCHANGE_ECDHE_PSK_ENABLED
#endif
#if SL_MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA_ENABLED
  #define MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA_ENABLED
#endif
#if SL_MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA_ENABLED
  #define MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA_ENABLED
#endif

// Custom defines can be placed here before check_config.h is included.
#include "mbedtls/check_config.h"

#endif
