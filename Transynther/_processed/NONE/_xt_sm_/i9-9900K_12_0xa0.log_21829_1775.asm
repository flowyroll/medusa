.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x3b61, %r11
nop
nop
nop
cmp %rax, %rax
movl $0x61626364, (%r11)
nop
nop
xor $11639, %r14
lea addresses_WT_ht+0x40a1, %r15
nop
nop
nop
xor $22522, %r10
mov (%r15), %dx
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_WC_ht+0xaca1, %r10
nop
nop
nop
inc %r9
mov $0x6162636465666768, %rax
movq %rax, %xmm5
movups %xmm5, (%r10)
nop
nop
xor $43304, %rax
lea addresses_UC_ht+0x9419, %rsi
lea addresses_A_ht+0x49f1, %rdi
nop
nop
nop
nop
cmp %r10, %r10
mov $7, %rcx
rep movsq
nop
nop
inc %r11
lea addresses_normal_ht+0x10a1, %rsi
lea addresses_WT_ht+0x14821, %rdi
nop
cmp %r15, %r15
mov $76, %rcx
rep movsq
dec %r14
lea addresses_normal_ht+0x5aa1, %r14
and $57076, %r11
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
nop
cmp $47012, %r10
lea addresses_A_ht+0x3761, %r15
dec %rdi
mov (%r15), %ax
nop
nop
nop
sub $35781, %r14
lea addresses_WT_ht+0x54a1, %rsi
lea addresses_UC_ht+0x1c4a1, %rdi
nop
nop
sub %rax, %rax
mov $86, %rcx
rep movsb
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_D_ht+0x10921, %rcx
nop
nop
nop
sub %r9, %r9
movups (%rcx), %xmm5
vpextrq $1, %xmm5, %rdx
nop
nop
nop
nop
cmp $16638, %r11
lea addresses_A_ht+0xfc5d, %rsi
lea addresses_A_ht+0x184a9, %rdi
nop
nop
nop
nop
nop
sub %r14, %r14
mov $37, %rcx
rep movsw
nop
nop
nop
and %rax, %rax
lea addresses_D_ht+0x178f1, %r9
cmp %r14, %r14
and $0xffffffffffffffc0, %r9
movaps (%r9), %xmm7
vpextrq $0, %xmm7, %rdx
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WC_ht+0x6751, %r10
nop
nop
nop
nop
cmp $46166, %r14
movb (%r10), %cl
nop
and %rsi, %rsi
lea addresses_UC_ht+0x5c21, %rsi
nop
inc %r14
and $0xffffffffffffffc0, %rsi
movaps (%rsi), %xmm3
vpextrq $0, %xmm3, %r11
and %r9, %r9
lea addresses_D_ht+0x15ca1, %r15
clflush (%r15)
nop
nop
nop
and $38678, %rdx
mov (%r15), %ecx
and $31314, %r10
lea addresses_WT_ht+0x12fa1, %rsi
lea addresses_WT_ht+0xd4a1, %rdi
nop
nop
nop
nop
cmp $32987, %rdx
mov $7, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rbp
push %rcx
push %rsi

// Store
lea addresses_WT+0x1b0a1, %rbp
nop
nop
nop
sub %r14, %r14
movl $0x51525354, (%rbp)
nop
nop
xor $12587, %rsi

// Store
lea addresses_normal+0x5ba9, %rcx
nop
nop
and $39653, %r11
movl $0x51525354, (%rcx)

// Exception!!!
nop
nop
nop
mov (0), %r14
nop
nop
inc %r9

// Store
mov $0x3106910000000fb9, %r11
nop
nop
nop
nop
and %r9, %r9
movl $0x51525354, (%r11)
add %rsi, %rsi

// Store
mov $0x243f600000000871, %rsi
and $54798, %r9
mov $0x5152535455565758, %r14
movq %r14, %xmm6
vmovntdq %ymm6, (%rsi)
nop
nop
nop
nop
and %r14, %r14

// Faulty Load
lea addresses_WT+0x1b0a1, %r14
nop
nop
xor %rsi, %rsi
mov (%r14), %cx
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal', 'AVXalign': True, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 2, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 2, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'54': 21829}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
