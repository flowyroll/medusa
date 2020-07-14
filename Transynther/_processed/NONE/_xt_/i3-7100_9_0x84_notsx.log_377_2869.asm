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
lea addresses_A_ht+0x112bd, %r12
nop
nop
cmp $58861, %rbx
mov (%r12), %di
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x1356f, %rsi
lea addresses_WT_ht+0x1a9bd, %rdi
clflush (%rdi)
nop
nop
mfence
mov $66, %rcx
rep movsq
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x197bd, %rdi
nop
nop
inc %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
nop
nop
add $31855, %r12
lea addresses_normal_ht+0x188e1, %r12
add %rdx, %rdx
vmovups (%r12), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbx
nop
nop
cmp $55235, %rdi
lea addresses_WC_ht+0x1bffd, %rdx
sub %r15, %r15
and $0xffffffffffffffc0, %rdx
movntdqa (%rdx), %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
nop
nop
xor $41381, %rdx
lea addresses_D_ht+0x1631d, %rsi
lea addresses_WT_ht+0x189bd, %rdi
nop
nop
nop
nop
xor %r11, %r11
mov $106, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x9cbd, %r11
nop
nop
nop
nop
xor $54830, %rcx
mov (%r11), %si
nop
nop
nop
nop
cmp $38, %rdx
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
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rdi
push %rsi

// Load
lea addresses_normal+0x139a5, %rbp
nop
nop
nop
nop
nop
and %rdi, %rdi
mov (%rbp), %si
nop
cmp $34657, %rdi

// Store
lea addresses_A+0x7bd, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
cmp %r8, %r8
movw $0x5152, (%rbx)
nop
nop
nop
nop
sub $63345, %r8

// Store
lea addresses_A+0x57bd, %r8
nop
nop
cmp %rax, %rax
movb $0x51, (%r8)
nop
dec %rax

// Store
mov $0x6f69ed00000001e5, %rbx
nop
and %r8, %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm4
movups %xmm4, (%rbx)
nop
nop
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_D+0x1abbd, %rsi
nop
nop
nop
sub $11406, %rbp
movb (%rsi), %bl
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'36': 377}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
