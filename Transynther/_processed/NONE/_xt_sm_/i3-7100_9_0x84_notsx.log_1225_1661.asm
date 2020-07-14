.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x18034, %rsi
nop
nop
and %r13, %r13
mov (%rsi), %r8w
nop
nop
nop
nop
nop
cmp $1765, %rax
lea addresses_WC_ht+0x14b34, %rax
nop
nop
nop
nop
nop
xor %r11, %r11
mov (%rax), %r15w
nop
nop
nop
nop
cmp $44522, %rax
lea addresses_A_ht+0x16a20, %r15
nop
nop
inc %r12
movb $0x61, (%r15)
nop
and $33018, %r12
lea addresses_WC_ht+0x163f4, %r13
nop
nop
nop
nop
nop
sub $47915, %rsi
movups (%r13), %xmm0
vpextrq $1, %xmm0, %rax
nop
nop
nop
dec %rax
lea addresses_UC_ht+0x13434, %rsi
nop
sub $41497, %r15
mov $0x6162636465666768, %r12
movq %r12, %xmm1
movups %xmm1, (%rsi)
dec %rsi
lea addresses_WT_ht+0x7ed4, %r15
nop
nop
nop
add $37196, %r13
vmovups (%r15), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r8
nop
add $50839, %r8
lea addresses_WC_ht+0xcf34, %r12
nop
and %r8, %r8
movl $0x61626364, (%r12)
add $57883, %r13
lea addresses_WC_ht+0xd133, %rax
nop
add $60921, %r15
vmovups (%rax), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r12
nop
inc %r11
lea addresses_D_ht+0x7124, %r11
nop
nop
nop
nop
nop
sub %rax, %rax
mov (%r11), %rsi
nop
nop
nop
and %r11, %r11
lea addresses_WC_ht+0x13134, %rsi
lea addresses_WC_ht+0xc634, %rdi
clflush (%rsi)
xor %r11, %r11
mov $93, %rcx
rep movsl
nop
nop
nop
nop
add %r13, %r13
lea addresses_WC_ht+0xc334, %rcx
clflush (%rcx)
nop
nop
nop
nop
add %r8, %r8
vmovups (%rcx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r13
nop
nop
nop
nop
inc %rdi
lea addresses_A_ht+0x103ec, %rsi
lea addresses_WC_ht+0x7f34, %rdi
nop
inc %r13
mov $30, %rcx
rep movsq
cmp %r13, %r13
lea addresses_WC_ht+0x1eaf4, %rax
nop
nop
nop
nop
nop
inc %rsi
movw $0x6162, (%rax)
nop
nop
dec %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %rax
push %rbp
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_normal+0x8d64, %rcx
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
nop
nop
add $45605, %rbp

// Store
lea addresses_D+0x38a8, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
add %rbx, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
movups %xmm6, (%rbp)
nop
dec %rdx

// Store
lea addresses_WC+0x110c4, %rbp
clflush (%rbp)
nop
nop
xor $21516, %rax
movl $0x51525354, (%rbp)
add $14840, %rsi

// Store
lea addresses_D+0xaf34, %rbp
nop
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm7
movups %xmm7, (%rbp)
nop
nop
dec %r11

// Store
lea addresses_D+0xaf34, %rax
xor $21566, %rdx
movw $0x5152, (%rax)
nop
nop
xor %rbp, %rbp

// Store
lea addresses_normal+0x8f34, %rbx
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm7
vmovups %ymm7, (%rbx)
nop
nop
xor %rbp, %rbp

// Store
lea addresses_A+0x3a24, %rbx
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, (%rbx)
nop
and $35132, %rdx

// Store
lea addresses_D+0x14e7c, %rax
clflush (%rax)
add $36277, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovaps %ymm1, (%rax)
nop
nop
nop
add $7813, %r11

// Store
lea addresses_A+0x9b34, %rbx
nop
nop
nop
nop
xor $55136, %rax
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
movups %xmm0, (%rbx)
nop
nop
nop
nop
nop
and %r11, %r11

// Store
lea addresses_normal+0x14b7c, %rsi
cmp %r11, %r11
mov $0x5152535455565758, %rbx
movq %rbx, (%rsi)
nop
nop
nop
nop
nop
sub $49913, %rsi

// Faulty Load
lea addresses_D+0xaf34, %rsi
inc %rdx
mov (%rsi), %bp
lea oracles, %r11
and $0xff, %rbp
shlq $12, %rbp
mov (%r11,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'52': 1225}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
