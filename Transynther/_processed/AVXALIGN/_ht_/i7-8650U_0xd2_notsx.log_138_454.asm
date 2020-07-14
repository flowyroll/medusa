.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x8b09, %rsi
lea addresses_WC_ht+0x1789, %rdi
nop
nop
nop
and $1471, %rax
mov $1, %rcx
rep movsw
nop
nop
nop
xor $12343, %r14
lea addresses_WT_ht+0x1c281, %r11
nop
nop
nop
nop
add %rdi, %rdi
mov (%r11), %si
nop
nop
nop
and $29508, %rax
lea addresses_normal_ht+0xf204, %rsi
lea addresses_D_ht+0xfd1d, %rdi
nop
nop
nop
nop
nop
cmp $25361, %rdx
mov $18, %rcx
rep movsl
and %rax, %rax
lea addresses_A_ht+0x11919, %rax
nop
nop
lfence
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rax)
inc %rdx
lea addresses_normal_ht+0x16149, %rdi
add %rsi, %rsi
mov (%rdi), %rax
nop
nop
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rax
push %rbp
push %rdx
push %rsi

// Store
lea addresses_D+0x1eb41, %rsi
nop
xor $41008, %rax
movw $0x5152, (%rsi)
nop
nop
cmp $45034, %rsi

// Store
lea addresses_D+0x4809, %r13
nop
nop
inc %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
movups %xmm5, (%r13)
nop
nop
nop
nop
and $47275, %r13

// Faulty Load
lea addresses_normal+0x16189, %rax
nop
nop
xor $1446, %r9
movaps (%rax), %xmm3
vpextrq $1, %xmm3, %r11
lea oracles, %r9
and $0xff, %r11
shlq $12, %r11
mov (%r9,%r11,1), %r11
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'44': 138}
44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44
*/
