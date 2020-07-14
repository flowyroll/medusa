.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x39d1, %rsi
lea addresses_UC_ht+0x16f0b, %rdi
nop
nop
nop
nop
sub $39275, %rbx
mov $59, %rcx
rep movsb
nop
nop
nop
nop
add $35251, %rbp
lea addresses_A_ht+0x1948b, %rsi
lea addresses_A_ht+0xfb8b, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %r8
mov $87, %rcx
rep movsb
nop
nop
nop
nop
xor %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %rax
push %rbp
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x1fcc7, %rbx
cmp $61700, %rdi
movl $0x51525354, (%rbx)
nop
cmp $37964, %rdi

// Store
lea addresses_US+0x1096b, %rbp
nop
nop
nop
dec %rax
mov $0x5152535455565758, %r11
movq %r11, (%rbp)
nop
nop
nop
nop
sub $53741, %rdi

// Store
lea addresses_WC+0x7cf, %rdi
inc %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%rdi)
inc %rdx

// Faulty Load
mov $0x741243000000038b, %rsi
nop
nop
nop
nop
cmp %rdx, %rdx
vmovups (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbp
lea oracles, %r11
and $0xff, %rbp
shlq $12, %rbp
mov (%r11,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'53': 1, '4d': 8, '4e': 30, '0f': 1, '03': 2, '0d': 2, 'a0': 2, '44': 1, '35': 2, '1e': 9, '15': 4, 'fa': 103}
44 4d 4d 4d 4d 0f 4d 15 15 15 15 4d 4d 53 4e 4e 4e a0 4e a0 4e 4e 35 4e 4e 4e 4e 4e 4e 35 4e 4e 4e 03 03 4e 0d 0d 4d 1e 4e 1e 1e 4e 4e 1e 4e 4e 4e 4e 4e 4e 4e 1e 4e 1e 4e 1e 4e 1e 1e fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa 4e fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
*/
