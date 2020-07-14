.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1145e, %rbp
clflush (%rbp)
nop
nop
nop
and $58888, %r10
vmovups (%rbp), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rax
xor $57806, %r14
lea addresses_normal_ht+0x9136, %rcx
nop
nop
nop
nop
nop
xor $46123, %r11
movw $0x6162, (%rcx)
nop
nop
sub $42300, %rbx
lea addresses_A_ht+0xd02b, %rsi
lea addresses_UC_ht+0x1a2eb, %rdi
nop
dec %r10
mov $68, %rcx
rep movsq
xor %rsi, %rsi
lea addresses_UC_ht+0x14c17, %rdi
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x187ab, %rsi
lea addresses_D_ht+0x7c3e, %rdi
nop
and %r14, %r14
mov $10, %rcx
rep movsw
nop
xor %rdi, %rdi
lea addresses_D_ht+0x126f3, %rsi
lea addresses_WC_ht+0x36eb, %rdi
nop
nop
nop
nop
inc %r10
mov $6, %rcx
rep movsw
nop
nop
nop
nop
sub $51682, %rdi
lea addresses_WC_ht+0x1adab, %rbp
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r11
movq %r11, (%rbp)
nop
nop
add %rax, %rax
lea addresses_UC_ht+0x1ca2b, %rbx
nop
and $49647, %r14
vmovups (%rbx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
nop
nop
cmp $42414, %rax
lea addresses_A_ht+0x265b, %rsi
lea addresses_A_ht+0x1022b, %rdi
nop
nop
nop
nop
nop
and %r11, %r11
mov $7, %rcx
rep movsl
nop
nop
nop
and $4294, %rax
lea addresses_UC_ht+0x1eab, %rcx
nop
nop
and %rax, %rax
mov $0x6162636465666768, %r10
movq %r10, (%rcx)
nop
nop
nop
nop
sub $56218, %rdi
lea addresses_A_ht+0xd42b, %rsi
lea addresses_A_ht+0x10423, %rdi
nop
nop
nop
nop
sub $6584, %rax
mov $110, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_UC_ht+0xf56b, %rbp
nop
nop
nop
xor %rax, %rax
mov (%rbp), %r14w
nop
nop
sub $14013, %rax
lea addresses_normal_ht+0xd42b, %rbp
nop
nop
nop
nop
nop
and %r10, %r10
mov $0x6162636465666768, %r14
movq %r14, (%rbp)
nop
nop
nop
nop
xor $64175, %r10
lea addresses_UC_ht+0x1102b, %rbp
nop
nop
nop
nop
nop
add $19056, %rbx
mov (%rbp), %ax
nop
nop
nop
add $57171, %rbx
lea addresses_UC_ht+0x1482b, %rsi
lea addresses_A_ht+0xb9ab, %rdi
nop
nop
nop
nop
nop
dec %rbx
mov $50, %rcx
rep movsw
add %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rax
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x667b, %r8
clflush (%r8)
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%r8)
nop
nop
nop
nop
nop
and %r8, %r8

// Store
lea addresses_PSE+0x702b, %rdi
nop
nop
nop
nop
add $11606, %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
nop
cmp %rsi, %rsi

// Store
mov $0xd3d, %rdi
nop
sub %rax, %rax
movb $0x51, (%rdi)
nop
sub %rdi, %rdi

// Store
lea addresses_A+0xf82b, %r13
nop
nop
add $46861, %r8
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r13)
nop
nop
nop
nop
xor $34813, %rdx

// Store
lea addresses_WT+0x3f45, %rdi
sub $40381, %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
nop
nop
xor $39367, %rax

// Load
lea addresses_normal+0x12397, %rdi
nop
nop
nop
and $9476, %rax
vmovaps (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdx
nop
nop
xor $47125, %r15

// Store
lea addresses_WT+0x802b, %r13
nop
nop
nop
add %rdx, %rdx
movb $0x51, (%r13)
nop
sub $7296, %r15

// Faulty Load
lea addresses_PSE+0x702b, %r13
nop
nop
nop
nop
nop
dec %rdx
mov (%r13), %r8w
lea oracles, %r15
and $0xff, %r8
shlq $12, %r8
mov (%r15,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 5, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 6, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'58': 159}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
