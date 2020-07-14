.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1abf, %rsi
lea addresses_D_ht+0x1a16f, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor %r11, %r11
mov $38, %rcx
rep movsq
inc %r10
lea addresses_normal_ht+0x1d489, %rsi
lea addresses_D_ht+0x3eef, %rdi
clflush (%rsi)
nop
sub $49959, %r11
mov $55, %rcx
rep movsl
nop
nop
xor %r11, %r11
lea addresses_A_ht+0x19cef, %rdx
cmp %r9, %r9
movb (%rdx), %r10b
dec %rdi
lea addresses_D_ht+0x5cef, %r9
nop
nop
nop
nop
nop
xor $6729, %rsi
movb $0x61, (%r9)
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_UC_ht+0x135ef, %rdx
nop
nop
sub %r11, %r11
movl $0x61626364, (%rdx)
nop
nop
add $32381, %r9
lea addresses_WC_ht+0x4447, %rcx
nop
nop
nop
xor $54442, %r10
movb (%rcx), %r11b
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0xd0ef, %rsi
lea addresses_A_ht+0x1ecef, %rdi
nop
add $10512, %r15
mov $37, %rcx
rep movsq
nop
nop
nop
nop
xor $34849, %rsi
lea addresses_D_ht+0x18277, %rsi
lea addresses_UC_ht+0x118ef, %rdi
nop
nop
nop
nop
cmp $2311, %rdx
mov $65, %rcx
rep movsw
nop
nop
nop
nop
dec %rdx
lea addresses_WC_ht+0x118ef, %rsi
lea addresses_WC_ht+0xf70f, %rdi
nop
add %r11, %r11
mov $26, %rcx
rep movsb
nop
nop
nop
nop
cmp %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WT+0x14eef, %rdx
clflush (%rdx)
nop
nop
nop
nop
cmp $32039, %rcx
mov $0x5152535455565758, %r12
movq %r12, (%rdx)
nop
nop
nop
and %rbx, %rbx

// Store
mov $0x265fdf00000004aa, %r11
nop
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
movups %xmm1, (%r11)
dec %r11

// Load
lea addresses_UC+0x148ef, %r12
nop
nop
nop
cmp %rdi, %rdi
mov (%r12), %rbx
nop
nop
nop
and %rbx, %rbx

// Faulty Load
lea addresses_WC+0xd4ef, %rdx
nop
nop
nop
and $688, %rdi
movb (%rdx), %bl
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 9, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': True, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
