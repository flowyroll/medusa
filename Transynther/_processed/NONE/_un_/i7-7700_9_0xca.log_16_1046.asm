.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x81a, %rsi
lea addresses_WT_ht+0xd856, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $95, %rcx
rep movsb
nop
nop
nop
nop
and $13764, %r13
lea addresses_D_ht+0x92b0, %rsi
lea addresses_UC_ht+0x1c502, %rdi
nop
nop
inc %r8
mov $116, %rcx
rep movsl
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x19856, %rsi
nop
nop
nop
sub $52723, %r14
mov (%rsi), %di
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_UC_ht+0x9746, %r8
nop
nop
nop
sub %r13, %r13
movb $0x61, (%r8)
nop
nop
nop
nop
xor $48598, %r8
lea addresses_normal_ht+0xf856, %rsi
lea addresses_WT_ht+0x4256, %rdi
nop
xor %r15, %r15
mov $54, %rcx
rep movsq
nop
cmp $42228, %rdi
lea addresses_WT_ht+0x1ec46, %rsi
nop
nop
nop
nop
cmp $23240, %r14
mov $0x6162636465666768, %rbx
movq %rbx, (%rsi)
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x67d6, %rsi
lea addresses_UC_ht+0x9e36, %rdi
clflush (%rsi)
xor %r14, %r14
mov $82, %rcx
rep movsw
nop
mfence
lea addresses_WT_ht+0x19756, %rdi
nop
nop
nop
nop
inc %r15
mov (%rdi), %cx
nop
nop
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %rax
push %rbx
push %rdx

// Store
lea addresses_UC+0x14856, %r15
xor %rbx, %rbx
movl $0x51525354, (%r15)
nop
dec %r15

// Load
lea addresses_PSE+0x9e56, %r14
nop
nop
xor $40101, %r12
vmovups (%r14), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rax
nop
nop
nop
nop
xor $58246, %rdx

// Store
lea addresses_A+0x15656, %rdx
nop
nop
nop
nop
xor $33464, %rax
movw $0x5152, (%rdx)
sub %rax, %rax

// Store
lea addresses_normal+0xfc56, %r15
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov $0x5152535455565758, %r13
movq %r13, (%r15)
nop
nop
add $54901, %r14

// Store
lea addresses_PSE+0x63d6, %rax
cmp %rdx, %rdx
movl $0x51525354, (%rax)
nop
nop
nop
nop
inc %rbx

// Store
lea addresses_normal+0x17bd6, %r12
clflush (%r12)
nop
nop
dec %rdx
movl $0x51525354, (%r12)
nop
nop
nop
dec %rbx

// Store
lea addresses_WT+0x16356, %rdx
nop
dec %r15
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovntdq %ymm5, (%rdx)
nop
nop
add %r14, %r14

// Store
mov $0xfd6, %rbx
nop
nop
nop
nop
xor $10149, %rax
movb $0x51, (%rbx)
nop
nop
nop
cmp $47207, %r12

// Faulty Load
lea addresses_UC+0x14856, %r15
sub %r14, %r14
mov (%r15), %ax
lea oracles, %rbx
and $0xff, %rax
shlq $12, %rax
mov (%rbx,%rax,1), %rax
pop %rdx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_UC'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'5f': 16}
5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f
*/
