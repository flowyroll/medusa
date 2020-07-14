.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x316c, %rax
nop
add $65285, %rdx
mov $0x6162636465666768, %r13
movq %r13, %xmm2
movups %xmm2, (%rax)
add %rax, %rax
lea addresses_WC_ht+0x62c, %r15
nop
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%r15)
nop
cmp %r13, %r13
lea addresses_normal_ht+0xcf14, %rcx
nop
add %r9, %r9
vmovups (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdx
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x1242c, %rsi
lea addresses_WT_ht+0x1bd0c, %rdi
nop
nop
nop
dec %r9
mov $75, %rcx
rep movsq
nop
nop
nop
xor $21577, %rax
lea addresses_WC_ht+0x19014, %rdi
nop
dec %rax
mov (%rdi), %si
add $11664, %rdx
lea addresses_D_ht+0x602c, %rdx
nop
add %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
cmp %rdx, %rdx
lea addresses_WT_ht+0x1e09c, %rcx
and $59302, %rax
movl $0x61626364, (%rcx)
nop
nop
nop
nop
xor $65371, %rax
lea addresses_UC_ht+0x1b62c, %rsi
nop
nop
nop
xor $1011, %rdx
vmovups (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r9
inc %rdi
lea addresses_WT_ht+0x52d5, %rdx
dec %rcx
mov (%rdx), %edi
nop
nop
nop
and %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rbp
push %rbx
push %rdi
push %rsi

// Store
lea addresses_normal+0x12e2c, %r13
nop
nop
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
movups %xmm5, (%r13)
nop
nop
dec %r10

// Store
lea addresses_RW+0x932c, %rdi
clflush (%rdi)
nop
nop
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, (%rdi)
nop
nop
nop
add $58618, %rdi

// Load
mov $0x4a8635000000012c, %rsi
nop
nop
nop
nop
nop
cmp $7820, %r15
movb (%rsi), %r13b
and $46120, %rbx

// Store
lea addresses_PSE+0x16e9c, %r15
nop
xor $4152, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, (%r15)
nop
nop
nop
and %r15, %r15

// Store
lea addresses_normal+0x12e2c, %rbp
nop
nop
nop
nop
sub %rbx, %rbx
movb $0x51, (%rbp)
nop
dec %r13

// Store
mov $0xd94, %r15
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %r13
movq %r13, %xmm7
movups %xmm7, (%r15)
and %r15, %r15

// Faulty Load
lea addresses_normal+0x12e2c, %r15
nop
inc %rbp
movups (%r15), %xmm4
vpextrq $0, %xmm4, %r13
lea oracles, %rdi
and $0xff, %r13
shlq $12, %r13
mov (%rdi,%r13,1), %r13
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 11, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 1}
58
*/
