.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x7686, %rdi
xor $35430, %r15
mov $0x6162636465666768, %r10
movq %r10, %xmm5
and $0xffffffffffffffc0, %rdi
movntdq %xmm5, (%rdi)
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x18966, %rsi
sub $55299, %rdi
movl $0x61626364, (%rsi)
nop
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0xc786, %rax
nop
nop
nop
xor %rsi, %rsi
vmovups (%rax), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r15
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0xcf66, %rax
nop
nop
add $28003, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
and $0xffffffffffffffc0, %rax
movaps %xmm1, (%rax)
nop
nop
nop
nop
dec %r15
lea addresses_WT_ht+0xaae6, %r15
nop
nop
and $8221, %rdi
movb $0x61, (%r15)
nop
sub $44260, %r13
lea addresses_WT_ht+0x1eb86, %rsi
lea addresses_normal_ht+0x1845, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor %rbx, %rbx
mov $31, %rcx
rep movsw
nop
nop
cmp $8022, %r15
lea addresses_normal_ht+0x1d2c2, %rsi
lea addresses_D_ht+0x5e66, %rdi
add $23096, %rbx
mov $103, %rcx
rep movsq
nop
nop
nop
inc %rbx
lea addresses_WC_ht+0x9766, %rbx
nop
nop
nop
sub $52173, %rax
mov $0x6162636465666768, %r13
movq %r13, (%rbx)
nop
nop
nop
nop
nop
cmp $14376, %rbx
lea addresses_WT_ht+0x1ab3e, %rsi
nop
nop
nop
nop
nop
cmp %r15, %r15
mov (%rsi), %cx
sub %r15, %r15
lea addresses_WC_ht+0xee66, %rdi
nop
nop
nop
nop
sub $18719, %rax
movw $0x6162, (%rdi)
nop
nop
nop
nop
dec %rdi
lea addresses_WT_ht+0x17ad6, %rbx
nop
nop
dec %rax
movl $0x61626364, (%rbx)
nop
add $26827, %rcx
lea addresses_UC_ht+0x5766, %rsi
lea addresses_A_ht+0x420e, %rdi
cmp %rax, %rax
mov $3, %rcx
rep movsq
add $58952, %r10
lea addresses_A_ht+0xef66, %rsi
lea addresses_UC_ht+0xa7a6, %rdi
nop
nop
cmp $49722, %r10
mov $62, %rcx
rep movsq
nop
sub $12597, %rax
lea addresses_WC_ht+0x6c66, %rsi
nop
nop
nop
nop
nop
xor $48854, %r10
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
movups %xmm2, (%rsi)
nop
nop
xor %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_WT+0x1cb66, %rbx
clflush (%rbx)
nop
and $14073, %rdx
movups (%rbx), %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
nop
nop
nop
sub $7654, %rdx

// Store
lea addresses_A+0x13366, %r8
nop
nop
nop
nop
nop
cmp $38714, %rdi
movw $0x5152, (%r8)
nop
nop
nop
cmp $18656, %rcx

// Store
lea addresses_normal+0x4e3c, %r8
nop
sub %rbx, %rbx
mov $0x5152535455565758, %r13
movq %r13, (%r8)
nop
nop
sub %rdi, %rdi

// Load
lea addresses_WC+0x10366, %r13
nop
xor %rcx, %rcx
mov (%r13), %r8

// Exception!!!
nop
mov (0), %rdx
nop
xor %rbx, %rbx

// Store
lea addresses_normal+0xefe6, %rdi
nop
nop
xor $32198, %rsi
movl $0x51525354, (%rdi)
xor $11285, %rbx

// Store
lea addresses_WC+0xcb66, %rdi
cmp $60059, %rdx
movw $0x5152, (%rdi)
cmp %r13, %r13

// Faulty Load
lea addresses_PSE+0x7766, %r8
nop
nop
cmp $8619, %rbx
movb (%r8), %cl
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': True, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 7, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
