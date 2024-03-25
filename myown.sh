#!/bin/bash

firebase_firestore_version='10.23.0'
firebase_firestore_abseil_version='1.2022062300.0'
firebase_firestore_grpc_version='1.62.0'
firebase_firestore_leveldb_version='~> 1.22'
firebase_firestore_nanopb_version_min='>= 2.30908.0'
firebase_firestore_nanopb_version_max='< 2.30911.0'
firebase_firestore_grpc_boringssl_version='1.62.1'

for file in *.podspec; do
  sed -i '' "s/^firebase_firestore_version = .*/firebase_firestore_version = '$firebase_firestore_version'/" "$file"
  sed -i '' "s/^firebase_firestore_abseil_version = .*/firebase_firestore_abseil_version = '$firebase_firestore_abseil_version'/" "$file"
  sed -i '' "s/^firebase_firestore_grpc_version = .*/firebase_firestore_grpc_version = '$firebase_firestore_grpc_version'/" "$file"
  sed -i '' "s/^firebase_firestore_grpc_boringssl_version = .*/firebase_firestore_grpc_boringssl_version = '$firebase_firestore_grpc_boringssl_version'/" "$file"
  sed -i '' "s/^firebase_firestore_leveldb_version = .*/firebase_firestore_leveldb_version = '$firebase_firestore_leveldb_version'/" "$file"
  sed -i '' "s/^firebase_firestore_nanopb_version_min = .*/firebase_firestore_nanopb_version_min = '$firebase_firestore_nanopb_version_min'/" "$file"
  sed -i '' "s/^firebase_firestore_nanopb_version_max = .*/firebase_firestore_nanopb_version_max = '$firebase_firestore_nanopb_version_max'/" "$file"
done
