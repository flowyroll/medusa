.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x12812, %r11
nop
nop
nop
nop
add %rcx, %rcx
mov (%r11), %edx
nop
nop
nop
nop
add %r8, %r8
lea addresses_D_ht+0x15d12, %rsi
lea addresses_WT_ht+0xd21a, %rdi
nop
add %r12, %r12
mov $10, %rcx
rep movsl
xor %r8, %r8
lea addresses_A_ht+0x1013b, %rdx
clflush (%rdx)
nop
nop
nop
nop
sub %rdi, %rdi
movups (%rdx), %xmm7
vpextrq $0, %xmm7, %r12
nop
nop
nop
mfence
lea addresses_D_ht+0xa9a, %r12
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r12)
and %r12, %r12
lea addresses_A_ht+0x305a, %rsi
lea addresses_WT_ht+0xc17a, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $31300, %rdx
mov $72, %rcx
rep movsw
nop
cmp %r12, %r12
lea addresses_A_ht+0x1762a, %r8
nop
nop
nop
sub %r12, %r12
movups (%r8), %xmm1
vpextrq $1, %xmm1, %rdx
add %r8, %r8
lea addresses_UC_ht+0x1ea9a, %rsi
lea addresses_WC_ht+0x349a, %rdi
nop
add $1640, %r8
mov $111, %rcx
rep movsw
nop
nop
nop
cmp $34081, %rcx
lea addresses_D_ht+0xc99a, %rsi
lea addresses_normal_ht+0x4f92, %rdi
nop
nop
nop
nop
cmp %r11, %r11
mov $15, %rcx
rep movsl
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x1cf9a, %r11
nop
add %rdx, %rdx
and $0xffffffffffffffc0, %r11
movaps (%r11), %xmm7
vpextrq $1, %xmm7, %r12
dec %r12
lea addresses_normal_ht+0xd3e8, %rsi
nop
nop
nop
nop
and $25960, %r8
movb (%rsi), %cl
nop
add $18301, %r11
lea addresses_WT_ht+0x1509a, %rsi
lea addresses_WT_ht+0x1d83e, %rdi
nop
nop
nop
nop
add $9182, %rbx
mov $101, %rcx
rep movsq
nop
dec %rsi
lea addresses_D_ht+0x15186, %rsi
lea addresses_WT_ht+0x19b7a, %rdi
nop
nop
nop
nop
sub $27700, %rbx
mov $126, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x3cfa, %r8
nop
nop
cmp %rdi, %rdi
movl $0x61626364, (%r8)
add %r12, %r12
lea addresses_WC_ht+0x379c, %rdx
nop
inc %rdi
mov (%rdx), %r8w
cmp %rsi, %rsi
lea addresses_normal_ht+0x16e2f, %r11
nop
nop
nop
nop
xor $36137, %rdx
movb $0x61, (%r11)
nop
nop
and %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdx

// Load
lea addresses_RW+0xaa5a, %r10
nop
nop
nop
dec %rdx
vmovups (%r10), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r13
add $64157, %rcx

// Store
mov $0x736b26000000047a, %r10
nop
nop
nop
add %r14, %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%r10)
nop
nop
nop
nop
nop
and %r14, %r14

// Store
lea addresses_US+0x1c86d, %r10
nop
nop
sub %r8, %r8
mov $0x5152535455565758, %r13
movq %r13, (%r10)
nop
xor $6805, %r10

// Store
lea addresses_D+0x18e9a, %r14
nop
nop
and $31067, %rbx
movl $0x51525354, (%r14)
nop
nop
nop
nop
xor %r14, %r14

// Faulty Load
lea addresses_WT+0x1d29a, %rbx
nop
nop
nop
and %r13, %r13
movups (%rbx), %xmm2
vpextrq $1, %xmm2, %rdx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'39': 349}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
