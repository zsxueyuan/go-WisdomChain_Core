package common

import (
	"os"
	"github.com/mr-tron/base58/base58"
)

func Base58Encode(strContent string) string {
	rt := base58.Encode(strContent)
	return rt
}

func Base58Decode(strEncode string ) string {
	strContent, err := base58.Decode(strEncode)
	if err != nil {
		return strContent
	}
	return ""
}