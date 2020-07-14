.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1659a, %rsi
lea addresses_A_ht+0xbafe, %rdi
add %r8, %r8
mov $101, %rcx
rep movsl
dec %r12
lea addresses_A_ht+0x379a, %rsi
lea addresses_WT_ht+0xdf9a, %rdi
add %rdx, %rdx
mov $110, %rcx
rep movsl
and %rsi, %rsi
lea addresses_WT_ht+0xbe0a, %rdx
nop
add $45278, %rcx
mov (%rdx), %r12w
nop
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x36b2, %rsi
lea addresses_normal_ht+0xe906, %rdi
nop
nop
cmp $10133, %r8
mov $88, %rcx
rep movsw
nop
nop
dec %rcx
lea addresses_D_ht+0x144ee, %rdx
nop
nop
nop
nop
nop
inc %r13
movb (%rdx), %r8b
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x5204, %rdx
nop
nop
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %r8
movq %r8, (%rdx)
xor $6465, %rdx
lea addresses_D_ht+0x1b652, %rsi
lea addresses_A_ht+0x17e9a, %rdi
nop
nop
nop
nop
nop
lfence
mov $45, %rcx
rep movsq
nop
nop
nop
nop
dec %r13
lea addresses_A_ht+0xeefa, %rsi
lea addresses_D_ht+0xe65a, %rdi
nop
sub %r10, %r10
mov $33, %rcx
rep movsw
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x47ca, %rsi
lea addresses_WT_ht+0x1dd4a, %rdi
nop
nop
nop
nop
xor $43507, %r13
mov $93, %rcx
rep movsl
nop
inc %rdi
lea addresses_UC_ht+0x1304c, %rsi
lea addresses_D_ht+0x1b4c2, %rdi
nop
nop
nop
sub %r13, %r13
mov $64, %rcx
rep movsq
nop
nop
nop
nop
and $11111, %r8
lea addresses_UC_ht+0x2d9a, %rsi
nop
nop
nop
nop
cmp %rdi, %rdi
movb $0x61, (%rsi)
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x2012, %rdi
nop
nop
xor $18585, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm1
movups %xmm1, (%rdi)
nop
nop
dec %r12
lea addresses_A_ht+0x50ba, %rsi
lea addresses_A_ht+0x60fa, %rdi
nop
nop
nop
dec %r13
mov $40, %rcx
rep movsb
nop
nop
nop
nop
nop
and $17921, %rcx
lea addresses_WT_ht+0x1316e, %rsi
lea addresses_UC_ht+0x1db9a, %rdi
nop
nop
and %rdx, %rdx
mov $110, %rcx
rep movsl
nop
mfence
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rax
push %rdi
push %rdx

// Store
lea addresses_normal+0xb3da, %rdi
nop
nop
nop
nop
sub $18535, %r9
mov $0x5152535455565758, %rax
movq %rax, %xmm1
vmovups %ymm1, (%rdi)
nop
and $56234, %rax

// Store
lea addresses_normal+0x117f6, %r14
nop
nop
nop
add %rax, %rax
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_normal+0x12d0a, %rdx
nop
nop
nop
nop
sub %r15, %r15
movw $0x5152, (%rdx)
and %rax, %rax

// Faulty Load
lea addresses_US+0x1739a, %r14
nop
nop
nop
nop
xor %r11, %r11
movups (%r14), %xmm3
vpextrq $0, %xmm3, %rdx
lea oracles, %r15
and $0xff, %rdx
shlq $12, %rdx
mov (%r15,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 2, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 11, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'90': 3}
90 90 90
*/
