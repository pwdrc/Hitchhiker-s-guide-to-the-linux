# SSH

## Configuration

### SSH Agent (ssh-agent)

#### Git / GitHub

https://stackoverflow.com/questions/60549377/can-we-skip-the-part-about-adding-your-ssh-key-to-the-ssh-agent-but-just-gener


## Troubleshooting

### Failed to start OpenBSD Secure Shell

**Context:**

When tried: *systemctl restart ssh.service*
Exit error in *systemctl status ssh.service* is: 

**Failed to start OpenBSD Secure Shell server**

**Common cause:**
> bad configuration in /etc/ssh/sshd_config 
