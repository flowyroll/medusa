.global s_prepare_buffers
s_prepare_buffers:
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x8ee5, %rsi
lea addresses_WC_ht+0x3d55, %rdi
nop
nop
sub $10176, %rbx
mov $96, %rcx
rep movsl
nop
and $31419, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r14
push %rax
push %rdi

// Store
mov $0x23660a0000000e85, %r13
nop
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%r13)
inc %r13

// Store
mov $0x2ce2d0000000cb5, %rax
nop
and %r11, %r11
movb $0x51, (%rax)
nop
cmp %r10, %r10

// Store
mov $0xee5, %rax
nop
nop
nop
nop
nop
add %r10, %r10
movl $0x51525354, (%rax)
nop
xor $52785, %r13

// Faulty Load
lea addresses_normal+0x1efe5, %r10
nop
nop
inc %r12
movb (%r10), %r11b
lea oracles, %r13
and $0xff, %r11
shlq $12, %r11
mov (%r13,%r11,1), %r11
pop %rdi
pop %rax
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_P', 'congruent': 7}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'34': 39}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
