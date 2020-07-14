.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xee20, %rsi
lea addresses_normal_ht+0x8760, %rdi
nop
nop
nop
sub %rbx, %rbx
mov $105, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %r15
lea addresses_A_ht+0x92e6, %r11
nop
nop
cmp %r12, %r12
mov $0x6162636465666768, %rcx
movq %rcx, (%r11)
nop
nop
nop
nop
sub $28047, %r12
lea addresses_UC_ht+0xa020, %rdi
nop
nop
nop
nop
sub %r15, %r15
vmovups (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbx
nop
nop
nop
inc %r11
lea addresses_A_ht+0xe20, %rsi
lea addresses_UC_ht+0xf654, %rdi
clflush (%rsi)
nop
nop
xor %rdx, %rdx
mov $2, %rcx
rep movsw
and %r12, %r12
lea addresses_A_ht+0x6220, %rsi
clflush (%rsi)
xor $52582, %r11
mov (%rsi), %bx
nop
nop
nop
cmp $28349, %rdi
lea addresses_WT_ht+0xa320, %rsi
clflush (%rsi)
nop
nop
nop
nop
sub $12789, %rcx
mov (%rsi), %r11d
nop
nop
nop
cmp $15768, %rsi
lea addresses_normal_ht+0xf820, %r12
nop
nop
nop
xor %rbx, %rbx
movw $0x6162, (%r12)
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x1301c, %rdi
nop
cmp %r11, %r11
vmovups (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbx
nop
nop
nop
add $12607, %rbx
lea addresses_UC_ht+0xe86a, %rdx
clflush (%rdx)
nop
and %r15, %r15
mov $0x6162636465666768, %r11
movq %r11, %xmm1
movups %xmm1, (%rdx)
nop
nop
cmp %rdx, %rdx
lea addresses_UC_ht+0xce20, %r12
nop
sub %rdi, %rdi
vmovups (%r12), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdx
xor $33792, %rsi
lea addresses_D_ht+0xe028, %rsi
nop
nop
nop
nop
and $41896, %rbx
movw $0x6162, (%rsi)
nop
nop
nop
nop
sub %r15, %r15
lea addresses_WC_ht+0xf0b8, %r15
nop
xor %rbx, %rbx
mov $0x6162636465666768, %r12
movq %r12, %xmm7
movups %xmm7, (%r15)
nop
nop
and %rbx, %rbx
lea addresses_normal_ht+0x13020, %rsi
lea addresses_UC_ht+0x13920, %rdi
add $13896, %rbx
mov $75, %rcx
rep movsl
nop
nop
add $31872, %rdi
lea addresses_A_ht+0x17f20, %r15
nop
nop
nop
nop
inc %rbx
mov (%r15), %esi
nop
cmp $22725, %r12
lea addresses_WT_ht+0x3e20, %rdx
sub %rsi, %rsi
movups (%rdx), %xmm5
vpextrq $1, %xmm5, %r12
nop
nop
nop
nop
nop
and $34904, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x9694, %r8
nop
sub $28361, %r14
movw $0x5152, (%r8)
inc %rdi

// Store
lea addresses_WC+0x1e1f0, %r8
and $18215, %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movups %xmm6, (%r8)
nop
nop
sub %rbx, %rbx

// Store
lea addresses_PSE+0x4a60, %r11
sub $10899, %r8
mov $0x5152535455565758, %r14
movq %r14, (%r11)
nop
nop
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_WT+0x1fe58, %r10
add $32877, %rax
mov $0x5152535455565758, %r14
movq %r14, (%r10)
nop
nop
nop
cmp %r10, %r10

// Load
lea addresses_A+0xf80, %rbx
nop
nop
cmp %r11, %r11
mov (%rbx), %r14
nop
nop
nop
nop
nop
cmp %r11, %r11

// REPMOV
lea addresses_RW+0x1f8c0, %rsi
lea addresses_WT+0x1c448, %rdi
nop
nop
cmp %rax, %rax
mov $97, %rcx
rep movsw
nop
nop
nop
xor $16676, %r10

// Store
lea addresses_WT+0x7fa0, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm3
movups %xmm3, (%rbx)
nop
nop
nop
sub $41441, %r14

// Store
lea addresses_UC+0x1b3e0, %r8
clflush (%r8)
nop
nop
nop
inc %r11
movb $0x51, (%r8)
nop
add $28706, %rbx

// Store
lea addresses_PSE+0xde20, %rcx
nop
nop
nop
nop
nop
sub $60259, %r8
movl $0x51525354, (%rcx)
nop
nop
nop
add $28333, %r11

// Store
lea addresses_RW+0xe560, %rax
nop
nop
nop
inc %rcx
movw $0x5152, (%rax)
nop
nop
xor %rsi, %rsi

// Store
mov $0xee0, %r14
clflush (%r14)
nop
nop
nop
and %rax, %rax
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
sub $20337, %r14

// Faulty Load
lea addresses_PSE+0xde20, %r10
clflush (%r10)
nop
dec %r8
vmovups (%r10), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 5, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 4, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'33': 44}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
