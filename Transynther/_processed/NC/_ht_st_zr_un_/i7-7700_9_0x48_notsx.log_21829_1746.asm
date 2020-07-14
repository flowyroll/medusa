.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x15dd, %r9
and $10395, %r13
vmovups (%r9), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdx
inc %rcx
lea addresses_A_ht+0x170d7, %r11
nop
nop
nop
inc %rax
movw $0x6162, (%r11)
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x1abad, %rsi
lea addresses_D_ht+0x1c94d, %rdi
sub %r13, %r13
mov $5, %rcx
rep movsq
nop
nop
nop
nop
and $61486, %rcx
lea addresses_WT_ht+0x614d, %rsi
lea addresses_D_ht+0x8d4d, %rdi
and $52398, %r11
mov $75, %rcx
rep movsq
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0xb115, %rdx
nop
nop
nop
nop
sub $58215, %r11
vmovups (%rdx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r9
nop
dec %rsi
lea addresses_normal_ht+0x124cc, %r13
nop
nop
nop
xor %rsi, %rsi
vmovups (%r13), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r9
nop
nop
nop
nop
nop
sub %r9, %r9
lea addresses_UC_ht+0x914d, %rsi
lea addresses_UC_ht+0x1532e, %rdi
nop
cmp %r13, %r13
mov $92, %rcx
rep movsb
nop
dec %rdi
lea addresses_WT_ht+0x1664d, %r11
nop
nop
nop
nop
xor $63850, %rdx
mov (%r11), %edi
add $16437, %rdx
lea addresses_WC_ht+0x80d, %rsi
lea addresses_D_ht+0x794d, %rdi
clflush (%rdi)
nop
inc %r11
mov $50, %rcx
rep movsw
nop
and %r11, %r11
lea addresses_WC_ht+0x614d, %rsi
nop
nop
nop
inc %rdi
movw $0x6162, (%rsi)
nop
nop
add $41868, %rdx
lea addresses_A_ht+0x14f33, %rsi
lea addresses_D_ht+0x155fd, %rdi
nop
nop
nop
nop
add %r11, %r11
mov $98, %rcx
rep movsl
nop
dec %r9
lea addresses_UC_ht+0x6f4d, %rsi
lea addresses_WC_ht+0x6085, %rdi
clflush (%rsi)
nop
sub $36576, %r9
mov $73, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $29530, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0xfa55, %rsi
lea addresses_PSE+0xc14d, %rdi
cmp %rbp, %rbp
mov $47, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %r10, %r10

// Faulty Load
mov $0x4fdb1b000000014d, %r10
nop
sub %r9, %r9
mov (%r10), %rsi
lea oracles, %rbp
and $0xff, %rsi
shlq $12, %rsi
mov (%rbp,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'ba': 1, '36': 17594, '2e': 1, '92': 2, '84': 1, '20': 1, 'ee': 1, 'b8': 1, '10': 1, '28': 2, 'f8': 1, 'bc': 1, '56': 3, '60': 1, '02': 1, '6c': 1, 'e8': 3, 'ec': 1, 'd8': 2, 'de': 1, 'b6': 1, '40': 1, 'fa': 1, '1e': 2, '8e': 1, 'e4': 1, '4c': 1, '00': 4116, '26': 3, 'a6': 1, 'b0': 3, '70': 3, 'c0': 2, 'f4': 1, '7a': 1, '94': 1, '08': 1, 'f6': 1, '54': 3, '72': 1, 'c4': 3, '14': 1, '3c': 4, 'a2': 1, 'a4': 1, '16': 2, 'be': 2, '88': 1, '64': 2, '38': 2, '50': 1, 'da': 1, '82': 1, 'ea': 2, '5a': 3, '8a': 1, 'dc': 1, '76': 1, '04': 1, '5e': 5, '52': 2, 'a8': 2, '30': 1, '22': 1, '6e': 1, '18': 1, '96': 1, '74': 1, '0e': 1, 'c6': 2, 'b4': 1, 'aa': 2, '90': 2, '24': 3, '42': 1, '44': 3, '80': 1, 'ce': 1, '6a': 1}
80 36 36 36 00 00 36 36 00 36 36 36 36 36 36 36 36 36 00 36 00 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 00 36 36 00 36 00 36 00 00 36 36 00 36 00 36 36 36 36 36 00 36 00 36 36 36 36 36 36 00 36 36 36 36 36 36 00 36 36 36 00 00 36 36 36 36 36 36 00 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 00 36 36 36 36 36 36 36 36 00 14 00 36 36 36 00 36 36 00 36 36 00 36 36 36 36 00 36 36 36 36 36 00 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 00 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 00 00 00 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 00 36 36 00 00 36 36 00 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 00 00 36 36 36 00 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 00 36 36 36 36 36 00 36 36 36 36 36 36 00 36 36 00 36 36 36 00 36 00 00 36 00 36 36 36 36 36 36 00 36 00 36 00 00 36 36 36 36 36 36 36 36 00 00 36 36 36 36 00 36 00 36 36 00 00 00 36 36 00 00 36 36 36 36 36 36 36 36 36 36 36 00 36 00 36 36 36 36 36 36 36 00 36 36 00 36 36 36 00 00 36 00 00 36 36 36 36 36 36 36 36 36 00 36 36 00 00 00 36 00 36 36 36 36 36 36 00 36 36 36 36 36 00 00 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 00 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 00 36 36 00 36 36 00 36 36 36 36 36 36 36 36 36 00 36 36 36 00 36 36 36 00 00 36 00 36 36 36 36 36 36 00 36 36 00 36 00 36 36 36 52 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 6e 36 36 36 00 36 00 36 36 00 36 36 36 36 36 36 36 00 00 00 00 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 00 00 00 36 36 00 36 36 36 36 00 36 00 36 36 36 00 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 00 36 36 36 00 36 36 36 36 36 36 00 36 36 00 00 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 00 c4 36 36 00 36 36 00 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 00 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 00 36 36 36 00 00 36 36 36 36 36 36 36 36 36 36 00 00 36 00 36 00 36 00 36 36 36 36 36 36 36 00 36 00 36 36 36 00 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 00 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 00 36 36 00 36 36 36 36 36 36 36 36 00 36 36 36 00 36 36 36 36 36 36 36 36 36 00 36 00 00 00 36 36 36 36 36 36 36 00 36 36 00 00 36 36 36 36 36 36 36 36 00 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 00 36 36 36 36 00 00 36 36 36 36 00 00 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 00 36 00 36 36 36 36 00 00 36 00 36 00 36 00 36 36 36 36 36 36 36 36 00 00 36 36 00 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 00 36
*/
