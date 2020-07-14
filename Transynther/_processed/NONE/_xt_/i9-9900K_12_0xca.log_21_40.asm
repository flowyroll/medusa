.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %rbp
push %rbx
push %rdx
lea addresses_normal_ht+0x381c, %rdx
nop
nop
nop
nop
and %rbp, %rbp
mov $0x6162636465666768, %r13
movq %r13, (%rdx)
inc %r13
lea addresses_D_ht+0x180c4, %r11
nop
nop
nop
nop
xor $56007, %rdx
movb (%r11), %r15b
nop
nop
and %r11, %r11
lea addresses_WT_ht+0xdc1c, %rbx
nop
nop
nop
nop
sub $43822, %r8
mov (%rbx), %r13w
nop
nop
xor %r8, %r8
lea addresses_WC_ht+0x1db2a, %r15
nop
nop
nop
nop
xor %rbx, %rbx
mov (%r15), %edx
nop
nop
nop
nop
nop
dec %r8
lea addresses_D_ht+0x719c, %r11
nop
and $2973, %r13
movb (%r11), %bl
nop
nop
nop
nop
dec %r15
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_US+0xf01c, %rbp
nop
nop
nop
nop
add $48190, %r12
mov $0x5152535455565758, %rax
movq %rax, (%rbp)
sub %rax, %rax

// Store
mov $0x2c3aa90000000894, %rbp
nop
xor $35837, %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm3
vmovups %ymm3, (%rbp)
inc %rcx

// Store
mov $0xd4, %r9
nop
nop
nop
nop
dec %rbp
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
and %r9, %r9

// Faulty Load
lea addresses_D+0x1f41c, %rbx
nop
nop
and $42632, %rdx
movups (%rbx), %xmm2
vpextrq $1, %xmm2, %rbp
lea oracles, %rax
and $0xff, %rbp
shlq $12, %rbp
mov (%rax,%rbp,1), %rbp
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': True, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'36': 21}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
