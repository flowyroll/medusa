.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1189f, %rsi
lea addresses_UC_ht+0x1c69f, %rdi
nop
nop
cmp %r15, %r15
mov $57, %rcx
rep movsq
nop
nop
nop
nop
and $13967, %r13
lea addresses_D_ht+0xdfe7, %rsi
lea addresses_normal_ht+0x55ef, %rdi
nop
cmp $17405, %r15
mov $107, %rcx
rep movsq
nop
sub %rsi, %rsi
lea addresses_A_ht+0x10b76, %rsi
lea addresses_A_ht+0x1219f, %rdi
nop
nop
nop
nop
nop
sub %r8, %r8
mov $13, %rcx
rep movsw
nop
nop
nop
xor %r13, %r13
lea addresses_D_ht+0xfa9b, %rsi
lea addresses_normal_ht+0x8f67, %rdi
add %rbp, %rbp
mov $42, %rcx
rep movsw
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x9c3b, %r8
nop
nop
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%r8)
nop
nop
add %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x689f, %rsi
nop
dec %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovaps %ymm5, (%rsi)
nop
nop
nop
nop
dec %rdi

// Load
lea addresses_WT+0x689f, %rsi
nop
nop
nop
nop
nop
inc %r12
movb (%rsi), %r11b
nop
nop
nop
nop
inc %r13

// Faulty Load
lea addresses_WT+0x689f, %r14
nop
nop
add %rdi, %rdi
movb (%r14), %r11b
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'58': 94}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
