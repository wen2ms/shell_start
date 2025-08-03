#!/bin/bash

# systemctl start vsftpd.service
systemctl start vsftpd

systemctl status vsftpd

systemctl stop vsftpd

systemctl restart vsftpd

systemctl is-enabled vsftpd

systemctl enable vsftpd

systemctl disable vsftpd

# Custom service

sudo systemctl daemon-reexec
sudo systemctl daemon-reload

sudo systemctl start foo

sudo systemctl status foo

sudo systemctl enable foo