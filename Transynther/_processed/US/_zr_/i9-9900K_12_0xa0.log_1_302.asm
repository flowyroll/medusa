.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1e66, %rsi
lea addresses_WT_ht+0x19dc6, %rdi
nop
nop
nop
nop
cmp $31749, %rax
mov $10, %rcx
rep movsl
nop
nop
nop
add $43407, %r15
lea addresses_D_ht+0x14066, %rdx
nop
nop
nop
nop
sub $47015, %r14
vmovups (%rdx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r15
nop
nop
nop
nop
sub $54529, %rdx
lea addresses_D_ht+0x11596, %rdx
nop
nop
nop
add $10938, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%rdx)
nop
nop
cmp %rdx, %rdx
lea addresses_WT_ht+0x1e066, %r15
nop
and $25189, %rdi
mov (%r15), %rsi
nop
nop
nop
nop
nop
add $63776, %rdi
lea addresses_WT_ht+0x1c3ae, %rdx
cmp %rax, %rax
mov $0x6162636465666768, %r15
movq %r15, (%rdx)
nop
nop
nop
cmp %r15, %r15
lea addresses_WT_ht+0x13e66, %rsi
nop
nop
nop
nop
inc %r14
mov (%rsi), %di
nop
nop
nop
nop
inc %r14
lea addresses_WT_ht+0x10fcb, %rdi
nop
nop
cmp %rax, %rax
mov (%rdi), %dx
nop
add %rdx, %rdx
lea addresses_D_ht+0x1156e, %rdi
nop
nop
mfence
vmovups (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r15
nop
nop
nop
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0x26c6, %rsi
nop
nop
cmp $37576, %r14
movl $0x61626364, (%rsi)
nop
xor %rdx, %rdx
lea addresses_A_ht+0x11766, %rsi
nop
and $17809, %rax
mov (%rsi), %r14w
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_D_ht+0x1ab00, %r15
sub $36844, %r14
movups (%r15), %xmm1
vpextrq $1, %xmm1, %rsi
sub %r15, %r15
lea addresses_D_ht+0x12b25, %r14
cmp $54870, %r15
mov (%r14), %rcx
nop
cmp %r15, %r15
lea addresses_D_ht+0x13bc6, %rsi
lea addresses_WC_ht+0x2466, %rdi
and $48269, %rax
mov $56, %rcx
rep movsw
add $36742, %rdx
lea addresses_WT_ht+0x85c6, %r14
cmp $34063, %rdi
movb (%r14), %r15b
nop
nop
add $64419, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Load
mov $0x138e810000000876, %rdx
nop
nop
nop
nop
cmp %r8, %r8
mov (%rdx), %ax
nop
nop
nop
nop
xor $22969, %r9

// Store
lea addresses_A+0x139e6, %rdi
nop
nop
xor $17789, %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm5
vmovups %ymm5, (%rdi)
nop
dec %r9

// Store
lea addresses_US+0x19166, %r12
nop
nop
nop
nop
xor $62068, %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movaps %xmm7, (%r12)
nop
nop
nop
nop
nop
add %r9, %r9

// Store
lea addresses_RW+0x2a5b, %r14
nop
nop
nop
nop
nop
and $13759, %r12
movw $0x5152, (%r14)
and %r12, %r12

// Store
lea addresses_WC+0x1da5e, %rdx
add $13214, %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm2
vmovups %ymm2, (%rdx)
nop
nop
nop
sub $31971, %r9

// Load
mov $0x513e1600000009e6, %r9
nop
cmp %rdi, %rdi
movb (%r9), %r12b
dec %r12

// Store
lea addresses_US+0x12382, %r8
nop
xor $52278, %rdi
movl $0x51525354, (%r8)
nop
nop
nop
nop
xor $43935, %rdi

// REPMOV
mov $0x312d260000000c1b, %rsi
lea addresses_UC+0x12866, %rdi
nop
nop
and $6877, %r8
mov $63, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $6159, %rdi

// Store
lea addresses_A+0x14866, %r8
and %rsi, %rsi
movw $0x5152, (%r8)
nop
nop
and %rcx, %rcx

// Store
lea addresses_UC+0x5c66, %rcx
nop
nop
nop
add $49773, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
nop
nop
dec %r8

// Store
lea addresses_RW+0x1a8e6, %r14
and $55179, %r8
movl $0x51525354, (%r14)
nop
nop
nop
cmp $32318, %r8

// Store
lea addresses_US+0x6666, %r8
clflush (%r8)
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movups %xmm7, (%r8)
nop
nop
nop
nop
inc %r12

// Store
lea addresses_A+0x1b9c6, %r14
nop
nop
nop
nop
nop
xor $47495, %rax
mov $0x5152535455565758, %rcx
movq %rcx, (%r14)
xor $34910, %rdx

// Load
lea addresses_US+0xbc66, %rdi
nop
nop
nop
and %rax, %rax
mov (%rdi), %cx
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_US+0xbc66, %r9
sub $46662, %rax
mov $0x5152535455565758, %rdx
movq %rdx, (%r9)
nop
sub %rdx, %rdx

// Faulty Load
lea addresses_US+0xbc66, %rdi
cmp $57059, %rax
mov (%rdi), %r8d
lea oracles, %r8
and $0xff, %r8
shlq $12, %r8
mov (%r8,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_US', 'AVXalign': True, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_NC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': True, 'size': 4}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_NC'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_RW', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}}
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': True, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': True, 'same': True, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'00': 1}
00
*/
