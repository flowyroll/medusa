.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x99a7, %rsi
xor %r10, %r10
movb $0x61, (%rsi)
nop
nop
nop
nop
add $60807, %rsi
lea addresses_A_ht+0x166a7, %r10
cmp %r11, %r11
mov (%r10), %esi
sub $23505, %rsi
lea addresses_normal_ht+0x6537, %r11
clflush (%r11)
nop
nop
inc %r8
mov (%r11), %dx
nop
lfence
lea addresses_WC_ht+0x73a7, %rsi
lea addresses_normal_ht+0x21a7, %rdi
nop
nop
lfence
mov $93, %rcx
rep movsq
nop
nop
nop
nop
dec %rcx
lea addresses_D_ht+0x12ba7, %rsi
lea addresses_A_ht+0x1039b, %rdi
clflush (%rsi)
nop
nop
nop
add $17297, %rdx
mov $8, %rcx
rep movsw
nop
nop
nop
nop
nop
lfence
lea addresses_WT_ht+0x1ebe7, %rsi
lea addresses_UC_ht+0x4ba7, %rdi
nop
nop
nop
add $37498, %r13
mov $9, %rcx
rep movsq
nop
sub $26417, %rdx
lea addresses_WT_ht+0x1454b, %rsi
lea addresses_A_ht+0x18d27, %rdi
nop
nop
nop
nop
cmp $32207, %r8
mov $104, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $53445, %rsi
lea addresses_A_ht+0x1eaf0, %rsi
lea addresses_UC_ht+0x1d88f, %rdi
nop
nop
nop
and %r11, %r11
mov $11, %rcx
rep movsl
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0xb7a7, %rsi
lea addresses_WC_ht+0xf90f, %rdi
nop
nop
add %rdx, %rdx
mov $32, %rcx
rep movsw
nop
cmp %r8, %r8
lea addresses_UC_ht+0x187d3, %r13
xor $10577, %rsi
movw $0x6162, (%r13)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x17faf, %rdi
nop
nop
nop
nop
cmp %r11, %r11
movl $0x61626364, (%rdi)
nop
nop
add %rdx, %rdx
lea addresses_D_ht+0xdfa7, %r10
nop
nop
cmp %r8, %r8
mov (%r10), %esi
cmp %rcx, %rcx
lea addresses_D_ht+0x1b5a7, %rsi
nop
nop
nop
nop
xor %r13, %r13
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
xor $61733, %r8
lea addresses_UC_ht+0xdfa7, %rsi
nop
nop
nop
add $31684, %rcx
and $0xffffffffffffffc0, %rsi
movaps (%rsi), %xmm4
vpextrq $0, %xmm4, %r10
nop
nop
nop
nop
sub %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rax
push %rbx
push %rdi

// Store
lea addresses_D+0xc4d4, %r12
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movups %xmm6, (%r12)
nop
xor $37534, %rdi

// Store
lea addresses_RW+0x661f, %r15
clflush (%r15)
nop
inc %r12
movb $0x51, (%r15)
and %rax, %rax

// Load
lea addresses_normal+0x1ab27, %r15
nop
and %rbx, %rbx
mov (%r15), %rax
nop
and $9517, %r8

// Store
mov $0x3a7, %r15
nop
nop
nop
nop
sub %rbx, %rbx
movw $0x5152, (%r15)
nop
nop
nop
nop
nop
xor $11092, %r15

// Store
lea addresses_RW+0x77a7, %r8
clflush (%r8)
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %r10
movq %r10, (%r8)
nop
and $32219, %r12

// Store
mov $0x3a7, %r8
nop
nop
nop
xor $12525, %rdi
movw $0x5152, (%r8)
nop
nop
nop
nop
nop
cmp $48309, %rbx

// Store
mov $0x1d3abf00000003b3, %r10
nop
nop
nop
nop
and $20279, %rbx
mov $0x5152535455565758, %rax
movq %rax, (%r10)
nop
nop
dec %rax

// Faulty Load
mov $0x3a7, %rbx
nop
nop
nop
dec %rdi
vmovaps (%rbx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r8
lea oracles, %rbx
and $0xff, %r8
shlq $12, %r8
mov (%rbx,%r8,1), %r8
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_P'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 8, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 2, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': True, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'00': 21823, '48': 6}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
