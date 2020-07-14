.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x16ca7, %r9
nop
nop
add $19715, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, (%r9)
nop
nop
nop
nop
nop
lfence
lea addresses_UC_ht+0xe4a3, %r9
nop
nop
nop
lfence
mov (%r9), %ebx
nop
add %r8, %r8
lea addresses_WT_ht+0x8b63, %rbx
nop
nop
nop
add %rcx, %rcx
mov (%rbx), %di
nop
nop
nop
sub %rbx, %rbx
lea addresses_normal_ht+0xaef7, %rsi
lea addresses_D_ht+0xf5e3, %rdi
xor $13382, %r12
mov $25, %rcx
rep movsw
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0xd6e3, %rsi
lea addresses_UC_ht+0xc5bf, %rdi
nop
nop
nop
and %rdx, %rdx
mov $24, %rcx
rep movsl
nop
add $17818, %rdi
lea addresses_UC_ht+0xe1e3, %rsi
lea addresses_WC_ht+0x10843, %rdi
nop
xor %rdx, %rdx
mov $53, %rcx
rep movsl
nop
sub %r9, %r9
lea addresses_D_ht+0x7173, %rsi
lea addresses_D_ht+0x1c363, %rdi
nop
nop
cmp %r12, %r12
mov $4, %rcx
rep movsb
nop
inc %rsi
lea addresses_WT_ht+0x13563, %r8
nop
add %rbx, %rbx
movb $0x61, (%r8)
add %rdi, %rdi
lea addresses_WT_ht+0x19113, %rdx
nop
dec %rsi
vmovups (%rdx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r8
nop
nop
dec %r12
lea addresses_normal_ht+0x2373, %r12
xor $60440, %rbx
movw $0x6162, (%r12)
nop
nop
nop
dec %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdx

// Store
lea addresses_UC+0xd427, %rdx
inc %rax
mov $0x5152535455565758, %r13
movq %r13, %xmm2
vmovups %ymm2, (%rdx)
nop
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_RW+0x13da3, %r13
nop
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, (%r13)
nop
nop
nop
nop
xor $18472, %rcx

// Store
lea addresses_WC+0xd763, %r13
nop
nop
and %rax, %rax
movw $0x5152, (%r13)
nop
nop
nop
nop
nop
sub $38141, %rcx

// Load
lea addresses_PSE+0xa673, %rdx
clflush (%rdx)
nop
nop
add $22560, %r12
vmovups (%rdx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r13
nop
nop
and %r13, %r13

// Load
lea addresses_normal+0x8607, %r13
add %r9, %r9
movb (%r13), %dl
nop
add $38665, %rax

// Load
lea addresses_A+0x21e3, %rbx
add %rdx, %rdx
vmovups (%rbx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r9
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_PSE+0x15d0d, %rbx
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %r13
movq %r13, (%rbx)
nop
nop
nop
nop
nop
add $10965, %rdx

// Load
lea addresses_WT+0xb2e3, %rax
cmp $26051, %r13
mov (%rax), %bx
nop
nop
cmp $55178, %r9

// Store
lea addresses_WT+0xfd3f, %r12
nop
nop
nop
nop
cmp $46638, %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
vmovntdq %ymm0, (%r12)
sub $56446, %rcx

// Store
lea addresses_normal+0xc103, %rdx
nop
xor $23551, %r9
movw $0x5152, (%rdx)
sub $32202, %rdx

// Store
lea addresses_WC+0xab63, %rcx
nop
nop
nop
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movups %xmm5, (%rcx)
xor %r13, %r13

// Faulty Load
lea addresses_A+0x159e3, %r13
nop
nop
nop
nop
cmp $2823, %rbx
movb (%r13), %dl
lea oracles, %r9
and $0xff, %rdx
shlq $12, %rdx
mov (%r9,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'00': 2}
00 00
*/
