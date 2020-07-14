.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %r8
push %rbx
lea addresses_WT_ht+0x17243, %r8
nop
cmp %r15, %r15
mov (%r8), %r13
nop
nop
nop
nop
nop
xor $32116, %r13
lea addresses_normal_ht+0x164ab, %r11
nop
nop
nop
cmp %rbx, %rbx
mov (%r11), %r14w
cmp %r15, %r15
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rax
push %rbx
push %rdi

// Store
lea addresses_D+0x1b83, %rax
nop
nop
nop
nop
nop
sub %r15, %r15
movb $0x51, (%rax)
nop
nop
nop
nop
nop
dec %r8

// Store
mov $0x7c2a360000000f23, %r15
nop
nop
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovups %ymm4, (%r15)
nop
xor %rbx, %rbx

// Faulty Load
lea addresses_D+0x12383, %rbx
nop
nop
nop
nop
xor %r13, %r13
mov (%rbx), %rdi
lea oracles, %rbx
and $0xff, %rdi
shlq $12, %rdi
mov (%rbx,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'36': 5}
36 36 36 36 36
*/
