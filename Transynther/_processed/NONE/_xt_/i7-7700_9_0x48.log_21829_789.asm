.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xbe1, %rsi
clflush (%rsi)
nop
nop
nop
dec %r14
mov $0x6162636465666768, %r12
movq %r12, (%rsi)
nop
nop
nop
and %r15, %r15
lea addresses_D_ht+0x2d65, %rsi
lea addresses_UC_ht+0x171a9, %rdi
nop
nop
nop
xor $65291, %r9
mov $85, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $47503, %r14
lea addresses_WT_ht+0x6ec1, %rsi
lea addresses_WT_ht+0x1b734, %rdi
nop
sub %r13, %r13
mov $1, %rcx
rep movsl
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x1ea41, %rcx
nop
nop
add %rdi, %rdi
movl $0x61626364, (%rcx)
nop
nop
nop
nop
and $21593, %r9
lea addresses_A_ht+0xa441, %r14
clflush (%r14)
nop
nop
and %r12, %r12
mov (%r14), %r13
nop
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0x18df, %rsi
lea addresses_WC_ht+0x3fdb, %rdi
nop
cmp %r13, %r13
mov $34, %rcx
rep movsw
add %rsi, %rsi
lea addresses_A_ht+0x1b5a5, %r15
nop
nop
sub %rdi, %rdi
vmovups (%r15), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r12
nop
xor $38270, %r13
lea addresses_UC_ht+0x92bd, %r9
add %rsi, %rsi
movb (%r9), %r13b
nop
nop
nop
add %r12, %r12
lea addresses_D_ht+0xd1c1, %r13
nop
nop
nop
nop
nop
dec %rsi
vmovups (%r13), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r14
nop
nop
dec %r15
lea addresses_WT_ht+0x19341, %rsi
lea addresses_WC_ht+0x9841, %rdi
nop
nop
nop
nop
sub $53788, %r12
mov $30, %rcx
rep movsb
add %rcx, %rcx
lea addresses_D_ht+0x2e95, %rcx
nop
nop
nop
nop
nop
dec %r12
movw $0x6162, (%rcx)
nop
nop
nop
nop
xor $61466, %r15
lea addresses_D_ht+0x1d541, %rsi
lea addresses_UC_ht+0x14d41, %rdi
nop
nop
nop
nop
nop
sub $4909, %r13
mov $121, %rcx
rep movsw
nop
sub %r13, %r13
lea addresses_WC_ht+0x15c41, %rsi
lea addresses_D_ht+0x124ad, %rdi
nop
nop
nop
sub %r15, %r15
mov $58, %rcx
rep movsq
nop
nop
nop
nop
add $12744, %r14
lea addresses_A_ht+0x7711, %r15
nop
nop
nop
nop
cmp $1092, %r14
mov $0x6162636465666768, %r9
movq %r9, (%r15)
nop
nop
nop
nop
sub $19903, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %rdi
push %rdx
push %rsi

// Store
mov $0x441, %r14
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%r14)
nop
nop
dec %rsi

// Load
mov $0x781, %rsi
nop
nop
nop
nop
xor $136, %rdx
movb (%rsi), %r10b
nop
nop
nop
cmp %r10, %r10

// Faulty Load
lea addresses_PSE+0x1a241, %r13
nop
nop
sub %r10, %r10
mov (%r13), %rdx
lea oracles, %r15
and $0xff, %rdx
shlq $12, %rdx
mov (%r15,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
