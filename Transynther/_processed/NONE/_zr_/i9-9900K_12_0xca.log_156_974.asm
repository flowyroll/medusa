.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rbx
push %rsi
lea addresses_UC_ht+0xf82f, %r11
nop
cmp %rsi, %rsi
mov (%r11), %ebx
xor %r12, %r12
pop %rsi
pop %rbx
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rax
push %rdi
push %rdx

// Store
lea addresses_A+0x1389f, %r15
nop
nop
nop
nop
and $53317, %r10
movw $0x5152, (%r15)
nop
nop
inc %r8

// Store
lea addresses_WC+0xc31f, %rdi
nop
nop
add $49994, %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm0
vmovups %ymm0, (%rdi)
nop
nop
xor %rax, %rax

// Faulty Load
lea addresses_WC+0xc31f, %r8
nop
xor %r10, %r10
movups (%r8), %xmm2
vpextrq $1, %xmm2, %r11
lea oracles, %rdx
and $0xff, %r11
shlq $12, %r11
mov (%rdx,%r11,1), %r11
pop %rdx
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'00': 156}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
