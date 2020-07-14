.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x6aed, %r14
nop
nop
nop
nop
nop
cmp $5157, %r8
mov (%r14), %rdi
nop
nop
nop
nop
dec %r14
lea addresses_WT_ht+0x192ed, %rsi
lea addresses_normal_ht+0x1c3a3, %rdi
nop
nop
nop
and $55110, %r11
mov $10, %rcx
rep movsw
nop
xor $7721, %rsi
lea addresses_A_ht+0xb01, %r8
clflush (%r8)
sub %rbp, %rbp
mov (%r8), %esi
xor %r11, %r11
lea addresses_WT_ht+0x7f2d, %r8
nop
nop
nop
and %rdi, %rdi
movb (%r8), %cl
nop
nop
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0x876d, %r11
inc %rcx
mov (%r11), %rbp
nop
nop
nop
sub $39177, %r11
lea addresses_UC_ht+0x1859f, %rsi
clflush (%rsi)
nop
nop
nop
and $43572, %rbp
movl $0x61626364, (%rsi)
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x11ded, %rsi
lea addresses_normal_ht+0x1c2fd, %rdi
nop
nop
cmp %r13, %r13
mov $12, %rcx
rep movsq
nop
nop
nop
nop
xor $49684, %rcx
lea addresses_normal_ht+0x2aed, %r11
nop
cmp $8485, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%r11)
nop
nop
nop
nop
nop
xor $3763, %r14
lea addresses_A_ht+0x32ed, %rsi
lea addresses_UC_ht+0x73ed, %rdi
clflush (%rdi)
nop
nop
nop
xor $10275, %r13
mov $100, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $29151, %rsi
lea addresses_WC_ht+0x10ff1, %r13
nop
cmp $54296, %r8
mov (%r13), %ebp
nop
sub %r8, %r8
lea addresses_normal_ht+0x112ed, %r11
nop
nop
nop
inc %r8
vmovups (%r11), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbp
nop
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x66ed, %r13
nop
nop
sub $45428, %rbp
movb (%r13), %r11b
nop
nop
nop
xor %r14, %r14
lea addresses_WC_ht+0x1bddd, %rsi
lea addresses_UC_ht+0x192a2, %rdi
nop
nop
nop
nop
nop
dec %r13
mov $56, %rcx
rep movsb
nop
nop
nop
nop
add $56104, %r11
lea addresses_WT_ht+0x19ed, %r13
nop
nop
nop
sub %r11, %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r13)
nop
nop
nop
nop
add %r11, %r11
lea addresses_A_ht+0x182ed, %r13
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
movups %xmm6, (%r13)
nop
dec %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0xfbed, %rcx
nop
nop
nop
nop
dec %rdi
movl $0x51525354, (%rcx)
nop
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_A+0x8eed, %r10
nop
nop
and %r9, %r9
movw $0x5152, (%r10)
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_normal+0x2aed, %r13
nop
add $38248, %rcx
movw $0x5152, (%r13)
nop
nop
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_normal+0x167d7, %rax
nop
nop
sub $5666, %rcx
movw $0x5152, (%rax)
add %rcx, %rcx

// Store
lea addresses_UC+0x9ced, %rcx
nop
nop
cmp %r9, %r9
movb $0x51, (%rcx)
nop
xor $38917, %rcx

// Load
lea addresses_normal+0x17efd, %rdi
nop
nop
nop
nop
nop
sub %rsi, %rsi
vmovaps (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
nop
nop
nop
add $48085, %rcx

// Store
lea addresses_US+0x1ceed, %rsi
nop
cmp $37185, %r9
mov $0x5152535455565758, %rax
movq %rax, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_UC+0x10db3, %rcx
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
movups %xmm2, (%rcx)
nop
nop
nop
nop
nop
and $60847, %r13

// Store
lea addresses_WT+0x160ed, %r13
nop
nop
nop
and $50108, %rdi
movb $0x51, (%r13)
nop
nop
nop
nop
nop
dec %rsi

// Faulty Load
lea addresses_normal+0x2aed, %r13
nop
inc %rcx
mov (%r13), %r10w
lea oracles, %r9
and $0xff, %r10
shlq $12, %r10
mov (%r9,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 8, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'52': 1}
52
*/
