.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1372e, %rsi
lea addresses_A_ht+0x13cae, %rdi
clflush (%rdi)
nop
xor %rbx, %rbx
mov $115, %rcx
rep movsq
nop
nop
nop
and $6414, %r14
lea addresses_WT_ht+0x12aee, %rsi
lea addresses_WT_ht+0x17e3e, %rdi
nop
nop
nop
nop
cmp $29888, %r9
mov $12, %rcx
rep movsl
nop
nop
nop
nop
nop
add %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r9
push %rbx
push %rdi
push %rsi

// Store
lea addresses_UC+0x138ae, %r12
add $53952, %rdi
movb $0x51, (%r12)
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_normal+0xb4ae, %rsi
nop
nop
and $40389, %rbx
mov $0x5152535455565758, %r9
movq %r9, %xmm6
vmovntdq %ymm6, (%rsi)
and $46178, %r11

// Store
lea addresses_normal+0x14eae, %rdi
nop
nop
sub $39927, %r15
movl $0x51525354, (%rdi)

// Exception!!!
mov (0), %rbx
nop
add %r11, %r11

// Faulty Load
lea addresses_US+0x17cae, %r12
nop
inc %r15
movups (%r12), %xmm7
vpextrq $1, %xmm7, %r11
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rsi
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': True, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': True, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 4}}
{'00': 4893, '48': 16936}
48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 00 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 00 48 48 00 00 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 00 48 48 48 48 48 00 00 00 48 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 00 48 00 48 00 48 48 00 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 48 00 48 00 48 00 00 00 00 00 48 48 00 48 48 00 48 00 00 00 00 00 48 00 48 00 00 00 00 00 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 00 48 00 48 00 00 00 00 00 48 00 00 00 00 00 48 48 48 48 48 48 00 48 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 00 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 00 00 00 00 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 00 00 00 00 00 48 00 00 00 00 00 48 00 48 00 48 48 48 48 00 48 00 48 48 00 00 00 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 00 00 00 00 48 48 00 00 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 00 00 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 00 00 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 00 00 48 48 48 48 48 48 00 00 48 48 00 48 00 48 48 48 48 48 48 48 00 00 48 48 00 48 48 00 00 48 48 48 48 48 00 00 48 48 48 00 48 48 00 48 00 00 48 48 00 48 48 48 00 48 48 48 00 00 48 48 48 48 48 48 00 00 00 48 48 00 00 48 48 48 48 48 48 00 00 48 00 48 00 48 48 48 48 48 48 48 00 00 48 00 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 00 00 48 48 00 48 48 00 00 48 48 48 00 48 48 00 00 48 48 48 48 48 48 00 00 48 48 48 00 00 48 48 48 48 48 48 00 48 00 00 48 48 48 00 48 48 48 00 00 48 48 48 48 48 48 00 48 48 48 48 00 00 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 00 00 48 48 48 00 00 48 48 00 48 00 48 48 48 00 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 00 00 48 48 48 00 00 48 48 48 00 00 48 48 48 00 00 48 48 48 48 48 48 00 48 48 48 48 48 00 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 00 00 48 00 00 48 48 48 00 00 48 48 48 00 00 48 48 48 00 48 48 00 48 48 00 48 48 00 00 48 48 48 48 48 48 00 00 48 48 48 48 00 00 48 48 48 48 48 48 00 48 48 48 00 00 48 48 48 00 00 48 48 00 48 00 48 48 00 48 48 00 00 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 00 48 00 48 00 48 48 48 00 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 48 48 48 00 48 48 48 48 48 48 00 48 00 48 48 00 48 48 48 48 48 48 48 00 00 48 48 48 48 48 00 48 48 48 48 00 48 00 48 48 00 00 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48
*/
