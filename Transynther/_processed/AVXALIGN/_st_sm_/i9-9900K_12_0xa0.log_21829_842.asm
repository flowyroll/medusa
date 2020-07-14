.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x28dd, %r12
nop
cmp %r9, %r9
mov (%r12), %ecx
xor $19304, %r10
lea addresses_D_ht+0x4ae5, %rsi
nop
nop
nop
nop
add $19101, %rax
movb (%rsi), %bl
nop
and $43197, %rax
lea addresses_D_ht+0x74e5, %rax
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movups (%rax), %xmm0
vpextrq $0, %xmm0, %rbx
nop
nop
dec %rax
lea addresses_D_ht+0x16495, %rsi
lea addresses_WT_ht+0x42e5, %rdi
nop
nop
nop
nop
and %r10, %r10
mov $77, %rcx
rep movsq
nop
nop
nop
nop
add %r9, %r9
lea addresses_WC_ht+0x1d4e5, %rsi
nop
nop
nop
nop
nop
and $5015, %rcx
movb (%rsi), %bl
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x146b3, %rsi
lea addresses_WT_ht+0x1655d, %rdi
clflush (%rdi)
nop
and $51641, %r9
mov $125, %rcx
rep movsb
nop
nop
xor %rbx, %rbx
lea addresses_WC_ht+0x132e5, %r12
clflush (%r12)
nop
nop
nop
nop
nop
dec %rsi
movb (%r12), %r10b
nop
add %rbx, %rbx
lea addresses_A_ht+0x192e5, %rsi
lea addresses_D_ht+0x196e5, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor %r10, %r10
mov $122, %rcx
rep movsq
nop
nop
nop
dec %r12
lea addresses_WC_ht+0x76e5, %rsi
lea addresses_WT_ht+0x89f5, %rdi
nop
nop
nop
nop
add %r9, %r9
mov $57, %rcx
rep movsq
nop
nop
nop
nop
sub %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rax
push %rdi

// Store
lea addresses_WT+0x1e2e5, %r8
nop
nop
nop
nop
nop
sub $23783, %rax
mov $0x5152535455565758, %r9
movq %r9, %xmm1
movups %xmm1, (%r8)
nop
nop
nop
add %r9, %r9

// Store
lea addresses_WT+0x1e2e5, %r11
nop
xor %r10, %r10
mov $0x5152535455565758, %rax
movq %rax, (%r11)
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_US+0x15165, %r11
xor %rax, %rax
movb $0x51, (%r11)
nop
nop
nop
and %r11, %r11

// Load
mov $0x2857e10000000353, %r11
nop
nop
nop
add %rdi, %rdi
vmovups (%r11), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r12
nop
sub %r10, %r10

// Store
lea addresses_normal+0x1e67b, %r9
nop
dec %r11
movb $0x51, (%r9)
nop
inc %r10

// Store
lea addresses_WT+0x1e2e5, %r12
clflush (%r12)
nop
nop
nop
dec %r11
movl $0x51525354, (%r12)
nop
nop
xor $31405, %r12

// Store
lea addresses_A+0x25bd, %rax
nop
nop
nop
nop
cmp $228, %rdi
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
and $37316, %r10

// Faulty Load
lea addresses_WT+0x1e2e5, %r12
nop
nop
and $54294, %r11
movb (%r12), %r9b
lea oracles, %r10
and $0xff, %r9
shlq $12, %r9
mov (%r10,%r9,1), %r9
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'54': 21829}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
