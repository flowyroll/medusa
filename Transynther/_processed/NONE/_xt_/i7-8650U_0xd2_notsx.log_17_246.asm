.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x919c, %r9
clflush (%r9)
nop
nop
nop
nop
and %r10, %r10
movb $0x61, (%r9)
cmp $51311, %r12
lea addresses_UC_ht+0x529c, %rbp
nop
nop
xor %r9, %r9
movb (%rbp), %dl
and $33255, %rdx
lea addresses_D_ht+0x91c, %r10
nop
nop
cmp $1566, %r8
mov (%r10), %ebp
nop
nop
sub %r8, %r8
lea addresses_D_ht+0x2b1c, %r9
inc %rdx
movups (%r9), %xmm0
vpextrq $0, %xmm0, %r12
sub %rbp, %rbp
lea addresses_normal_ht+0x125e, %rsi
lea addresses_UC_ht+0xcbe4, %rdi
nop
nop
nop
and %r8, %r8
mov $29, %rcx
rep movsq
nop
nop
nop
nop
lfence
lea addresses_WC_ht+0x14c9c, %rsi
lea addresses_D_ht+0x1d4dc, %rdi
nop
add %r8, %r8
mov $70, %rcx
rep movsb
sub %rcx, %rcx
lea addresses_WC_ht+0x1d164, %rbx
nop
nop
dec %r10
movw $0x6162, (%rbx)
nop
add $30641, %r9
lea addresses_D_ht+0x385c, %rbx
nop
sub %rdx, %rdx
vmovups (%rbx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r8
sub $43261, %rdi
lea addresses_D_ht+0x1809c, %rbx
nop
nop
nop
and $11140, %rdx
movb $0x61, (%rbx)
nop
nop
nop
and %r9, %r9
lea addresses_normal_ht+0x1a5ec, %rsi
lea addresses_normal_ht+0x1dd3c, %rdi
nop
sub %r12, %r12
mov $73, %rcx
rep movsq
nop
sub %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r15
push %rdx
push %rsi

// Store
lea addresses_RW+0x2a5c, %r13
and $58517, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm0
movups %xmm0, (%r13)
nop
nop
nop
nop
nop
sub $31338, %r15

// Load
lea addresses_UC+0x1969c, %r15
nop
nop
nop
and $64295, %r12
mov (%r15), %si
and %r10, %r10

// Store
lea addresses_UC+0x1569c, %r10
nop
add $52516, %r11
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovntdq %ymm1, (%r10)
nop
nop
nop
nop
nop
and %r12, %r12

// Store
lea addresses_normal+0x1e0fc, %r11
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovups %ymm4, (%r11)
nop
nop
nop
nop
nop
inc %r13

// Faulty Load
lea addresses_D+0x1c49c, %r10
nop
nop
sub %r11, %r11
movb (%r10), %dl
lea oracles, %r15
and $0xff, %rdx
shlq $12, %rdx
mov (%r15,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'36': 17}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
