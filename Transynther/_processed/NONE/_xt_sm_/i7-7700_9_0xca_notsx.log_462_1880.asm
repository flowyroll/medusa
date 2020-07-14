.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x105e4, %r13
nop
nop
dec %rax
movb $0x61, (%r13)
nop
nop
nop
cmp $1961, %r10
lea addresses_UC_ht+0x9b16, %r15
nop
nop
nop
nop
nop
xor $30039, %r13
mov (%r15), %r14w
nop
nop
nop
nop
and $8625, %r15
lea addresses_A_ht+0x56e0, %rsi
lea addresses_D_ht+0xecba, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor $55455, %r13
mov $112, %rcx
rep movsl
nop
nop
sub $10940, %r10
lea addresses_normal_ht+0x14eda, %rsi
nop
nop
nop
inc %r10
movw $0x6162, (%rsi)
nop
nop
add $26175, %rax
lea addresses_A_ht+0x18b7c, %r10
nop
nop
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm0
movups %xmm0, (%r10)
nop
nop
nop
add $1934, %rax
lea addresses_D_ht+0x184e4, %r13
nop
nop
nop
nop
nop
xor $26349, %rdi
movw $0x6162, (%r13)
nop
nop
inc %r15
lea addresses_UC_ht+0x166e4, %r13
clflush (%r13)
nop
nop
nop
nop
sub %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r13)
xor $63424, %rdi
lea addresses_D_ht+0xa884, %rsi
lea addresses_A_ht+0x95e4, %rdi
nop
nop
nop
xor %r15, %r15
mov $71, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r15, %r15
lea addresses_UC_ht+0x122e4, %rcx
and %r15, %r15
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
cmp $38419, %rdi
lea addresses_A_ht+0x6a64, %r14
clflush (%r14)
nop
nop
nop
nop
add $56160, %r10
mov $0x6162636465666768, %rbx
movq %rbx, (%r14)
nop
nop
nop
inc %r15
lea addresses_A_ht+0x16ee4, %rax
add %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, (%rax)
nop
nop
nop
sub %r10, %r10
lea addresses_WC_ht+0x14c96, %rbx
nop
nop
inc %rdi
movb $0x61, (%rbx)
nop
nop
nop
dec %r14
lea addresses_normal_ht+0x1b384, %rsi
lea addresses_normal_ht+0xa364, %rdi
clflush (%rdi)
nop
inc %r15
mov $86, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $64716, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %rax
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x1b94, %rsi
nop
xor %rax, %rax
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movups %xmm5, (%rsi)
nop
nop
nop
sub %rbx, %rbx

// Load
lea addresses_US+0x1fae4, %rsi
cmp $8304, %r8
vmovups (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbx
nop
nop
nop
nop
nop
add %rax, %rax

// Store
lea addresses_D+0x1b4e4, %rax
clflush (%rax)
nop
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm1
movups %xmm1, (%rax)
nop
nop
cmp %r8, %r8

// Store
lea addresses_normal+0x1cce4, %rdx
nop
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %r15
movq %r15, (%rdx)
nop
nop
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_A+0xf6e4, %r15
add %rsi, %rsi
movw $0x5152, (%r15)
nop
nop
nop
add $37156, %r15

// Store
lea addresses_PSE+0x1ae4, %rdi
and $12763, %rsi
movl $0x51525354, (%rdi)
nop
nop
nop
inc %rax

// Store
lea addresses_WT+0x1bc88, %r15
nop
nop
nop
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, (%r15)
nop
and $60252, %rsi

// Store
lea addresses_A+0x10204, %r8
nop
nop
nop
nop
xor $51351, %rdi
movb $0x51, (%r8)
nop
nop
nop
nop
inc %r8

// Store
lea addresses_A+0xd4c4, %rsi
nop
nop
xor %rdx, %rdx
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_WC+0x1bae4, %rax
xor %rdx, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, (%rax)
cmp %rdx, %rdx

// Faulty Load
lea addresses_PSE+0x1ae4, %rsi
nop
nop
nop
nop
nop
add $26809, %rax
mov (%rsi), %edx
lea oracles, %r8
and $0xff, %rdx
shlq $12, %rdx
mov (%r8,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'54': 462}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
