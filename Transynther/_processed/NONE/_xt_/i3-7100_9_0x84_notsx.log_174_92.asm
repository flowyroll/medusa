.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1ccc0, %rsi
nop
lfence
movups (%rsi), %xmm5
vpextrq $0, %xmm5, %rbp
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_UC_ht+0x74c0, %rax
nop
nop
nop
sub $8287, %rdx
movb $0x61, (%rax)
nop
nop
nop
nop
sub $50750, %rax
lea addresses_A_ht+0x19560, %r12
nop
nop
nop
nop
nop
add $16890, %rbx
vmovups (%r12), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
nop
xor %rax, %rax
lea addresses_normal_ht+0x1d0c0, %rsi
lea addresses_WC_ht+0x14590, %rdi
nop
nop
nop
nop
cmp %rdx, %rdx
mov $72, %rcx
rep movsw
nop
nop
nop
nop
cmp $44960, %rdx
lea addresses_UC_ht+0xf4b3, %rbx
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%rbx)
nop
nop
nop
nop
cmp $10000, %rax
lea addresses_WT_ht+0x1d940, %rsi
lea addresses_WC_ht+0x189ac, %rdi
nop
nop
nop
xor $13670, %rbp
mov $47, %rcx
rep movsl
nop
add %rcx, %rcx
lea addresses_A_ht+0x1bcc0, %rcx
nop
nop
nop
nop
nop
sub $17973, %rax
movw $0x6162, (%rcx)
nop
nop
sub $22833, %rdx
lea addresses_UC_ht+0x1d8c0, %rdi
clflush (%rdi)
nop
nop
nop
nop
add %rbp, %rbp
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
inc %rdi
lea addresses_A_ht+0x14b30, %rsi
lea addresses_A_ht+0x161c8, %rdi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $96, %rcx
rep movsq
nop
nop
nop
nop
xor $34397, %rbx
lea addresses_normal_ht+0x1ab00, %rsi
lea addresses_WT_ht+0x41f4, %rdi
nop
nop
nop
nop
nop
and $2439, %rbp
mov $30, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $29054, %rdx
lea addresses_normal_ht+0x1e4c0, %r12
nop
nop
sub %rbp, %rbp
mov (%r12), %dx
nop
nop
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x15aa, %rsi
lea addresses_normal_ht+0x1528c, %rdi
clflush (%rsi)
nop
xor $29317, %rdx
mov $73, %rcx
rep movsw
nop
nop
nop
nop
add $34309, %rcx
lea addresses_D_ht+0x12d3e, %rsi
nop
nop
nop
and %rbx, %rbx
mov (%rsi), %rdx
nop
nop
nop
nop
nop
cmp $5642, %rdx
lea addresses_WC_ht+0xbec0, %rbp
nop
nop
nop
nop
and $22794, %r12
mov $0x6162636465666768, %rcx
movq %rcx, (%rbp)
nop
nop
nop
nop
sub $45287, %r12
lea addresses_WC_ht+0x167b4, %rsi
lea addresses_WC_ht+0x4844, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and $46728, %r12
mov $48, %rcx
rep movsw
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %r8
push %rbp
push %rsi

// Store
lea addresses_PSE+0x148c0, %r8
clflush (%r8)
nop
nop
nop
and $64241, %r13
movb $0x51, (%r8)
nop
nop
cmp %r11, %r11

// Load
lea addresses_RW+0x2ec0, %r8
nop
nop
nop
nop
and %rbp, %rbp
movb (%r8), %r13b
nop
nop
nop
nop
nop
and $6063, %r15

// Load
lea addresses_D+0x100c0, %r13
nop
nop
sub $60797, %r15
movups (%r13), %xmm7
vpextrq $0, %xmm7, %r8
nop
nop
nop
nop
nop
add $55112, %r13

// Load
mov $0x8c0, %r13
nop
nop
nop
nop
xor $6031, %r15
mov (%r13), %r8d
nop
nop
inc %r13

// Store
lea addresses_WC+0x1ab0, %r8
add $33259, %r13
mov $0x5152535455565758, %r10
movq %r10, %xmm6
and $0xffffffffffffffc0, %r8
movaps %xmm6, (%r8)
nop
nop
add $6249, %r8

// Store
lea addresses_UC+0x1ed22, %rbp
cmp %r13, %r13
movw $0x5152, (%rbp)
nop
nop
cmp $48018, %r15

// Store
lea addresses_A+0x177c0, %r8
sub $5677, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
movups %xmm7, (%r8)
nop
xor %rbp, %rbp

// Faulty Load
lea addresses_PSE+0x148c0, %r8
cmp %r15, %r15
vmovups (%r8), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r13
lea oracles, %r11
and $0xff, %r13
shlq $12, %r13
mov (%r11,%r13,1), %r13
pop %rsi
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'33': 174}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
