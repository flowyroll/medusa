.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x76fc, %rsi
lea addresses_normal_ht+0x1cffc, %rdi
clflush (%rdi)
nop
nop
nop
dec %r15
mov $65, %rcx
rep movsl
and $22772, %r9
lea addresses_UC_ht+0x89c2, %rdx
nop
nop
nop
nop
add %r9, %r9
movw $0x6162, (%rdx)
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_D_ht+0x1201c, %rsi
lea addresses_WT_ht+0x1d33c, %rdi
nop
nop
nop
add %r13, %r13
mov $24, %rcx
rep movsl
nop
xor $37510, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %r9
push %rbp
push %rbx
push %rdi

// Store
lea addresses_normal+0x1bb1a, %rbx
nop
and $28355, %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm7
vmovups %ymm7, (%rbx)
and $25606, %r11

// Faulty Load
lea addresses_US+0x12dfc, %r9
nop
nop
nop
nop
dec %rdi
mov (%r9), %rbp
lea oracles, %r9
and $0xff, %rbp
shlq $12, %rbp
mov (%r9,%rbp,1), %rbp
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': True}}
{'ff': 1025, '30': 205, '00': 1351, '44': 57, '21': 60, '52': 39, '8f': 16, 'd0': 4, 'da': 1, '46': 11, '80': 12, 'cc': 1, '87': 1, '77': 1}
ff 30 00 30 00 00 00 ff 00 00 ff 00 00 44 ff ff 00 ff 00 ff ff ff ff 21 ff ff 00 30 ff 00 00 ff 00 00 00 00 ff 30 00 44 ff 00 ff ff 44 ff ff 30 ff 00 00 00 00 ff ff ff ff 00 00 30 ff 21 30 ff ff 30 ff 00 30 00 00 00 00 00 ff 21 00 00 00 ff 00 00 00 00 ff 00 00 ff 21 00 00 ff 44 00 30 00 00 ff ff 00 00 52 00 ff 00 ff ff 44 00 8f 00 00 00 30 00 00 30 ff ff 00 00 00 ff ff 00 30 00 00 00 00 ff 00 00 00 ff 00 00 ff 00 00 30 00 00 30 ff 00 30 ff ff 00 ff ff 00 ff 00 30 00 30 00 30 00 ff 30 ff 00 00 00 00 ff 00 30 ff 00 ff 00 30 00 00 00 ff ff 00 00 00 00 ff ff ff 00 30 00 00 00 00 8f 00 00 00 00 00 44 ff 00 ff 00 ff 00 00 ff ff ff 00 ff 30 ff ff ff ff 00 ff ff 44 00 ff 52 00 ff 00 ff ff 30 ff 00 ff 00 8f 00 00 ff 00 00 ff 00 00 30 ff 00 ff 00 ff 00 00 00 00 ff ff ff ff 00 ff 00 00 00 00 00 ff 00 00 00 30 ff 00 30 ff ff 52 ff 00 00 ff 21 00 00 00 00 ff ff ff 00 ff 00 ff 21 00 ff ff ff ff ff 00 00 44 00 ff ff ff 21 00 52 ff ff 00 00 00 00 ff 00 ff 00 00 ff 00 00 ff ff 30 ff 00 ff 00 00 30 00 00 30 00 ff ff ff ff 00 00 ff 00 00 ff ff ff 52 ff ff ff d0 00 ff 00 00 d0 00 ff ff ff 00 ff ff 00 00 ff ff 00 ff ff 30 ff ff 00 00 00 00 ff 00 ff ff ff 00 00 00 00 ff 00 ff 44 ff 00 ff 00 ff 00 00 ff 00 ff 00 00 ff ff 00 ff 30 ff 00 30 00 00 ff 00 ff 00 ff ff da ff 00 00 00 00 ff 00 00 ff ff ff ff 00 ff 00 30 00 00 00 ff ff 21 ff 00 ff ff 00 30 00 00 00 00 8f 00 30 d0 ff ff ff ff ff 00 00 30 00 ff 00 ff ff ff 46 ff 00 ff ff 00 44 00 00 00 ff 21 00 00 ff ff 00 ff ff ff 00 00 00 ff 21 00 ff 00 00 00 ff 00 00 30 00 ff ff ff ff 00 ff 00 44 00 00 ff 00 ff 00 ff ff 00 00 ff 00 00 00 00 ff 00 00 00 ff 00 ff ff 00 ff 00 00 00 ff ff 00 00 00 00 30 30 ff 52 30 00 00 00 00 00 44 00 00 ff 00 ff 00 ff ff ff ff 21 ff 00 ff ff 00 00 30 ff ff 30 00 00 ff ff 00 ff 00 ff 21 00 ff 00 ff 00 30 00 00 00 ff 00 00 ff 21 30 ff ff 30 00 00 00 30 00 ff 00 00 30 8f ff ff ff ff 21 00 30 30 00 00 30 ff 00 30 30 ff 00 ff 00 ff 30 00 ff ff 30 00 ff ff 8f 30 ff ff ff 00 ff 00 00 ff 80 00 00 00 00 00 00 ff 52 00 00 00 ff 00 ff 00 00 00 00 00 ff 00 00 30 00 ff 21 30 00 00 00 00 00 00 ff 00 00 ff 00 ff 00 30 00 00 ff ff 00 44 00 00 00 8f ff 00 00 00 00 00 00 00 ff ff 21 00 00 00 30 44 00 00 ff 00 44 ff 00 00 00 00 00 00 00 ff ff ff 00 8f 00 00 00 ff 46 00 ff 00 00 00 00 ff ff 00 ff 30 ff ff 30 ff 52 ff 21 00 00 ff 00 00 ff ff ff 21 ff 00 ff 00 cc 00 ff 00 00 ff ff 00 ff 00 00 ff 00 00 ff 21 00 00 00 00 00 00 00 ff 00 00 00 00 00 ff 00 00 00 00 00 ff ff 00 30 44 00 00 00 00 00 ff 21 ff ff 21 ff ff 00 00 00 00 ff 30 00 00 00 00 00 ff ff ff ff ff ff 30 00 ff 00 00 00 00 44 ff ff ff ff ff 00 ff ff ff 00 00 ff 00 00 8f 00 00 ff 00 00 ff ff ff 00 ff 00 00 00 ff ff ff 00 ff ff ff 00 ff ff 00 00 ff ff 00 46 ff ff ff ff ff 46 00 00 00 00 00 00 00 ff 00 ff 00 ff 00 00 00 ff ff 00 ff 30 30 ff 8f ff 00 ff ff 80 ff 30 00 00 00 00 ff 30 ff 21 00 00 00 ff 00 ff 00 ff 00 00 ff 30 ff 00 ff ff 00 ff 00 ff 00 30 00 00 ff 21 ff ff 00 30 00 ff 00 ff 00 ff ff ff 00 30 00 00 00 00 30 00 ff ff ff 30 ff ff 00 ff 21 00 00 ff
*/
