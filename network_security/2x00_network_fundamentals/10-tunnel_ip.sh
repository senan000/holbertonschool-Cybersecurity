#!/bin/bash
ip addr show tun0 | grep -oP '(?<=inet )\d+(\.\d+){3}' | head -1
