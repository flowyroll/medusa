.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1454b, %r9
nop
nop
nop
xor $21402, %r10
mov $0x6162636465666768, %rdx
movq %rdx, (%r9)
nop
nop
inc %rax
lea addresses_WC_ht+0x1694b, %r15
nop
nop
nop
nop
xor $28596, %r8
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
and $0xffffffffffffffc0, %r15
movaps %xmm1, (%r15)
nop
nop
nop
and $7194, %r10
lea addresses_normal_ht+0x1322f, %rbx
nop
nop
nop
nop
nop
cmp $58185, %rax
mov $0x6162636465666768, %r10
movq %r10, (%rbx)
nop
nop
nop
nop
inc %r8
lea addresses_normal_ht+0x1674b, %rsi
lea addresses_D_ht+0x464b, %rdi
nop
nop
nop
nop
nop
xor $1854, %r9
mov $18, %rcx
rep movsw
xor $53860, %r10
lea addresses_WC_ht+0x1b14b, %rdx
and %rbx, %rbx
mov (%rdx), %rcx
nop
nop
add %r15, %r15
lea addresses_D_ht+0x1288b, %r9
nop
nop
nop
nop
xor $33831, %rcx
movb $0x61, (%r9)
nop
nop
inc %r9
lea addresses_WT_ht+0x364b, %rdi
inc %rax
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
add $31360, %rsi
lea addresses_WC_ht+0x18e4b, %r9
inc %r10
mov $0x6162636465666768, %rdx
movq %rdx, (%r9)
nop
nop
nop
nop
nop
sub $51504, %rsi
lea addresses_A_ht+0x114b, %rsi
lea addresses_A_ht+0x1174b, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and $5822, %rax
mov $46, %rcx
rep movsl
and $32567, %rdi
lea addresses_normal_ht+0x79ad, %r8
dec %rdi
mov $0x6162636465666768, %rbx
movq %rbx, (%r8)
nop
nop
nop
cmp $51118, %r15
lea addresses_D_ht+0x1114b, %rsi
lea addresses_D_ht+0x6c4b, %rdi
nop
nop
nop
cmp %r9, %r9
mov $117, %rcx
rep movsq
nop
nop
nop
add %rax, %rax
lea addresses_WC_ht+0x4337, %rdx
nop
nop
nop
nop
add $53544, %rcx
movb (%rdx), %r10b
nop
nop
nop
xor $14450, %r10
lea addresses_UC_ht+0xcd4b, %rbx
nop
nop
nop
xor $894, %r9
movb $0x61, (%rbx)
nop
nop
nop
nop
sub $41585, %rcx
lea addresses_WT_ht+0xafeb, %r8
nop
nop
xor %rdx, %rdx
mov (%r8), %di
nop
nop
and %r10, %r10
lea addresses_A_ht+0x4d4b, %rdi
nop
nop
nop
nop
dec %r9
movb (%rdi), %al
nop
nop
nop
nop
cmp %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdx

// Store
lea addresses_PSE+0x10e4b, %r11
nop
nop
nop
nop
xor $15094, %rax
mov $0x5152535455565758, %r14
movq %r14, (%r11)
nop
nop
nop
nop
and $3569, %r13

// Store
lea addresses_WT+0xc4b, %r11
nop
nop
nop
nop
sub %rbp, %rbp
movb $0x51, (%r11)
nop
nop
nop
nop
sub $21531, %r13

// Faulty Load
lea addresses_A+0x1554b, %r11
and $1065, %r13
movb (%r11), %r14b
lea oracles, %rdx
and $0xff, %r14
shlq $12, %r14
mov (%rdx,%r14,1), %r14
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': True}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'35': 21829}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
