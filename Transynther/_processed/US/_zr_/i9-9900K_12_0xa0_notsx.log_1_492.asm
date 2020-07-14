.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x16210, %rsi
lea addresses_normal_ht+0x1236e, %rdi
clflush (%rdi)
nop
dec %r8
mov $79, %rcx
rep movsq
sub $48744, %r9
lea addresses_WT_ht+0x7390, %r11
nop
nop
nop
nop
nop
xor %rdi, %rdi
movl $0x61626364, (%r11)
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0xd110, %rsi
lea addresses_D_ht+0x15b90, %rdi
xor $5721, %r15
mov $61, %rcx
rep movsq
sub $51719, %r8
lea addresses_A_ht+0xb5f0, %rdi
nop
nop
sub %rcx, %rcx
movb $0x61, (%rdi)
nop
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rax
push %rbx

// Faulty Load
lea addresses_US+0x8390, %r13
nop
nop
nop
nop
sub $39008, %r11
mov (%r13), %eax
lea oracles, %r8
and $0xff, %rax
shlq $12, %rax
mov (%r8,%rax,1), %rax
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'00': 1}
00
*/
