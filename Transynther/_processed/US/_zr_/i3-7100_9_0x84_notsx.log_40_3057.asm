.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x102bf, %rax
nop
nop
nop
nop
nop
add %r11, %r11
mov $0x6162636465666768, %r9
movq %r9, %xmm6
movups %xmm6, (%rax)
nop
nop
nop
nop
add %r14, %r14
lea addresses_UC_ht+0x10ae5, %rbx
nop
nop
dec %r13
mov (%rbx), %r14
nop
nop
sub $35181, %r11
lea addresses_D_ht+0x15e65, %r9
nop
nop
nop
and %r8, %r8
mov (%r9), %r14w
nop
add $60614, %r11
lea addresses_A_ht+0xc7fd, %r8
nop
nop
nop
nop
cmp %r11, %r11
mov (%r8), %eax
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_normal_ht+0x188a5, %rsi
lea addresses_UC_ht+0x98e5, %rdi
nop
nop
nop
nop
inc %r14
mov $89, %rcx
rep movsl
add $12561, %r13
lea addresses_WT_ht+0x1ae5, %rcx
nop
nop
nop
nop
inc %r11
mov (%rcx), %r9d
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x5cff, %r8
clflush (%r8)
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%r8), %rcx
nop
nop
add $51071, %r9
lea addresses_WC_ht+0x1006d, %r9
nop
nop
sub %r14, %r14
mov $0x6162636465666768, %rax
movq %rax, (%r9)
nop
nop
and $48472, %rsi
lea addresses_normal_ht+0x1c531, %rsi
lea addresses_WT_ht+0x27e5, %rdi
nop
nop
nop
nop
nop
inc %rbx
mov $99, %rcx
rep movsb
nop
nop
nop
sub %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rbx
push %rsi

// Faulty Load
lea addresses_US+0x132e5, %rsi
nop
nop
cmp %r11, %r11
movups (%rsi), %xmm3
vpextrq $1, %xmm3, %r8
lea oracles, %rbx
and $0xff, %r8
shlq $12, %r8
mov (%rbx,%r8,1), %r8
pop %rsi
pop %rbx
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'00': 40}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
