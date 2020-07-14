.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xcf35, %rsi
lea addresses_WC_ht+0x146d0, %rdi
nop
nop
xor %rdx, %rdx
mov $111, %rcx
rep movsw
nop
xor $55915, %r12
lea addresses_WC_ht+0xeb7d, %rsi
clflush (%rsi)
nop
xor %r13, %r13
vmovups (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdx
nop
nop
nop
nop
and %r12, %r12
lea addresses_WT_ht+0x7ff7, %rsi
clflush (%rsi)
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %r13
movq %r13, (%rsi)
nop
nop
nop
nop
sub $6463, %r12
lea addresses_normal_ht+0xbcb5, %rsi
lea addresses_WC_ht+0x5487, %rdi
add %rax, %rax
mov $125, %rcx
rep movsb
nop
nop
nop
mfence
lea addresses_D_ht+0x18fd, %rsi
nop
nop
nop
cmp $30430, %rax
movb (%rsi), %cl
and %rcx, %rcx
lea addresses_UC_ht+0xdb9f, %rsi
lea addresses_UC_ht+0x1e2ca, %rdi
add %rdx, %rdx
mov $9, %rcx
rep movsl
nop
nop
nop
cmp $51129, %rax
lea addresses_WC_ht+0x19955, %r12
nop
nop
nop
xor $35455, %rax
mov (%r12), %rcx
cmp %rdx, %rdx
lea addresses_WT_ht+0xb955, %rsi
lea addresses_normal_ht+0x18655, %rdi
nop
nop
nop
nop
nop
cmp $65111, %r13
mov $64, %rcx
rep movsb
xor $10848, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rax
push %rdx
push %rsi

// Store
lea addresses_D+0xa31d, %r11
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %rax
movq %rax, %xmm6
vmovups %ymm6, (%r11)
nop
nop
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_WC+0x1cee9, %r13
and %rdx, %rdx
mov $0x5152535455565758, %r9
movq %r9, %xmm5
vmovntdq %ymm5, (%r13)
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_RW+0x14815, %rax
nop
nop
nop
nop
and %rsi, %rsi
movl $0x51525354, (%rax)
nop
nop
nop
cmp %r9, %r9

// Load
mov $0x55d8a80000000955, %r9
add %rax, %rax
movups (%r9), %xmm5
vpextrq $1, %xmm5, %rdx
nop
nop
sub $10558, %rsi

// Faulty Load
lea addresses_US+0x13955, %r10
nop
cmp %rsi, %rsi
vmovups (%r10), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r11
lea oracles, %rax
and $0xff, %r11
shlq $12, %r11
mov (%rax,%r11,1), %r11
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'dst': {'same': True, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'00': 6}
00 00 00 00 00 00
*/
