.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x10dd9, %rsi
lea addresses_WC_ht+0x15b49, %rdi
and $861, %r12
mov $125, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_UC_ht+0x1d9, %rsi
lea addresses_normal_ht+0x12299, %rdi
nop
nop
nop
nop
cmp $30529, %rbp
mov $127, %rcx
rep movsb
nop
cmp $4449, %r12
lea addresses_UC_ht+0x18853, %rsi
lea addresses_D_ht+0x181d9, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $24986, %r8
mov $5, %rcx
rep movsl
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x181d9, %r14
nop
add $10994, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
and $0xffffffffffffffc0, %r14
movaps %xmm1, (%r14)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0xbdd9, %rbp
nop
and %r14, %r14
vmovups (%rbp), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
and %rdi, %rdi
lea addresses_D_ht+0x11fd9, %rsi
lea addresses_D_ht+0x4323, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $51119, %rdx
mov $4, %rcx
rep movsq
nop
nop
inc %r12
lea addresses_WT_ht+0x126d9, %rbp
cmp %rsi, %rsi
movups (%rbp), %xmm7
vpextrq $1, %xmm7, %r14
nop
nop
inc %rcx
lea addresses_WT_ht+0x121d9, %rcx
add %rsi, %rsi
movb $0x61, (%rcx)
nop
nop
nop
nop
sub $9542, %r12
lea addresses_WT_ht+0x169d9, %rcx
clflush (%rcx)
nop
nop
nop
sub %rdx, %rdx
movb (%rcx), %r8b
nop
nop
nop
nop
inc %r8
lea addresses_normal_ht+0x599, %r14
nop
nop
nop
nop
add %rdi, %rdi
mov (%r14), %si
nop
nop
nop
nop
nop
sub $64016, %rdx
lea addresses_UC_ht+0x739, %rsi
lea addresses_A_ht+0x48c, %rdi
xor %rdx, %rdx
mov $72, %rcx
rep movsq
nop
nop
nop
nop
sub %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x4b5b, %rsi
lea addresses_normal+0x17379, %rdi
nop
nop
nop
nop
nop
and $61357, %rbx
mov $69, %rcx
rep movsq
nop
sub $23460, %rbx

// Store
lea addresses_normal+0x115c9, %rdi
nop
nop
nop
nop
xor %r8, %r8
movw $0x5152, (%rdi)
nop
cmp $37925, %r13

// Store
lea addresses_WT+0x19d9, %rcx
nop
nop
nop
nop
inc %rbp
movw $0x5152, (%rcx)
nop
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_D+0x1bad9, %rbx
inc %r8
mov $0x5152535455565758, %rcx
movq %rcx, (%rbx)
nop
nop
nop
xor %r13, %r13

// Faulty Load
lea addresses_WC+0x51d9, %rbp
nop
cmp $62798, %r13
vmovaps (%rbp), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'00': 3, '36': 573, '34': 4, '46': 1}
00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 34 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 46 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 34 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 34 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 34 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
