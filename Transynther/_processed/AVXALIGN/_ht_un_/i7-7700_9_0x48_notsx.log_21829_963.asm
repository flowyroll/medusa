.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rax
push %rcx
push %rdx
push %rsi
lea addresses_UC_ht+0x1a78c, %r8
cmp %rsi, %rsi
movw $0x6162, (%r8)
nop
cmp %r14, %r14
lea addresses_A_ht+0x294e, %rcx
nop
nop
nop
sub $62918, %rax
vmovups (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r11
nop
nop
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0x17f4e, %r11
nop
nop
nop
add $38523, %rdx
movups (%r11), %xmm0
vpextrq $1, %xmm0, %rax
nop
nop
xor $16126, %r11
lea addresses_A_ht+0x1d0e, %rsi
nop
nop
xor $62068, %r11
mov $0x6162636465666768, %r8
movq %r8, %xmm4
movups %xmm4, (%rsi)
nop
nop
nop
nop
nop
inc %rax
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_RW+0x10e46, %rdx
clflush (%rdx)
nop
nop
nop
nop
sub $30873, %rbx
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovups %ymm1, (%rdx)
nop
and %r11, %r11

// Store
lea addresses_WC+0xe7fc, %rbp
nop
nop
nop
nop
nop
and $9108, %r8
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
movups %xmm7, (%rbp)
nop
nop
xor $1631, %rbp

// Store
lea addresses_A+0x11c4e, %r11
nop
nop
sub $57833, %r15
movl $0x51525354, (%r11)
nop
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_WT+0x1400e, %r8
nop
nop
add %rbx, %rbx
movw $0x5152, (%r8)
nop
nop
nop
sub %rdx, %rdx

// Faulty Load
lea addresses_US+0x8d4e, %rbp
nop
nop
nop
nop
nop
dec %rbx
vmovaps (%rbp), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdx
lea oracles, %r8
and $0xff, %rdx
shlq $12, %rdx
mov (%r8,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_A', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 4}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 6}, 'OP': 'STOR'}
{'45': 11779, '07': 8864, '72': 60, '08': 71, '20': 1054, '06': 1}
06 45 07 07 45 07 07 07 07 07 45 07 07 45 07 07 45 07 45 72 45 45 45 45 45 20 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 20 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 20 45 45 45 45 45 45 45 20 45 45 20 45 45 45 45 45 45 45 45 45 45 45 45 45 45 72 20 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 20 20 20 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 20 20 45 45 45 45 20 45 45 45 45 45 45 45 45 20 45 45 45 45 20 45 45 20 20 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 20 45 45 45 45 45 45 20 20 45 45 45 45 45 45 45 45 45 45 20 45 45 45 20 45 45 45 20 45 45 45 45 45 45 45 45 45 45 45 45 20 45 45 45 45 45 45 45 45 20 45 45 45 20 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 20 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 72 45 45 45 45 45 45 45 45 45 45 20 45 20 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 20 45 45 45 45 45 45 20 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 20 45 45 45 20 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 20 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 20 20 45 45 45 45 45 20 45 45 45 45 45 20 45 45 45 45 20 45 45 45 45 45 45 45 45 45 45 45 45 45 20 45 45 45 45 45 45 45 45 45 45 45 45 20 45 45 20 45 07 07 07 07 07 07 07 07 07 07 45 07 07 07 45 07 07 07 07 07 07 07 07 45 07 07 45 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 45 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 45 07 07 07 07 07 07 07 07 07 07 45 07 07 08 07 07 07 45 07 07 45 45 07 07 07 07 07 07 07 07 45 07 07 07 07 07 07 07 07 07 45 45 07 07 07 07 07 07 45 07 45 07 07 07 07 07 07 45 07 07 07 45 07 07 07 07 07 07 07 45 07 07 07 07 45 45 07 07 45 07 45 07 07 07 07 07 45 07 07 07 07 08 07 07 07 07 07 07 07 45 07 07 07 45 07 07 07 45 07 07 45 07 07 07 07 07 07 45 07 07 07 45 07 45 07 07 07 07 45 07 07 07 07 07 07 45 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 45 07 07 07 07 45 07 45 07 07 07 07 07 07 07 45 72 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 20 45 45 45 45 45 45 45 45 45 45 20 45 45 45 45 45 45 45 45 20 45 45 45 45 45 45 45 45 45 45 45 20 45 45 45 45 45 45 45 45 45 20 20 45 07 07 07 07 07 45 07 45 07 07 45 07 07 45 07 45 07 07 07 07 45 07 07 45 07 07 07 07 07 07 45 07 07 07 07 07 07 07 07 45 07 07 07 07 07 07 07 07 07 07 07 07 45 07 45 07 07 07 45 45 07 07 45 45 07 07 07 07 07 07 45 07 07 07 07 07 07 08 07 45 07 07 45 07 07 45 07 45 07 45 07 07 07 07 45 07 07 07 45 07 07 07 45 07 45 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 45 07 07 07 07 07 07 07 07 07 07 07 07 07 45 07 07 07 07 07 07 07 07 45 07 07 07 45 45 45 45 45 45 45 45 20 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 20 45 45 45 45 45 20 20 45 45 45 45 45 45 20 45 45 45 45 45 20 45 45 45 45 45 45 45 45 45 20 45
*/
