.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x183b7, %rbx
and %rdi, %rdi
and $0xffffffffffffffc0, %rbx
vmovaps (%rbx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r15
nop
nop
cmp $40378, %r8
lea addresses_A_ht+0x1cdff, %rsi
lea addresses_WT_ht+0x11ebf, %rdi
nop
nop
add %r12, %r12
mov $76, %rcx
rep movsq
nop
nop
nop
nop
nop
and $56686, %r12
lea addresses_WC_ht+0x1e6d7, %rdi
dec %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%rdi)
and %rbx, %rbx
lea addresses_A_ht+0x5ff, %rsi
lea addresses_A_ht+0x111ff, %rdi
cmp $6354, %r12
mov $21, %rcx
rep movsw
nop
sub $31841, %rbx
lea addresses_D_ht+0xc1cf, %rcx
nop
nop
nop
and $13212, %r8
movups (%rcx), %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
nop
cmp $12518, %r8
lea addresses_A_ht+0x14a3f, %r12
clflush (%r12)
nop
nop
sub %r15, %r15
movups (%r12), %xmm1
vpextrq $0, %xmm1, %rsi
xor $30326, %rbx
lea addresses_D_ht+0x9a59, %rdi
nop
xor $42282, %r8
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
nop
and $16101, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %r9
push %rbx
push %rcx
push %rdx

// Store
lea addresses_WT+0x105ff, %r9
clflush (%r9)
nop
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
movups %xmm2, (%r9)
nop
nop
and $62778, %r9

// Load
lea addresses_WC+0xd3ff, %rdx
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%rdx), %r8d
nop
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_PSE+0x120ff, %r11
nop
nop
xor %r10, %r10
movl $0x51525354, (%r11)
nop
nop
nop
nop
add $4880, %rcx

// Store
lea addresses_normal+0x15cdf, %rdx
clflush (%rdx)
nop
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %r8
movq %r8, %xmm1
movups %xmm1, (%rdx)
nop
nop
nop
nop
nop
xor $62861, %r11

// Faulty Load
lea addresses_US+0xd5ff, %rcx
and %rbx, %rbx
mov (%rcx), %r8
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'58': 15}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
