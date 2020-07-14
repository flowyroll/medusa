.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x9b6d, %r10
nop
nop
nop
and %rbp, %rbp
movb $0x61, (%r10)
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x12dbd, %r8
nop
nop
nop
nop
nop
xor $5980, %r10
movb (%r8), %r9b
nop
nop
xor $36630, %r8
lea addresses_A_ht+0x1291d, %r8
nop
nop
nop
nop
nop
cmp $21495, %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
and $0xffffffffffffffc0, %r8
vmovntdq %ymm5, (%r8)
nop
inc %rbp
lea addresses_A_ht+0xcabd, %rsi
lea addresses_normal_ht+0xe3fd, %rdi
nop
nop
nop
xor $35531, %r11
mov $18, %rcx
rep movsw
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x209d, %rsi
lea addresses_D_ht+0x143d, %rdi
nop
nop
nop
cmp $10882, %r10
mov $116, %rcx
rep movsw
nop
nop
nop
sub $41356, %r11
lea addresses_A_ht+0x11cbd, %rsi
lea addresses_normal_ht+0x13be7, %rdi
nop
sub $13199, %r9
mov $66, %rcx
rep movsl
nop
xor $4665, %rcx
lea addresses_WT_ht+0x1eed, %rsi
lea addresses_UC_ht+0x16b54, %rdi
nop
nop
nop
nop
sub %rbp, %rbp
mov $43, %rcx
rep movsq
nop
nop
nop
xor $27580, %r8
lea addresses_A_ht+0x1d07d, %rbp
nop
nop
and %r10, %r10
vmovups (%rbp), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r11
xor $53281, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %rbx
push %rcx
push %rdx
push %rsi

// Faulty Load
lea addresses_US+0xc7bd, %rbx
nop
nop
nop
nop
nop
and %rcx, %rcx
mov (%rbx), %edx
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 5}}
{'d0': 6, '00': 3}
d0 d0 00 d0 00 d0 00 d0 d0
*/
