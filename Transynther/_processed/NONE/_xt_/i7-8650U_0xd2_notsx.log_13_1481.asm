.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x9b48, %r9
nop
and $11626, %rdi
movups (%r9), %xmm4
vpextrq $1, %xmm4, %r8
nop
nop
cmp %r11, %r11
lea addresses_A_ht+0x1b1e8, %r15
nop
sub %rax, %rax
mov (%r15), %esi
nop
nop
nop
nop
nop
and $52635, %rdi
lea addresses_WC_ht+0x19f48, %rsi
lea addresses_normal_ht+0x11e30, %rdi
nop
nop
nop
nop
sub $28264, %r9
mov $113, %rcx
rep movsq
add %rsi, %rsi
lea addresses_WC_ht+0x160a8, %r8
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm1
and $0xffffffffffffffc0, %r8
vmovaps %ymm1, (%r8)
nop
nop
add %r15, %r15
lea addresses_WT_ht+0x15f48, %rcx
nop
xor $62650, %rsi
mov (%rcx), %r8
nop
nop
nop
and $3754, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %r9
push %rax
push %rdi
push %rdx
push %rsi

// Store
mov $0xe48, %r9
nop
dec %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r9)
nop
nop
xor $1572, %r8

// Load
lea addresses_A+0xee18, %rax
nop
nop
and $41347, %r9
mov (%rax), %r8d
nop
nop
nop
nop
nop
inc %r8

// Store
lea addresses_PSE+0xcdcc, %r8
nop
nop
nop
sub %r13, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
movups %xmm1, (%r8)
nop
nop
nop
dec %r9

// Faulty Load
lea addresses_normal+0xe748, %rsi
nop
nop
nop
nop
cmp %r9, %r9
movb (%rsi), %al
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'34': 13}
34 34 34 34 34 34 34 34 34 34 34 34 34
*/
