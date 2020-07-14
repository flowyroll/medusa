.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x83a7, %r10
nop
nop
nop
and %r11, %r11
mov (%r10), %r15d
nop
nop
nop
nop
inc %r11
lea addresses_normal_ht+0x154c4, %rdx
nop
inc %r13
movb $0x61, (%rdx)
nop
nop
nop
nop
add %r13, %r13
lea addresses_UC_ht+0x13ee4, %r14
nop
nop
nop
nop
nop
xor %r11, %r11
movups (%r14), %xmm5
vpextrq $1, %xmm5, %r15
nop
nop
nop
nop
and $44096, %rdx
lea addresses_WC_ht+0x19c44, %r14
nop
nop
nop
nop
sub %rbx, %rbx
mov $0x6162636465666768, %r13
movq %r13, (%r14)
nop
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_normal_ht+0x93c4, %r11
nop
add %rdx, %rdx
mov $0x6162636465666768, %r14
movq %r14, %xmm0
and $0xffffffffffffffc0, %r11
movaps %xmm0, (%r11)
sub $16941, %rbx
lea addresses_WT_ht+0x82e4, %rbx
nop
nop
nop
nop
cmp %r10, %r10
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0x11d44, %r15
nop
nop
and %rbx, %rbx
mov $0x6162636465666768, %r14
movq %r14, %xmm1
movups %xmm1, (%r15)
nop
and $10937, %r11
lea addresses_WT_ht+0x1d304, %r10
nop
nop
nop
nop
dec %r11
movb (%r10), %dl
nop
nop
and %r11, %r11
lea addresses_WT_ht+0x122c4, %rsi
lea addresses_D_ht+0x14b44, %rdi
nop
nop
dec %rbx
mov $20, %rcx
rep movsl
nop
and $14519, %rsi
lea addresses_UC_ht+0xcb84, %r15
nop
nop
nop
nop
add %rdx, %rdx
movups (%r15), %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
add $48259, %r10
lea addresses_normal_ht+0x159a8, %rbx
nop
xor %rdi, %rdi
mov (%rbx), %rdx
nop
nop
nop
nop
add $44641, %rcx
lea addresses_A_ht+0x15938, %rsi
lea addresses_UC_ht+0x17ac4, %rdi
nop
cmp $50181, %r10
mov $19, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $13241, %r15
lea addresses_WC_ht+0x1a804, %rdi
nop
nop
nop
and %rdx, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%rdi)
xor $56529, %rcx
lea addresses_normal_ht+0x6ac4, %rdx
clflush (%rdx)
nop
nop
nop
xor %r14, %r14
movb (%rdx), %r11b
nop
nop
nop
inc %r14
lea addresses_A_ht+0x8ac4, %r10
xor $39423, %r14
movw $0x6162, (%r10)
add $55789, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_normal+0x92c4, %rsi
mov $0x518, %rdi
nop
nop
nop
nop
nop
inc %r8
mov $43, %rcx
rep movsw
nop
nop
cmp $63591, %rsi

// Store
lea addresses_normal+0x19444, %rsi
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, (%rsi)
nop
nop
nop
dec %rcx

// Load
lea addresses_PSE+0x844, %rsi
nop
nop
nop
add $9740, %rcx
mov (%rsi), %rax
nop
and %r8, %r8

// Faulty Load
lea addresses_D+0x3ac4, %rdi
nop
nop
xor $63003, %rcx
vmovntdqa (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
lea oracles, %r8
and $0xff, %rsi
shlq $12, %rsi
mov (%r8,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_P'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'34': 19121, '00': 2298, '01': 10, '44': 278, '12': 42, '20': 36, '84': 1, '47': 37, '45': 5, 'a8': 1}
84 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 00 00 00 44 00 34 34 34 00 00 34 34 44 34 34 00 34 34 34 34 34 34 34 34 34 34 34 00 34 00 00 00 34 34 12 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 00 00 44 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 00 34 34 00 34 34 00 00 34 34 34 34 44 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 44 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 00 00 34 34 34 34 00 34 34 34 00 00 34 00 00 34 34 34 00 00 34 00 00 34 34 00 00 34 34 00 00 00 34 34 00 34 00 34 34 34 00 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 00 00 00 34 34 34 00 34 34 34 34 00 34 34 00 00 34 34 34 34 00 34 34 34 00 00 34 00 34 00 44 34 00 34 34 00 34 34 34 34 00 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 00 00 00 00 34 34 00 34 34 00 00 34 34 00 34 00 00 34 34 00 00 34 00 34 00 34 34 12 34 00 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 44 34 34 44 34 34 00 00 00 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 00 34 00 00 00 00 00 00 00 34 34 34 34 00 34 00 00 00 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 44 00 00 34 00 34 00 34 34 00 00 34 34 00 34 34 00 00 00 34 34 34 34 00 00 00 00 00 34 44 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 00 34 00 44 44 34 34 34 44 34 34 00 34 00 34 34 00 00 34 00 00 00 44 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00
*/
